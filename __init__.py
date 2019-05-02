from mycroft import MycroftSkill, intent_file_handler
import requests

from mycroft.skills.core import resting_screen_handler


class CatSkill(MycroftSkill):
    def update_cat(self):
        r = requests.get('https://api.thecatapi.com/v1/images/search')
        if r:
            self.gui['imgLink'] = r.json()[0]['url']

    @resting_screen_handler("Cat Image")
    def idle(self, message):
        self.update_cat()
        self.gui.show_page('idle.qml')

    @intent_file_handler('ShowCat.intent')
    def cat_handler(self, message):
        self.log.info('SHOWING CAT')
        self.update_cat()
        self.gui.show_page('cat.qml')
        self.speak_dialog('mjau')


def create_skill():
    return CatSkill()

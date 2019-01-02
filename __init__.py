from mycroft import MycroftSkill, intent_file_handler
import requests


class CatSkill(MycroftSkill):
    @intent_file_handler('ShowCat.intent')
    def cat_handler(self, message):
        self.log.info('SHOWING CAT')
        self.speak_dialog('mjau')
        r = requests.get('https://api.thecatapi.com/v1/images/search')
        if r:
            print(r.json())
            self.gui['imgLink'] = r.json()[0]['url']
            self.gui.show_page('cat.qml')


def create_skill():
    return CatSkill()

#include "texttospeech.h"
#include <QtTextToSpeech/QTextToSpeech>

TextToSpeech::TextToSpeech()
{
    speech = new QTextToSpeech();
    connect(speech, &QTextToSpeech::voiceChanged, this, &TextToSpeech::onSpeechVoiceChanged);
}

TextToSpeech::~TextToSpeech()
{
//    deleteLater(speech);
}

QTextToSpeech* TextToSpeech::getSpeech() const
{
    return speech;
}

void TextToSpeech::onSpeechVoiceChanged()
{

}

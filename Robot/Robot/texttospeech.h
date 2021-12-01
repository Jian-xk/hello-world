#ifndef TEXTTOSPEECH_H
#define TEXTTOSPEECH_H
#include <QObject>
#include <QVoice>

class QTextToSpeech;
class TextToSpeech : public QObject
{
    Q_OBJECT
public:
    TextToSpeech();
    ~TextToSpeech();
    QTextToSpeech* getSpeech() const;

private slots:
    void onSpeechVoiceChanged();
private:
    QTextToSpeech* speech = nullptr;
};

#endif // TEXTTOSPEECH_H

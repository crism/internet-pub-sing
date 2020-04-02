\version "2.18.2"

\language english

#(set-default-paper-size "letter")

\paper {
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.75\in
  line-width = 7.25\in
  right-margin = 0.5\in
}

\header {
  composer = "“Drive Sorrows Away,” trad."
  copyright =
  "Lyrics copyright © 2020 Chris Maden, licensed CC-BY"
  poet = "Chris Maden"
  title = "Keep COVID at Bay"
}

melodyVerseOne = \relative c {
  c8\( c\) | f4 a f | g8[ a] bf4 a8\( a\) | a[ g] f4 a | g2
}

melodyVerseTwo = \relative c { a'8 bf | c4 a c | bf a g | f8[ g] a4 g | f2. | }

melodyChorus = \relative c {
  c'4 c8[ bf] a[ bf] | c2 r4 | f,4 f8[ e] d4 | c( d e~ | e2) r4 |
  c' d8[ c] a4 | a( c g~ | g2)
}

lyricsOneOne = \lyricmode {
  \set stanza = "1."
  The __ _ time pass -- es slow -- ly, it’s drear -- _ y and gray,
}
lyricsOneTwo = \lyricmode {
  Since we’ve learned so -- cial dis -- tance keeps CO -- VID at bay.
}
lyricsOneChor = \lyricmode {
  CO -- VID at bay,
  CO -- VID at bay,
  CO -- VID at bay,
}

lyricsTwoOne = \lyricmode {
  \set stanza = "2."
  If you ask me for masks, well, you’ll __ _ find I have none;
}
lyricsTwoTwo = \lyricmode {
  But with my lit -- tle lap -- top, I’m Fol -- ding at Home.
}
lyricsTwoChor = \lyricmode {
  Fol -- ding at Home,
  Fol -- ding at Home,
  Fol -- ding at Home,
}

lyricsTreOne = \lyricmode {
  \set stanza = "3."
  Once we gath -- ered with friends and we’d __ _ sing un -- til dawn,
}
lyricsTreTwo = \lyricmode {
  Now the pubs are all closed and the pub sings are gone.
}
lyricsTreChor = \lyricmode {
  Pub sings are gone,
  pub sings are gone,
  pub sings are gone,
}

lyricsForOne = \lyricmode {
  \set stanza = "4."
  Though our cal -- en -- dar’s emp -- ty and our so -- cial life’s poor,
}
lyricsForTwo = \lyricmode {
  We will sing like we’re sing -- ing with thou -- sands or more!
}
lyricsForChor = \lyricmode {
  Thou -- sands or more,
  thou -- sands or more,
  thou -- sands or more,
}

\score {
  <<
    \new Staff = "tenor" {
      \set Staff.instrumentName = #"Tenor"
      \set Staff.shortInstrumentName = #"T."
      \set Staff.midiInstrument = "violin"
      \clef "treble_8"
      \key f \major
      \time 3/4
      \partial 4
      \new Voice = "melody" {
        \autoBeamOff
        \phrasingSlurDashed
        \repeat volta 4 {
          \tempo 4 = 120
          \melodyVerseOne
          \melodyVerseTwo \bar "||"
          \tempo 4 = 96
          \melodyChorus
          \tempo 4 = 120
          \melodyVerseTwo | r2
        }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsOneOne
      \lyricsOneTwo
      \lyricsOneChor
      \lyricsOneTwo
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsTwoOne
      \lyricsTwoTwo
      \lyricsTwoChor
      \lyricsTwoTwo
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsTreOne
      \lyricsTreTwo
      \lyricsTreChor
      \lyricsTreTwo
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsForOne
      \lyricsForTwo
      \lyricsForChor
      \lyricsForTwo
    }
  >>
  \layout {}
}

\score {
  <<
    \new Staff = "tenor" {
      \set Staff.instrumentName = #"Tenor"
      \set Staff.shortInstrumentName = #"T."
      \set Staff.midiInstrument = "violin"
      \clef "treble_8"
      \key f \major
      \time 3/4
      \partial 4
      \tempo 4 = 120
      \relative c { c4 | f c f | c r }
      \new Voice = "melody" {
        \autoBeamOff
        \phrasingSlurDashed
        \repeat unfold 3 {
          \tempo 4 = 120
          \melodyVerseOne
          \melodyVerseTwo \bar "||"
          \tempo 4 = 96
          \melodyChorus
          \tempo 4 = 120
          \melodyVerseTwo | r2
        }
        \tempo 4 = 120
        \melodyVerseOne
        \melodyVerseTwo \bar "||"
        \tempo 4 = 96
        \melodyChorus
        \tempo 4 = 120
        \melodyVerseTwo
        \tempo 4 = 96
        \melodyChorus
        \tempo 4 = 120
        \melodyVerseTwo | r2
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricsOneOne
      \lyricsOneTwo
      \lyricsOneChor
      \lyricsOneTwo
      \lyricsTwoOne
      \lyricsTwoTwo
      \lyricsTwoChor
      \lyricsTwoTwo
      \lyricsTreOne
      \lyricsTreTwo
      \lyricsTreChor
      \lyricsTreTwo
      \lyricsForOne
      \lyricsForTwo
      \lyricsForChor
      \lyricsForTwo
      \lyricsForChor
      \lyricsForTwo
    }
  >>
  \midi {}
}

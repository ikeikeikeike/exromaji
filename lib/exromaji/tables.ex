defmodule Exromaji.Table do
  @moduledoc false

  @doc false
  def romaji2kana,
    do: %{
      "a" => "ア",
      "i" => "イ",
      "u" => "ウ",
      "e" => "エ",
      "o" => "オ",
      "-" => "ー",
      "xa" => "ァ",
      "xi" => "ィ",
      "xu" => "ゥ",
      "xe" => "ェ",
      "xo" => "ォ",
      "ka" => "カ",
      "ki" => "キ",
      "ku" => "ク",
      "ke" => "ケ",
      "ko" => "コ",
      "ca" => "カ",
      "cu" => "ク",
      "co" => "コ",
      "ga" => "ガ",
      "gi" => "ギ",
      "gu" => "グ",
      "ge" => "ゲ",
      "go" => "ゴ",
      "sa" => "サ",
      "si" => "シ",
      "su" => "ス",
      "se" => "セ",
      "so" => "ソ",
      "za" => "ザ",
      "zi" => "ジ",
      "zu" => "ズ",
      "ze" => "ゼ",
      "zo" => "ゾ",
      "ja" => "ジャ",
      "ji" => "ジ",
      "ju" => "ジュ",
      "je" => "ジェ",
      "jo" => "ジョ",
      "ta" => "タ",
      "ti" => "チ",
      "tu" => "ツ",
      "te" => "テ",
      "to" => "ト",
      "da" => "ダ",
      "di" => "ヂ",
      "du" => "ヅ",
      "de" => "デ",
      "do" => "ド",
      "na" => "ナ",
      "ni" => "ニ",
      "nu" => "ヌ",
      "ne" => "ネ",
      "no" => "ノ",
      "ha" => "ハ",
      "hi" => "ヒ",
      "hu" => "フ",
      "he" => "ヘ",
      "ho" => "ホ",
      "ba" => "バ",
      "bi" => "ビ",
      "bu" => "ブ",
      "be" => "ベ",
      "bo" => "ボ",
      "pa" => "パ",
      "pi" => "ピ",
      "pu" => "プ",
      "pe" => "ペ",
      "po" => "ポ",
      "va" => "ヴァ",
      "vi" => "ヴィ",
      "vu" => "ヴ",
      "ve" => "ヴェ",
      "vo" => "ヴォ",
      "fa" => "ファ",
      "fi" => "フィ",
      "fu" => "フ",
      "fe" => "フェ",
      "fo" => "フォ",
      "ma" => "マ",
      "mi" => "ミ",
      "mu" => "ム",
      "me" => "メ",
      "mo" => "モ",
      "ya" => "ヤ",
      "yi" => "イ",
      "yu" => "ユ",
      "ye" => "イェ",
      "yo" => "ヨ",
      "ra" => "ラ",
      "ri" => "リ",
      "ru" => "ル",
      "re" => "レ",
      "ro" => "ロ",
      "la" => "ラ",
      "li" => "リ",
      "lu" => "ル",
      "le" => "レ",
      "lo" => "ロ",
      "wa" => "ワ",
      "wi" => "ウィ",
      "wu" => "ウ",
      "we" => "ウェ",
      "wo" => "ヲ",
      "nn" => "ン",
      "n" => "ン",
      "tsu" => "ツ",
      "xka" => "ヵ",
      "xke" => "ヶ",
      "xwa" => "ヮ",
      "xtsu" => "ッ",
      "xya" => "ャ",
      "xyu" => "ュ",
      "xyo" => "ョ",
      "kya" => "キャ",
      "kyi" => "キィ",
      "kyu" => "キュ",
      "kye" => "キェ",
      "kyo" => "キョ",
      "gya" => "ギャ",
      "gyi" => "ギィ",
      "gyu" => "ギュ",
      "gye" => "ギェ",
      "gyo" => "ギョ",
      "sya" => "シャ",
      "syi" => "シィ",
      "syu" => "シュ",
      "sye" => "シェ",
      "syo" => "ショ",
      "sha" => "シャ",
      "shi" => "シ",
      "shu" => "シュ",
      "she" => "シェ",
      "sho" => "ショ",
      "zya" => "ジャ",
      "zyi" => "ジィ",
      "zyu" => "ジュ",
      "zye" => "ジェ",
      "zyo" => "ジョ",
      "jya" => "ジャ",
      "jyi" => "ジィ",
      "jyu" => "ジュ",
      "jye" => "ジェ",
      "jyo" => "ジョ",
      "tya" => "チャ",
      "tyi" => "チィ",
      "tyu" => "チュ",
      "tye" => "チェ",
      "tyo" => "チョ",
      "twa" => "トァ",
      "twi" => "トィ",
      "twu" => "トゥ",
      "twe" => "トェ",
      "two" => "トォ",
      "dwa" => "ドァ",
      "dwi" => "ドィ",
      "dwu" => "ドゥ",
      "dwe" => "ドェ",
      "dwo" => "ドォ",
      "cya" => "チャ",
      "cyi" => "チィ",
      "cyu" => "チュ",
      "cye" => "チェ",
      "cyo" => "チョ",
      "cha" => "チャ",
      "chi" => "チ",
      "chu" => "チュ",
      "che" => "チェ",
      "cho" => "チョ",
      "tha" => "テャ",
      "thi" => "ティ",
      "thu" => "テュ",
      "the" => "テェ",
      "tho" => "テョ",
      "dya" => "ヂャ",
      "dyi" => "ヂィ",
      "dyu" => "ヂュ",
      "dye" => "ヂェ",
      "dyo" => "ヂョ",
      "dha" => "デャ",
      "dhi" => "ディ",
      "dhu" => "デュ",
      "dhe" => "デェ",
      "dho" => "デョ",
      "nya" => "ニャ",
      "nyi" => "ニィ",
      "nyu" => "ニュ",
      "nye" => "ニェ",
      "nyo" => "ニョ",
      "hya" => "ヒャ",
      "hyi" => "ヒィ",
      "hyu" => "ヒュ",
      "hye" => "ヒェ",
      "hyo" => "ヒョ",
      "bya" => "ビャ",
      "byi" => "ビィ",
      "byu" => "ビュ",
      "bye" => "ビェ",
      "byo" => "ビョ",
      "pya" => "ピャ",
      "pyi" => "ピィ",
      "pyu" => "ピュ",
      "pye" => "ピェ",
      "pyo" => "ピョ",
      "mya" => "ミャ",
      "myi" => "ミィ",
      "myu" => "ミュ",
      "mye" => "ミェ",
      "myo" => "ミョ",
      "rya" => "リャ",
      "ryi" => "リィ",
      "ryu" => "リュ",
      "rye" => "リェ",
      "ryo" => "リョ",
      "lya" => "リャ",
      "lyi" => "リィ",
      "lyu" => "リュ",
      "lye" => "リェ",
      "lyo" => "リョ"
    }

  @doc false
  def kana2romaji,
    do: %{
      "ア" => ["a"],
      "イ" => ["i"],
      "ウ" => ["u"],
      "エ" => ["e"],
      "オ" => ["o"],
      "カ" => ["ka", "ca"],
      "キ" => ["ki"],
      "ク" => ["ku"],
      "ケ" => ["ke"],
      "コ" => ["ko", "co"],
      "サ" => ["sa"],
      "シ" => ["shi", "si"],
      "ス" => ["su"],
      "セ" => ["se"],
      "ソ" => ["so"],
      "タ" => ["ta"],
      "チ" => ["chi", "ti", "ci"],
      "ツ" => ["tsu", "tu"],
      "テ" => ["te"],
      "ト" => ["to"],
      "ナ" => ["na"],
      "ニ" => ["ni"],
      "ヌ" => ["nu"],
      "ネ" => ["ne"],
      "ノ" => ["no"],
      "ハ" => ["ha"],
      "ヒ" => ["hi"],
      "フ" => ["fu", "hu"],
      "ヘ" => ["he"],
      "ホ" => ["ho"],
      "マ" => ["ma"],
      "ミ" => ["mi"],
      "ム" => ["mu"],
      "メ" => ["me"],
      "モ" => ["mo"],
      "ヤ" => ["ya"],
      "ユ" => ["yu"],
      "ヨ" => ["yo"],
      "ラ" => ["ra"],
      "リ" => ["ri"],
      "ル" => ["ru"],
      "レ" => ["re"],
      "ロ" => ["ro"],
      "ワ" => ["wa"],
      "ウィ" => ["wi"],
      "ウェ" => ["we"],
      "ヲ" => ["wo"],
      "ー" => ["-"],
      "ガ" => ["ga"],
      "ギ" => ["gi"],
      "グ" => ["gu"],
      "ゲ" => ["ge"],
      "ゴ" => ["go"],
      "ザ" => ["za"],
      "ジ" => ["ji", "zi"],
      "ズ" => ["zu"],
      "ゼ" => ["ze"],
      "ゾ" => ["zo"],
      "ダ" => ["da"],
      "ヂ" => ["di"],
      "ヅ" => ["du"],
      "デ" => ["de"],
      "ド" => ["do"],
      "バ" => ["ba"],
      "ビ" => ["bi"],
      "ブ" => ["bu"],
      "ベ" => ["be"],
      "ボ" => ["bo"],
      "パ" => ["pa"],
      "ピ" => ["pi"],
      "プ" => ["pu"],
      "ペ" => ["pe"],
      "ポ" => ["po"],
      "キャ" => ["kya"],
      "キュ" => ["kyu"],
      "キェ" => ["kye"],
      "キョ" => ["kyo"],
      "ギャ" => ["gya"],
      "ギュ" => ["gyu"],
      "ギェ" => ["gye"],
      "ギョ" => ["gyo"],
      "シャ" => ["sha", "sya"],
      "シュ" => ["shu", "syu"],
      "シェ" => ["she", "sye"],
      "ショ" => ["sho", "syo"],
      "ジャ" => ["ja", "jya", "zya"],
      "ジュ" => ["ju", "jyu", "zyu"],
      "ジェ" => ["je", "jye", "zye"],
      "ジョ" => ["jo", "jyo", "zyo"],
      "チャ" => ["cha", "cya", "tya"],
      "チュ" => ["chu", "cyu", "tyu"],
      "チェ" => ["che", "cye", "tye"],
      "チョ" => ["cho", "cyo", "tyo"],
      "ヂャ" => ["dya"],
      "ヂュ" => ["dyu"],
      "ヂェ" => ["dye"],
      "ヂョ" => ["dyo"],
      "テャ" => ["tha"],
      "ティ" => ["thi"],
      "テュ" => ["thu"],
      "テョ" => ["tho"],
      "トァ" => ["twa"],
      "トィ" => ["twi"],
      "トゥ" => ["twu"],
      "トェ" => ["twe"],
      "トォ" => ["two"],
      "ドァ" => ["dwa"],
      "ドィ" => ["dwi"],
      "ドゥ" => ["dwu"],
      "ドェ" => ["dwe"],
      "ドォ" => ["dwo"],
      "ニャ" => ["nya"],
      "ニュ" => ["nyu"],
      "ニェ" => ["nye"],
      "ニョ" => ["nyo"],
      "ヒャ" => ["hya"],
      "ヒュ" => ["hyu"],
      "ヒェ" => ["hye"],
      "ヒョ" => ["hyo"],
      "ビャ" => ["bya"],
      "ビュ" => ["byu"],
      "ビェ" => ["bye"],
      "ビョ" => ["byo"],
      "ピャ" => ["pya"],
      "ピュ" => ["pyu"],
      "ピェ" => ["pye"],
      "ピョ" => ["pyo"],
      "ファ" => ["fa"],
      "フィ" => ["fi"],
      "フェ" => ["fe"],
      "フォ" => ["fo"],
      "ミャ" => ["mya"],
      "ミュ" => ["myu"],
      "ミェ" => ["mye"],
      "ミョ" => ["myo"],
      "リャ" => ["rya"],
      "リュ" => ["ryu"],
      "リェ" => ["rye"],
      "リョ" => ["ryo"],
      "ヴァ" => ["va"],
      "ヴィ" => ["vi"],
      "ヴ" => ["vu"],
      "ヴェ" => ["ve"],
      "ヴォ" => ["vo"],
      "デャ" => ["dha"],
      "ディ" => ["dhi"],
      "デュ" => ["dhu"],
      "デェ" => ["dhe"],
      "デョ" => ["dho"]
    }

  @doc false
  def kana2sound,
    do: %{
      "ア" => "あ",
      "イ" => "あ",
      "ウ" => "あ",
      "エ" => "あ",
      "オ" => "あ",
      "カ" => "か",
      "キ" => "か",
      "ク" => "か",
      "ケ" => "か",
      "コ" => "か",
      "サ" => "さ",
      "シ" => "さ",
      "ス" => "さ",
      "セ" => "さ",
      "ソ" => "さ",
      "タ" => "た",
      "チ" => "た",
      "ツ" => "た",
      "テ" => "た",
      "ト" => "た",
      "ナ" => "な",
      "ニ" => "な",
      "ヌ" => "な",
      "ネ" => "な",
      "ノ" => "な",
      "ハ" => "は",
      "ヒ" => "は",
      "フ" => "は",
      "ヘ" => "は",
      "ホ" => "は",
      "マ" => "ま",
      "ミ" => "ま",
      "ム" => "ま",
      "メ" => "ま",
      "モ" => "ま",
      "ヤ" => "や",
      "ユ" => "や",
      "ヨ" => "や",
      "ラ" => "ら",
      "リ" => "ら",
      "ル" => "ら",
      "レ" => "ら",
      "ロ" => "ら",
      "ワ" => "わ",
      "ウィ" => "わ",
      "ウェ" => "わ",
      "ヲ" => "わ",
      "ー" => "わ",
      "ガ" => "か",
      "ギ" => "か",
      "グ" => "か",
      "ゲ" => "か",
      "ゴ" => "か",
      "ザ" => "さ",
      "ジ" => "さ",
      "ズ" => "さ",
      "ゼ" => "さ",
      "ゾ" => "さ",
      "ダ" => "た",
      "ヂ" => "た",
      "ヅ" => "た",
      "デ" => "た",
      "ド" => "た",
      "バ" => "は",
      "ビ" => "は",
      "ブ" => "は",
      "ベ" => "は",
      "ボ" => "は",
      "パ" => "は",
      "ピ" => "は",
      "プ" => "は",
      "ペ" => "は",
      "ポ" => "は",
      "キャ" => "か",
      "キュ" => "か",
      "キェ" => "か",
      "キョ" => "か",
      "ギャ" => "か",
      "ギュ" => "か",
      "ギェ" => "か",
      "ギョ" => "か",
      "シャ" => "さ",
      "シュ" => "さ",
      "シェ" => "さ",
      "ショ" => "さ",
      "ジャ" => "さ",
      "ジュ" => "さ",
      "ジェ" => "さ",
      "ジョ" => "さ",
      "チャ" => "た",
      "チュ" => "た",
      "チェ" => "た",
      "チョ" => "た",
      "ヂャ" => "た",
      "ヂュ" => "た",
      "ヂェ" => "た",
      "ヂョ" => "た",
      "テャ" => "た",
      "ティ" => "た",
      "テュ" => "た",
      "テョ" => "た",
      "トァ" => "た",
      "トィ" => "た",
      "トゥ" => "た",
      "トェ" => "た",
      "トォ" => "た",
      "ドァ" => "た",
      "ドィ" => "た",
      "ドゥ" => "た",
      "ドェ" => "た",
      "ドォ" => "た",
      "ニャ" => "な",
      "ニュ" => "な",
      "ニェ" => "な",
      "ニョ" => "な",
      "ヒャ" => "は",
      "ヒュ" => "は",
      "ヒェ" => "は",
      "ヒョ" => "は",
      "ビャ" => "は",
      "ビュ" => "は",
      "ビェ" => "は",
      "ビョ" => "は",
      "ピャ" => "は",
      "ピュ" => "は",
      "ピェ" => "は",
      "ピョ" => "は",
      "ファ" => "は",
      "フィ" => "は",
      "フェ" => "は",
      "フォ" => "は",
      "ミャ" => "ま",
      "ミュ" => "ま",
      "ミェ" => "ま",
      "ミョ" => "ま",
      "リャ" => "ら",
      "リュ" => "ら",
      "リェ" => "ら",
      "リョ" => "ら",
      "ヴァ" => "は",
      "ヴィ" => "は",
      "ヴ" => "は",
      "ヴェ" => "は",
      "ヴォ" => "は",
      "デャ" => "た",
      "ディ" => "た",
      "デュ" => "た",
      "デェ" => "た",
      "デョ" => "た"
    }
end

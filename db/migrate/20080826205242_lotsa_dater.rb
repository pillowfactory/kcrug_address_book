class LotsaDater < ActiveRecord::Migration
  def self.up 
    # self.load_data
  end
  
  def self.down
  end
  
  def self.load_data
    (0..0).each do |index|
      ["Kai", "Bedwyr","Greidawl Galldonvd ","Gwythyr, the son of Greidawl ","Greid, the son of Eri ",
      "Kynddelig Kyvarwydd ","Tathal Twyll Goleu ","Maelwys, the son of Baeddan ","Grychwr, the son of Nes ",
      "Cuhert, the son of Daere ","Percos, the son of Poch ","Lluber Beuthach ","Corvil Bervach ",
      "Gwynn, the son of Nudd ","Edeyrn, the son of Nudd ","Gadwy, the son of Geraint ","Prince Fflewddur Fflam ",
      "Ruawn Pebyr, the son of Dorath ","Bradwen, the son of Moren Mynawc ","Moren Mynawc ","Dalldav, the son of Kimin Cov ",
      "The son of Alun Dyved ","The son of Saidi ","The son of Gwryon ","Uchtryd Ardywad Kad ","Kynwas Curvagyl ",
      "Gwrhyr Gwarthegvras ","Isperyr Hwingath ","Gallcoyt Govynynat ","Duach, the son of Gwawrddur Kyrvach ",
      "Grathach, the son of Gwawrddur Kyrvach ","Nerthach, the son of Gwawrddur Kyrvach ","Kilydd Ganhastyr ",
      "Ganastyr Kanllaw ","Gors Gant-Ewin ","Esgeir Gulhwch Govvnkawn ","Drustwrn Hayarn ","Glewlwyd Gavaelvawr ",
      "Lloch Llawwynnyawc ","Aunwas Adeiniawc ","Sinnoch, the son of Seithved ","Gwennwynwyn, the son of Naw ",
      "Bedyw, the son of Seithved ","Gobrwy, the son of Echel Vorddwyttwll ","Echel Vorddwyttwll ","Mael, the son of Roycol ",
      "Dadweir Dallpenn ","Garwyli, the son of Gwythawc Gwyr ","Gwythawc Gwyr ","Gormant, the son of Ricca ",
      "Menw, the son of Teirgwaedd ","Digon, the son of Alar ","Selyf, the son of Smoit ","Gusg, the son of Atheu ",
      "Nerth, the son of Kedarn ","Drudwas, the son of Tryffin ","Twrch, the son of Perif ","Twrch, the son of Annwas ",
      "Lona, King of France ","Sel, the son of Selgi ","Teregud, the son of laen ","Sulyen, the son of laen ",
      "Bradwen, the son of laen ","Moren the son of laen ","Siawn, the son of laen ","Cradawc, the son of laen ",
      "Dirmyg, the son of Kaw ","Justic, the son of Kaw ","Etmic, the son of Kaw ","Anghawd, the son of Kaw ",
      "Ovan, the son of Kaw ","Kelin, the son of Kaw ","Connyn, the son of Kaw ","Mabsant, the son of Kaw ",
      "Gwyngad, the son of Kaw ","Llwybyr, the son of Kaw ","Coth, the son of Kaw ","Meilic, the son of Kaw ",
      "Kymvas, the son of Kaw ","Ardwyad, the son of Kaw ","Ergyryad, the son of Kaw ","Neb, the son of Kaw ",
      "Gilda, the son of Kaw ","Calcas, the son of Kaw ","Hueil, the son of Kaw ","Samson Vinsych, ","Taliesin, the chief of the Bards ",
      "Manawyddan, the son of Llyr ","Llary, the son of Prince Kasnar ","Ysperni, the son of Fflergant, King of Armorica ","Saranhon, the son of Glythwyr ","Llawr Eilerw ",
      "Annyanniawc, the son of Menw, the son of Teirgwaedd ","Gwynn, the son of Nwyvre ","Eflam, the son of Nwyvre ","Geraint, the son of Erbin ",
      "Ermid, the son of Erbin ","Dyvel, the son of Erbin ","Gwynn, the son of Ermid ","Kyndrwyn, the son of Ermid ",
      "Hyveidd Unllenn ","Eiddon Vawr Vrydic ","Reidwn Arwy ","Gormant, the son of Ricca ",
      "Llawnrodded Varvawc ","Nodawl Varyf Twrch ","Berth, the son of Kado ","Rheidwn, the son of Beli ",
      "Iscovan Hael ","Iscawin, the son of Panon ","Morvran, the son ofTegid ","Sandde Bryd Angel ",
      "Kynwyl Sant ","Uchtryd, the son of Erim ","Eus, the son of Erim ","Henwas Adeinawg, the son ot Erim ",
      "Henbedestyr, the son of Erim ","Sgilti Yscawndroed, the son of Erim ","Teithi Hen, the son of Gwynhan ","Carneddyr, the son of Govynyon Hen ",
      "Gwenwynwyn, the son of Nav Gyssevin, Arthur's champion ","Llysgadrudd Emys ","Gwrbothu Hen ","Kulvanawyd, the son of Goryon ",
      "Llenlleawg Wyddel ","Dyvynwal Moel ","Dunard, King of the North ","Teirnon Twryf Bliant ",
      "Tegvan Gloff ","Tegyr Talgellawg ","Gwrdinal, the son of Ebrei ","Morgant Hael ",
      "Gwystyl, the son of Rhun the son of Nwython ","Llwyddeu, the son of Nwython ","Gwydre, the son of Llwyddeu ","Drem, the son of Dremidyd ",
      "Eidyol, the son of Ner ","Glwyddyn Saer ","Kynyr Keinvarvawc ","Henwas ",
      "Henwyneh, an old companion to Arthur ","Gwallgoyc ","Berwyn, the son of Gerenhir ","Paris, King of France ",
      "Osla Gyllellvawr ","Gwyddawg, the son of Menestyr ","Garanwyn, the son of Kai ","Amren, the son of Bedwyr ",
      "Ely Amyr ","Rheu Rhwyd Dyrys ","Rhun Rhudwern ","Eli ",
      "Trachmyr, Arthur's chief huntsmen ","Llwyddeu, the son of Kelcoed ","Hunabwy, the son of Gwryon ","Gwynn Godyvron ",
      "Gweir Datharwenniddawg ","Gweir, the son of Cadell the son of Talaryant ","Gweir Gwrhyd Ennwir ","Gweir Paladyr Hir ",
      "The sons of Llwch Llawwynnyawg ","Llenlleawg Wyddel ","Ardderchawg Prydain ","Cas, the son of Saidi ",
      "Gwrvan Gwallt Avwyn ","Gwyllennhin, the King of France ","Gwittart, the son of Oedd, King of Ireland ","Garselit Wyddel ",
      "Panawr Pen Bagad ","Ffleudor, the son of Nav ","Gwynnhyvar, Mayor of Cornwall and Devon ","Keli ",
      "Kueli ","Gilla Coes Hydd ","Sol ","Gwadyn Ossol ",
      "Gwadyn Odveith ","Hirerwm ","Hiratrwm ","Huarwar, the son of Aflawn ",
      "Gware Gwallt Euryn ","Gwyddrud, the son of Cast Rhvmi ","Gwyddneu Astrus, the son of Cast Rhvmi ","Sugyn, the son of Sugnedydd ",
      "Rhacvmwri, the attendant of Arthur ","Dygyflwng ","Anoeth Veidawg ","Hir Eiddvl ",
      "Hir Amreu ","Gwevyl, the son of Gwestad ","Uchtryd Varyt Draws ","Elidyr Gyvarwydd ",
      "Yskyrdav ","Yscudydd ","Brys, the son of Brvssethach ","Grudiwyn Gorr ",
      "Bwlch, the son of Gleddyf Kvfwlch the son of Cleddyf Difwlch ","Kyfwlch, the son of Gleddyf Kvfwlch the son of Cleddyf Difwlch ","Sefwlch, the son of Gleddyf Kvfwlch the son of Cleddyf Difwlch ","Dwnn Diessic Unbenn ",
      "Eiladyr, the son of Pen Llarcau ","Kynedyr Wyllt, the son of Hettwn Talarvant ","Sawvl Ben Uchel ","Gwalchmai, the son of Gwyar ",
      "Gwalhaved, the son of Gwyar ","Gwrhyr Gwastawd leithoedd ","Kethcrwm, the Priest ","Glust, the son of Glustveinad ",
      "Medyr, the son of Methredydd ","Gwiawn Llvgad Cath ","Ol, the son of Olwydd ","Bedwini, the Bishop"].each do |name|
        names = name.split(',')
        names[1] = 'the great' if names[1].nil?
        email = "#{names[0][0..2]}@lycos.com"
        Contact.create :first_name => names[0][0..10], :last_name => "#{names[1][0..20]} #{index if index > 0}".strip, :email => email, :phone_number => "(555)555-5555"
      end
    end
  end
end

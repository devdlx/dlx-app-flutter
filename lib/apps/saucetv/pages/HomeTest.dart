import 'package:dlxapp/utils/utils.dart';

var data = DataItem({
  'cover': HomeTestData().data.data['thumbnail'],
  'title': "Jumpin", //HomeTestData().data.data['title'],
  'uploadDate': HomeTestData().data.data['upload_date'],
  'plays': HomeTestData().data.data['view_count'],
  'aurthor ': 'Sizzur DLX',
  'avatarImageUrl': HomeTestData().data.data['thumbnail'],
  // 'network': HomeTestData().data.data[''],
  'asset': 'assets/media/Jumpin.m4a',
  'id': HomeTestData().data.data['display_id']
});




class HomeTestData {
  HomeTestData();
  DataItem data = DataItem({
    "categories": ["Education"],
    "ext": "mp4",
    "webpage_url": "https://www.youtube.com/watch?v=3VMM8eIJxSg",
    "alt_title": null,
    "uploader": "SicanEric Designs",
    "chapters": null,
    "track": null,
    "fps": 30,
    "uploader_id": "SicanEricBFH",
    "extractor": "youtube",
    "webpage_url_basename": "watch",
    "stretched_ratio": null,
    "channel_url": "http://www.youtube.com/channel/UCpxdE7lLjDtNeuNAVGsxmrw",
    "uploader_url": "http://www.youtube.com/user/SicanEricBFH",
    "episode_number": null,
    "height": 1080,
    "width": 1920,
    "subtitles": {},
    "release_year": null,
    "annotations": null,
    "display_id": "3VMM8eIJxSg",
    "formats": [
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=249&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=audio%2Fwebm&gir=yes&clen=2077848&dur=323.241&lmt=1543821905751857&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgeRczkd-FIh6ggOsd2ZiB2yEmQ4UVQLyH4ee4sdcZi-QCIQDBtaLQ5yEE5sbaJ57RVoEO0Ct1GRLXG_tWrH8JG_GIsg%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": null,
        "acodec": "opus",
        "width": null,
        "ext": "webm",
        "vcodec": "none",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "tiny",
        "abr": 50,
        "tbr": 63.516,
        "filesize": 2077848,
        "fps": null,
        "format": "249 - audio only (tiny)",
        "player_url": null,
        "asr": 48000,
        "format_id": "249",
        "protocol": "https",
        "downloader_options": {"http_chunk_size": 10485760}
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=250&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=audio%2Fwebm&gir=yes&clen=2753851&dur=323.241&lmt=1543821904840041&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhAJEixGkYtWxTeD2hz5qPwQ-2yIIG81kwxnz-D2aUzKr9AiEAr8UTtz9kqlVZtVoxriLddzfRxiMuF62gEIdxbm_-Los%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": null,
        "acodec": "opus",
        "width": null,
        "ext": "webm",
        "vcodec": "none",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "tiny",
        "abr": 70,
        "tbr": 84.097,
        "filesize": 2753851,
        "fps": null,
        "format": "250 - audio only (tiny)",
        "player_url": null,
        "asr": 48000,
        "format_id": "250",
        "protocol": "https",
        "downloader_options": {"http_chunk_size": 10485760}
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=140&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=audio%2Fmp4&gir=yes&clen=5233269&dur=323.291&lmt=1543821376259212&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhALFhMPZBV-XJ4uUZ8TVPCLMG6T9nrncI4ySgX2fsw7q0AiEA0J4MdBudX7rjRIX5aeemJwf67nvIReNBPmt3ICTIB2I%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": null,
        "acodec": "mp4a.40.2",
        "width": null,
        "ext": "m4a",
        "vcodec": "none",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "tiny",
        "abr": 128,
        "tbr": 130.488,
        "filesize": 5233269,
        "fps": null,
        "format": "140 - audio only (tiny)",
        "player_url": null,
        "container": "m4a_dash",
        "asr": 44100,
        "format_id": "140",
        "protocol": "https",
        "downloader_options": {"http_chunk_size": 10485760}
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=251&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=audio%2Fwebm&gir=yes&clen=5439578&dur=323.241&lmt=1543821903964339&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgMEW8NM8J5V4uiPL31Y80lIb4uYiRY74LwcTGWudOS5YCIQD9uoVgelHsTsVkxdFWqG0BW9VJBTV75oYX3AqaYHucqg%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": null,
        "acodec": "opus",
        "width": null,
        "ext": "webm",
        "vcodec": "none",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "tiny",
        "abr": 160,
        "tbr": 165.798,
        "filesize": 5439578,
        "fps": null,
        "format": "251 - audio only (tiny)",
        "player_url": null,
        "asr": 48000,
        "format_id": "251",
        "protocol": "https",
        "downloader_options": {"http_chunk_size": 10485760}
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=278&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=2562773&dur=323.233&lmt=1543822388756094&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhANWrXhHl9B6L1VVV9jC90zPHTcN6fnBjQ3J7A64BYYUPAiEAntlwxtyltRTc3vRGl45MScrGFARCyd0xGroX4YR_290%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 144,
        "acodec": "none",
        "width": 256,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "144p",
        "tbr": 87.875,
        "filesize": 2562773,
        "fps": 30,
        "player_url": null,
        "container": "webm",
        "vcodec": "vp9",
        "format_id": "278",
        "protocol": "https",
        "format": "278 - 256x144 (144p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=160&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=2294060&dur=323.233&lmt=1543821384252820&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIhAMHGyUNAtkbIOhWE5zzQVKR4gHdJaRy7fOjpAl7yNu0XAiA3u6tgeUOMgAwgw2VLo5A2s8kqC3UT-HBhIhYIdI3wyQ%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 144,
        "acodec": "none",
        "width": 256,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "144p",
        "tbr": 108.189,
        "filesize": 2294060,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.4d400c",
        "format_id": "160",
        "protocol": "https",
        "format": "160 - 256x144 (144p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=242&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=4339513&dur=323.233&lmt=1543822388756984&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIhAM6YEAezOb5zKjkeyLr3Bh_tGIyeV4exg1queY7EHPuvAiBLG9klfmo9amAnDkJuZ6GWWzyV8AgwZGbi-9WcXUFDTA%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 240,
        "acodec": "none",
        "width": 426,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "240p",
        "tbr": 184.343,
        "filesize": 4339513,
        "fps": 30,
        "player_url": null,
        "vcodec": "vp9",
        "format_id": "242",
        "protocol": "https",
        "format": "242 - 426x240 (240p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=133&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=4710582&dur=323.233&lmt=1543821384359486&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRAIgebbFSvrb_cdalWuFty01hhBzuscHv-lgkmFS0feUV2ACIEvSY8E2JAO2qqYJnksdUb9BkpbWVGekVtFmG6Wj9FYV&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 240,
        "acodec": "none",
        "width": 426,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "240p",
        "tbr": 241.062,
        "filesize": 4710582,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.4d4015",
        "format_id": "133",
        "protocol": "https",
        "format": "133 - 426x240 (240p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=243&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=8142811&dur=323.233&lmt=1543822388751938&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhAMW3twhz--RyzhJ50KnSt7XmLZbnLy-nmw8ik4ejgWW4AiEArrlxvUWyMTB4AeVt9naL5AOJ0_PhiGB5tFdtH1a16zg%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 360,
        "acodec": "none",
        "width": 640,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "360p",
        "tbr": 350.248,
        "filesize": 8142811,
        "fps": 30,
        "player_url": null,
        "vcodec": "vp9",
        "format_id": "243",
        "protocol": "https",
        "format": "243 - 640x360 (360p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=134&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=6877954&dur=323.233&lmt=1543821384455585&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgboTKpe708QGNIhJe9jPdGv6ySYrqAN8zJQ5hsJvYRpACIQDb3TnfeuxrMBYUIl7nqDTopxRDsdquzdBA0wvoaBxA-Q%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 360,
        "acodec": "none",
        "width": 640,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "360p",
        "tbr": 459.142,
        "filesize": 6877954,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.4d401e",
        "format_id": "134",
        "protocol": "https",
        "format": "134 - 640x360 (360p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=244&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=13966835&dur=323.233&lmt=1543822388762456&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhAIJ9TsDTmBuy2vgJrNiPXCSl981eqS3PPlaGwaqC3GaJAiEArS1EePGIxeTa3GqeFELqDDUQBJdZIpawaE5w7h4OpZo%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 480,
        "acodec": "none",
        "width": 854,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "480p",
        "tbr": 604.295,
        "filesize": 13966835,
        "fps": 30,
        "player_url": null,
        "vcodec": "vp9",
        "format_id": "244",
        "protocol": "https",
        "format": "244 - 854x480 (480p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=135&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=13142790&dur=323.233&lmt=1543821384562319&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIhAJobAjUiCmm17nXai4d5xYiXuI-m3fLXeBw1Rjux0iVXAiA4s-p9sZufYuZwZ3HZelEZ2CtqMUAhMcdZnCIpEUduoA%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 480,
        "acodec": "none",
        "width": 854,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "480p",
        "tbr": 943.09,
        "filesize": 13142790,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.4d401f",
        "format_id": "135",
        "protocol": "https",
        "format": "135 - 854x480 (480p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=247&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=30785239&dur=323.233&lmt=1543822388749213&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIhAL2COHwHDxG_K80iqRvWVVKt0EH2OyBeBVypMxaTMf4JAiB6oYlDMeURks6F1VXJHuMjXlLjNjo7FBcYrM6pqMp77A%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 720,
        "acodec": "none",
        "width": 1280,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "720p",
        "tbr": 1119.186,
        "filesize": 30785239,
        "fps": 30,
        "player_url": null,
        "vcodec": "vp9",
        "format_id": "247",
        "protocol": "https",
        "format": "247 - 1280x720 (720p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=136&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=24372961&dur=323.233&lmt=1543821384653731&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgcNCtcUP6GStlbcN3_YDCPRpjX0xecrppf-ODewUB-T8CIQDX0qUHQQAcJPZbgphTsP5bGH0fTtEUx4__nQg8_g79Og%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 720,
        "acodec": "none",
        "width": 1280,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "720p",
        "tbr": 1705.267,
        "filesize": 24372961,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.4d401f",
        "format_id": "136",
        "protocol": "https",
        "format": "136 - 1280x720 (720p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=248&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=58369781&dur=323.233&lmt=1543822226073285&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgfC1jJ7t8JDaUYAB_IR3Ae8vejYP1--cQDrEYKedjH74CIQCzN7eNHgDsjUTBfLCnkkPbxnyaGr7hnhI23PiFy9Gfbw%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 1080,
        "acodec": "none",
        "width": 1920,
        "asr": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "1080p",
        "tbr": 2263.411,
        "filesize": 58369781,
        "fps": 30,
        "player_url": null,
        "vcodec": "vp9",
        "format_id": "248",
        "protocol": "https",
        "format": "248 - 1920x1080 (1080p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=137&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=87182967&dur=323.233&lmt=1543821373953127&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhALfahVo_U4tw4Xz2DNhwS8LElt2li-0BD22oh6qMlPBxAiEA3xl0MIT3ENuz7opbedFJyfK8uisreB_nZjB7EcHmX-M%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 1080,
        "acodec": "none",
        "width": 1920,
        "asr": null,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "1080p",
        "tbr": 3939.423,
        "filesize": 87182967,
        "fps": 30,
        "player_url": null,
        "vcodec": "avc1.640028",
        "format_id": "137",
        "protocol": "https",
        "format": "137 - 1920x1080 (1080p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=43&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fwebm&gir=yes&clen=21785843&ratebypass=yes&dur=0.000&lmt=1543822000377506&mt=1573167884&fvip=3&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=ALgxI2wwRQIgfOFH9Kfc7HTkagkWGPjdp8Dse4ZAsmv0qW9Wd91Dh0ICIQC31Im38vn4D5_bAflUduD2F59xnWmR7KAr_c9S10snuQ%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D",
        "height": 360,
        "acodec": "vorbis",
        "width": 640,
        "asr": null,
        "ext": "webm",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "360p",
        "abr": 128,
        "tbr": null,
        "filesize": 21785843,
        "fps": null,
        "player_url": null,
        "vcodec": "vp8.0",
        "format_id": "43",
        "protocol": "https",
        "format": "43 - 640x360 (360p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=18&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=16554825&ratebypass=yes&dur=323.291&lmt=1543821370742711&mt=1573167884&fvip=3&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cratebypass%2Cdur%2Clmt&sig=ALgxI2wwRQIhAOkMjP1a2zKiXF5FtWCFUang2qbXyoziUJ1CYVLERK4eAiADIplaOtDTbqkyP23S9iEt1sh35gB29i6gBFZ0nkvTJQ%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D",
        "height": 360,
        "acodec": "mp4a.40.2",
        "width": 640,
        "asr": 44100,
        "ext": "mp4",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "360p",
        "abr": 96,
        "tbr": 409.731,
        "filesize": 16554825,
        "fps": null,
        "player_url": null,
        "vcodec": "avc1.42001E",
        "format_id": "18",
        "protocol": "https",
        "format": "18 - 640x360 (360p)"
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=22&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&ratebypass=yes&dur=323.291&lmt=1543821475357986&mt=1573167884&fvip=3&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=ALgxI2wwRAIgdfani8RyLnFlJrDmJJeo6ubBYBvQ39-vR5KQPtwUtxICIAt6tygT-dFDB7LkyxJiXxt_P29gdJh6HBl6p63nu5z0&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D",
        "height": 720,
        "acodec": "mp4a.40.2",
        "width": 1280,
        "asr": 44100,
        "ext": "mp4",
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "720p",
        "abr": 192,
        "tbr": 731.948,
        "filesize": null,
        "fps": null,
        "player_url": null,
        "vcodec": "avc1.64001F",
        "format_id": "22",
        "protocol": "https",
        "format": "22 - 1280x720 (720p)"
      }
    ],
    "series": null,
    "description":
        "***WEBSITE***\nwww.sicanericdesigns.com\n\n\n***ARTWORK INFORMATION***\n[Artist]: Bumpy Nardo\n[Cover]: http://i.imgur.com/olNLh3p.png\n[Display]: http://i.imgur.com/gEcO45D.png\n[Before/After]: http://i.imgur.com/7JBl4hr.jpg\n\n\n***VIDEO INFORMATION***\n[Song]: BeatsbyNafi\n\n***SHOP***\nwww.sicanericdesigns.com/shop\n\n***DOWNLOAD PACKS***\nwww.sicanericdesigns.com/downloads\n\n***SOCIAL MEDIA INFORMATION***\nWebsite: www.sicanericdesigns.com\nEmail: sicanericdesigns@yahoo.com\nTwitter: www.twitter.com/SicanEricDesign\nFacebook: www.facebook.com/SicanEricDesigns\nInstagram: www.instagram.com/SicanEricDesigns\nYouTube: www.youtube.com/c/SicanEricDesigns\n\nCopyright 2017 \u00a9 SicanEricDesigns All rights reserved.",
    "_filename":
        "Photoshop Mixtape Artwork Design '10PC Special' (Speed-art)-3VMM8eIJxSg.mp4",
    "vcodec": "avc1.640028",
    "format_id": "137+251",
    "automatic_captions": {},
    "creator": null,
    "thumbnail": "https://i.ytimg.com/vi/3VMM8eIJxSg/maxresdefault.jpg",
    "playlist_index": null,
    "vbr": null,
    "format": "137 - 1920x1080 (1080p)+251 - audio only (tiny)",
    "age_limit": 0,
    "acodec": "opus",
    "resolution": null,
    "id": "3VMM8eIJxSg",
    "duration": 323,
    "tags": [
      "Graphics",
      "Design",
      "Tutorial",
      "Timelapse",
      "Abobe",
      "Photoshop",
      "SicanEric Designs",
      "Music",
      "Artwork",
      "Cover",
      "Mixtape",
      "Album",
      "Photo",
      "Manipulation",
      "Freelance",
      "Process",
      "Adobe Stock",
      "Single",
      "SicanEric"
    ],
    "artist": null,
    "end_time": null,
    "requested_subtitles": null,
    "is_live": null,
    "dislike_count": 1,
    "channel_id": "UCpxdE7lLjDtNeuNAVGsxmrw",
    "release_date": null,
    "season_number": null,
    "average_rating": 4.973856,
    "like_count": 152,
    "playlist": null,
    "extractor_key": "Youtube",
    "album": null,
    "upload_date": "20170507",
    "abr": 160,
    "title": "Photoshop Mixtape Artwork Design \"10PC Special\" (Speed-art)",
    "view_count": 5133,
    "fulltitle":
        "Photoshop Mixtape Artwork Design \"10PC Special\" (Speed-art)",
    "license": null,
    "requested_formats": [
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=137&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=video%2Fmp4&gir=yes&clen=87182967&dur=323.233&lmt=1543821373953127&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1311222&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRgIhALfahVo_U4tw4Xz2DNhwS8LElt2li-0BD22oh6qMlPBxAiEA3xl0MIT3ENuz7opbedFJyfK8uisreB_nZjB7EcHmX-M%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": 1080,
        "acodec": "none",
        "width": 1920,
        "ext": "mp4",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "1080p",
        "tbr": 3939.423,
        "filesize": 87182967,
        "fps": 30,
        "format": "137 - 1920x1080 (1080p)",
        "asr": null,
        "format_id": "137",
        "protocol": "https",
        "vcodec": "avc1.640028",
        "player_url": null
      },
      {
        "url":
            "https://r3---sn-bvvbax-2ime.googlevideo.com/videoplayback?expire=1573189639&ei=p6PEXZbFAtSFkgafjKGABQ&ip=66.210.248.254&id=o-AGaGVBmHGAFoVJgZ0PwNAZZivN_VlYxT68N68x7t2EZC&itag=251&source=youtube&requiressl=yes&mm=31%2C26&mn=sn-bvvbax-2ime%2Csn-n4v7knlk&ms=au%2Conr&mv=m&mvi=2&nh=EAE%2C&pl=20&initcwndbps=2217500&mime=audio%2Fwebm&gir=yes&clen=5439578&dur=323.241&lmt=1543821903964339&mt=1573167884&fvip=3&keepalive=yes&fexp=23842630&c=WEB&txp=1301222&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cgir%2Cclen%2Cdur%2Clmt&sig=ALgxI2wwRQIgMEW8NM8J5V4uiPL31Y80lIb4uYiRY74LwcTGWudOS5YCIQD9uoVgelHsTsVkxdFWqG0BW9VJBTV75oYX3AqaYHucqg%3D%3D&lsparams=mm%2Cmn%2Cms%2Cmv%2Cmvi%2Cnh%2Cpl%2Cinitcwndbps&lsig=AHylml4wRgIhAMCYt9IgPq5W6CoQGSMRjT4_ziakuF2QQ8iRID7b-9HpAiEAj_khnIc3unMc7yOHMXfZRMx3P950rKXBFZaNFmZ1KBY%3D&ratebypass=yes",
        "height": null,
        "acodec": "opus",
        "width": null,
        "ext": "webm",
        "downloader_options": {"http_chunk_size": 10485760},
        "http_headers": {
          "User-Agent":
              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.71 Safari/537.36",
          "Accept":
              "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Encoding": "gzip, deflate",
          "Accept-Charset": "ISO-8859-1,utf-8;q=0.7,*;q=0.7",
          "Accept-Language": "en-us,en;q=0.5"
        },
        "format_note": "tiny",
        "abr": 160,
        "tbr": 165.798,
        "filesize": 5439578,
        "fps": null,
        "format": "251 - audio only (tiny)",
        "player_url": null,
        "asr": 48000,
        "format_id": "251",
        "vcodec": "none",
        "protocol": "https"
      }
    ],
    "start_time": null,
    "thumbnails": [
      {"url": "https://i.ytimg.com/vi/3VMM8eIJxSg/maxresdefault.jpg", "id": "0"}
    ]
  });
}

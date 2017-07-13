Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dVjfo-0008U8-JP
 for barebox@lists.infradead.org; Thu, 13 Jul 2017 19:21:18 +0000
Received: by mail-wm0-x22f.google.com with SMTP id w126so1950844wme.0
 for <barebox@lists.infradead.org>; Thu, 13 Jul 2017 12:20:55 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Du Huanpeng <u74147@gmail.com>
Date: Fri, 14 Jul 2017 04:20:53 +0900
Message-ID: <CANvTkNZ+gLF_0FPnq-HiLGHN-BKQCj9PR7KrmeeXeR03Px1MAA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: how to make barebox supports pcf font format support
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, I am intrested in pcf font, there are many language has pcf font, eg.

https://www.netsarang.com/download/font.html
(be careful, not sure it is free or not)

I want to try make barebox supports pcf,
where to start?

I can find some code in freetype supports pcf font.

---------------------------------------------------------------------------------------------
du@DESKTOP-A3GTHUO MINGW64 /d/work/freetype-2.8/src
$ ls
Jamfile   bzip2/  gxvalid/  pcf/       psnames/  tools/     winfonts/
autofit/  cache/  gzip/     pfr/       raster/   truetype/
base/     cff/    lzw/      psaux/     sfnt/     type1/
bdf/      cid/    otvalid/  pshinter/  smooth/   type42/
---------------------------------------------------------------------------------------------
which way is better, make barebox supports freetype, or any other idea?

thanks!

Du Huanpeng

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

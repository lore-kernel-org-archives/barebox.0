Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfsnU-00077e-W1
 for barebox@lists.infradead.org; Mon, 01 Jun 2020 22:20:46 +0000
Received: by mail-lj1-x235.google.com with SMTP id q2so10121458ljm.10
 for <barebox@lists.infradead.org>; Mon, 01 Jun 2020 15:20:44 -0700 (PDT)
Date: Tue, 2 Jun 2020 01:20:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200602012035.2b476de768013dc5793cdea0@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] inkscape 1.0 issue
To: barebox@lists.infradead.org

Hi All!

I can't build barebox with inkscape-1.0 anymore.
Some command line options were changed, e.g.

make V=3D1
...
  ( inkscape -z "-w 64" -e lib/logo/barebox-logo-w64.bblogo /home/builduser=
/barebox/Documentation/barebox.svg > /dev/null; )
Unable to init server: Could not connect: Connection refused
Unknown option -z

make V=3D1
...
  ( DISPLAY=3D"" inkscape "-w 64" -e lib/logo/barebox-logo-w64.bblogo /home=
/builduser/barebox/Documentation/barebox.svg > /dev/null; )
Unable to init server: Could not connect: Connection refused
Cannot parse integer value ?-e? for -w

make V=3D1
...
  ( DISPLAY=3D"" inkscape --export-width=3D64 -e lib/logo/barebox-logo-w64.=
bblogo /home/builduser/barebox/Documentation/barebox.svg > /dev/null; )
Unable to init server: Could not connect: Connection refused
Unknown option -e

I have succeded with compiling barebox with inkscape-1.0, see patch below.
Alas! My patch makes it impossible to use pre-1.0 inkscape (e.g. Inkscape 0=
.92.4
I used before).

Any suggestion?


diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index eb7aee080e..8c81447df7 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -1,17 +1,17 @@
 =

-OPTS_barebox-logo-w64.bblogo=3D"-w 64"
+OPTS_barebox-logo-w64.bblogo =3D --export-width=3D64
 bblogo-$(CONFIG_BAREBOX_LOGO_64) +=3D barebox-logo-w64
 =

-OPTS_barebox-logo-w240.bblogo=3D"-w 240"
+OPTS_barebox-logo-w240.bblogo =3D --export-width=3D240
 bblogo-$(CONFIG_BAREBOX_LOGO_240) +=3D barebox-logo-w240
 =

-OPTS_barebox-logo-w320.bblogo=3D"-w 320"
+OPTS_barebox-logo-w320.bblogo =3D --export-width=3D320
 bblogo-$(CONFIG_BAREBOX_LOGO_320) +=3D barebox-logo-w320
 =

-OPTS_barebox-logo-w400.bblogo=3D"-w 400"
+OPTS_barebox-logo-w400.bblogo =3D --export-width=3D400
 bblogo-$(CONFIG_BAREBOX_LOGO_400) +=3D barebox-logo-w400
 =

-OPTS_barebox-logo-w640.bblogo=3D"-w 640"
+OPTS_barebox-logo-w640.bblogo =3D --export-width=3D640
 bblogo-$(CONFIG_BAREBOX_LOGO_640) +=3D barebox-logo-w640
 =

 obj-y +=3D $(patsubst %,%.bblogo.o,$(bblogo-y))
@@ -41,7 +41,8 @@ cmd_logo_S =3D							\
 quiet_cmd_logo =3D LOGO.S   $@
 cmd_logo =3D							\
 (								\
-	inkscape -z $(OPTS_$(@F)) -e $@ $< > /dev/null;		\
+	DISPLAY=3D"" inkscape $(OPTS_$(@F)) --export-type=3Dpng $< > /dev/null; \
+	mv $(patsubst %.svg,%.png,$<) $@; \
 )
 =

 %.bblogo: $(srctree)/Documentation/barebox.svg FORCE


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

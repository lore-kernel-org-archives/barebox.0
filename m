Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XEMAO-0007Zd-8V
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 17:35:28 +0000
Date: Mon, 4 Aug 2014 19:34:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804173459.GC23235@pengutronix.de>
References: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
 <1407082665.7251.1.camel@polaris.local>
 <20140803215338.3b436b58bf5d796c46dd23bd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140803215338.3b436b58bf5d796c46dd23bd@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] gen-dtb-s: make metadata binary fields always little-endian
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 03, 2014 at 09:53:38PM +0400, Antony Pavlov wrote:
> On Sun, 03 Aug 2014 18:17:45 +0200
> Jan L=FCbbe <jlu@pengutronix.de> wrote:
> =

> > Hi,
> > =

> > On Sat, 2014-08-02 at 09:45 +0400, Antony Pavlov wrote:
> > >  =

> > >                 compatlen=3D$($FDTGET -t s "$dtb" / compatible | wc -=
c)
> > > -               echo ".int 0x640c8005"
> > > -               echo ".int " $compatlen
> > > +               echo ".byte 0x05, 0x80, 0x0c, 0x64"
> > > +               python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%0=
2x\\n\" % ($compatlen & 0xff, ($compatlen >> 8) & 0xff, ($compatlen >> 16) =
& 0xff, ($compatlen >> 24) & 0xff))"
> > =

> > Rather than adding a build-time dependency on python, maybe we should
> > just handle this in C?
> =

> We use sphinx for documentation generation so we already have dependency =
on python.

Yeah, but 'make docs' is a separate target. We shouldn't add it for the
binary build without need.

How about this? It uses shell, is readable and uses a function to avoid
duplicating the endianess conversion code.

Sascha


From 9c3aded9eac3ec563827b6ee562335ff4bce607a Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 4 Aug 2014 19:31:54 +0200
Subject: [PATCH] gen-dtb-s: make metadata binary fields always little-endian

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/gen-dtb-s | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 3e4158f..434612f 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -6,6 +6,14 @@ imd=3D$3
 =

 echo "#include <asm-generic/barebox.lds.h>"
 =

+le32() {
+	printf ".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\n" \
+		$(($1 & 0xff))				\
+		$((($1 >> 8) & 0xff))			\
+		$((($1 >> 16) & 0xff))			\
+		$((($1 >> 24) & 0xff))
+}
+
 FDTGET=3Dscripts/dtc/fdtget
 =

 if [ "$imd" =3D "y" ]; then
@@ -17,8 +25,8 @@ if [ "$imd" =3D "y" ]; then
 	if [ "$compat" !=3D "notfound" ]; then
 =

 		compatlen=3D$($FDTGET -t s "$dtb" / compatible | wc -c)
-		echo ".int 0x640c8005"
-		echo ".int " $compatlen
+		le32 0x640c8005
+		le32 $compatlen
 		echo ".byte " $compat
 		echo ".balign 4"
 	fi
@@ -27,8 +35,8 @@ if [ "$imd" =3D "y" ]; then
 =

 	if [ "$model" !=3D "notfound" ]; then
 		modellen=3D$($FDTGET -t s "$dtb" / model | wc -c)
-		echo ".int 0x640c8004"
-		echo ".int " $modellen
+		le32 0x640c8004
+		le32 $compatlen
 		echo ".byte " $model
 		echo ".balign 4"
 	fi
-- =

2.0.1

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

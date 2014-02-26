Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rafi.de ([178.15.151.14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIaCY-0006f8-Cm
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 08:50:51 +0000
MIME-Version: 1.0
In-Reply-To: <20140226084135.GZ17250@pengutronix.de>
References: <20140226084135.GZ17250@pengutronix.de>,
 <OFD3A2CF6E.C8D085C1-ONC1257C8A.002B9472-C1257C8A.002B9476@o0802.rafi.inhouse>
From: andreas.willig@rafi.de
Message-ID: <OF63F2FFC6.5A1FCCD3-ONC1257C8B.00309166-C1257C8B.0030916C@o0802.rafi.inhouse>
Date: Wed, 26 Feb 2014 09:50:29 +0100
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
Subject: Re: Barebox TFTP FS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

 =

Hi Sascha,
i did it this way:
diff --git a/fs/fs.c b/fs/fs.c
index 1b43c61..e59d166 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -738,7 +738,7 @@ int open(const char *pathname, int flags, ...)
if (ret)
goto out;

- if (!(s.st_mode & S_IFCHR) && (flags & O_TRUNC)) {
+ if (!(s.st_mode & S_IFCHR) && (flags & O_TRUNC) && NULL !=3D fsdrv->trunc=
ate) {
ret =3D fsdrv->truncate(&fsdev->dev, f, 0);
f->size =3D 0;
if (ret)
diff --git a/fs/tftp.c b/fs/tftp.c
index b641faf..099e577 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -639,7 +639,7 @@ static struct fs_driver_d tftp_driver =3D {
.mkdir =3D tftp_mkdir,
.rmdir =3D tftp_rmdir,
.write =3D tftp_write,
- .truncate =3D tftp_truncate,
+ .truncate =3D NULL /*tftp_truncate*/,
.flags =3D 0,
.drv =3D {
.probe =3D tftp_probe,

Seems more flexible for future enhancement. If truncate function is not fil=
led, it should not be used. Same should be done for seek etc.

(Maybe you receive this mail twice, i got an error from majordomo, since i =
forgot to set the flag for text only mail, which is weird to do with Lotus =
Notes :( )


Mit freundlichen Gr=FC=DFen aus Berg/ With kind regards

i.A. Andreas Willig
Dipl.-Ing. (FH)
Entwicklung Elektronik

RAFI GmbH & Co. KG
Postfach 2060
88276 Ravensburg
Tel.: +49 (0) 751 89-6142

mailto:andreas.willig@rafi.de, http://www.rafi.de

Kommanditgesellschaft: Sitz Berg, Amtsgericht Ulm, HRA 550059
Komplement=E4r: RAFI Beteiligungs-GmbH, Sitz Berg, Amtsgericht Ulm HRB 5500=
74
Gesch=E4ftsf=FChrer: Albert Wasmeier, Dipl.-Kfm. Gerhard Schenk
USt-Ident.-Nr.: DE 146 392 319, Steuer-Nr.: 77079/00291


-----Sascha Hauer <s.hauer@pengutronix.de> schrieb: ----- =

An: andreas.willig@rafi.de
Von: Sascha Hauer <s.hauer@pengutronix.de>
Datum: 26.02.2014 09:41
Kopie: barebox@lists.infradead.org
Betreff: Re: Barebox TFTP FS


Hi Andreas,

On Tue, Feb 25, 2014 at 08:56:00AM +0100, andreas.willig@rafi.de wrote:
> Hi all, =

> =

> i could not find it currently, is the a problem in TFTP Put
> implementation? For me it looks like tftp put (tftp -p) is redirected
> to a TFTP FS mount and a copy command into this "temporary mount".
> Unfortunately the implementation of copy command (cp) issues a file
> truncate (O_TRUNC option) which is not supported by TFTP FS (ENOSYS),
> which causes TFPT Put to fail. =

> =

> Simply the question: is this well known? is there a work around? Is a fix=
 needed?

This is not well known, at least not by me ;)

I tracked it down and the following patch should make it work again.
Thanks for reporting this.

Sascha

-------------------------8<-------------------------------------

From 0b1d85af1889652cecba0588bf69c4df447258e0 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Feb 2014 09:02:15 +0100
Subject: [PATCH] fs: tftp: Fix writing files to tftp

Copying files to tftp is broken since:

| commit d4f5bb1e011ac653a167031554f0ac9e028e9e36
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Sat Sep 28 13:12:50 2013 +0200
|
|     copy_file: Add missing O_TRUNC
|
|     Without it, when copying a smaller file over a larger file the
|     resulting file still has the remaining space from the larger file.
|
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Since this commit copy_file passes O_TRUNC to open(). This results in the
fs layer calling fsdrv->truncate. tftp returns -ENOSYS here and open returns
with an error. To fix this return 0 for the truncate callback in tftp. Also
enforce the O_TRUNC flag when opening a file for writing on tftp as the fil=
es
are always truncated on tftp anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: andreas.willig@rafi.de
---
 fs/tftp.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index b641faf..9cad18f 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -110,7 +110,7 @@ static int tftp_rmdir(struct device_d *dev, const char =
*pathname)
 =

 static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
 {
- return -ENOSYS;
+ return 0;
 }
 =

 static int tftp_send(struct file_priv *priv)
@@ -393,6 +393,14 @@ static struct file_priv *tftp_do_open(struct device_d =
*dev,
  case O_WRONLY:
  priv->push =3D 1;
  priv->state =3D STATE_WRQ;
+ if (!(accmode & O_TRUNC)) {
+ /*
+ * TFTP always truncates the existing file, so this
+ * flag is mandatory when opening a file for writing.
+ */
+ ret =3D -ENOSYS;
+ goto out;
+ }
  break;
  case O_RDWR:
  ret =3D -ENOSYS;
-- =

1.8.5.3


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

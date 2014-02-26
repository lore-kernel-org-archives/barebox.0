Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIa3x-0006S1-VT
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 08:41:58 +0000
Date: Wed, 26 Feb 2014 09:41:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140226084135.GZ17250@pengutronix.de>
References: <OFD3A2CF6E.C8D085C1-ONC1257C8A.002B9472-C1257C8A.002B9476@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFD3A2CF6E.C8D085C1-ONC1257C8A.002B9472-C1257C8A.002B9476@o0802.rafi.inhouse>
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
Subject: Re: Barebox TFTP FS
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

Hi Andreas,

On Tue, Feb 25, 2014 at 08:56:00AM +0100, andreas.willig@rafi.de wrote:
> Hi all, 
> 
> i could not find it currently, is the a problem in TFTP Put
> implementation? For me it looks like tftp put (tftp -p) is redirected
> to a TFTP FS mount and a copy command into this "temporary mount".
> Unfortunately the implementation of copy command (cp) issues a file
> truncate (O_TRUNC option) which is not supported by TFTP FS (ENOSYS),
> which causes TFPT Put to fail. 
> 
> Simply the question: is this well known? is there a work around? Is a fix needed?

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
enforce the O_TRUNC flag when opening a file for writing on tftp as the files
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
@@ -110,7 +110,7 @@ static int tftp_rmdir(struct device_d *dev, const char *pathname)
 
 static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	return -ENOSYS;
+	return 0;
 }
 
 static int tftp_send(struct file_priv *priv)
@@ -393,6 +393,14 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 	case O_WRONLY:
 		priv->push = 1;
 		priv->state = STATE_WRQ;
+		if (!(accmode & O_TRUNC)) {
+			/*
+			 * TFTP always truncates the existing file, so this
+			 * flag is mandatory when opening a file for writing.
+			 */
+			ret = -ENOSYS;
+			goto out;
+		}
 		break;
 	case O_RDWR:
 		ret = -ENOSYS;
-- 
1.8.5.3


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

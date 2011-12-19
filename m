Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZqy-0007B7-4l
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:49:53 +0000
Date: Mon, 19 Dec 2011 10:49:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219094932.GC27267@pengutronix.de>
References: <1324072234-31634-1-git-send-email-robert.jarzmik@free.fr>
 <1324072234-31634-4-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324072234-31634-4-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 3/8] drivers/mtd: transfer NAND notions to MTD core
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Fri, Dec 16, 2011 at 10:50:29PM +0100, Robert Jarzmik wrote:

>  
>  if MTD
>
> +config MTD_WRITE
> +	bool
> +	default y
> +	prompt "Support writing to MTD devices"
> +
> +config MTD_READ_OOB
> +	bool
> +	default y
> +	prompt "Create a device for reading the OOB data"
> +

This one is a rename...

>  
> -config NAND_READ_OOB
> -	bool
> -	default y
> -	prompt "create a device for reading the OOB data"
> -

from this one, but not all references to it were renamed.

This revealed a bug which was present before this patch. The following
fixes this, see the commit log for more details. Can you rebase your
series on this patch?
Otherwise your series seems to work properly.

Sascha

8<--------------------------------------------------

mtd nand: fix oob compile time option

The NAND_READ_OOB Kconfig option is used to

a) creating a cdev for reading OOB data
b) compiling in mtd->read_oob support

The former was intended and that's also what the Kconfig help
says. The latter though was implicit and wrong. mtd->read_oob
is also used by the bbt code which resulted in a NULL pointer
deref when compiled with BBT but without NAND_READ_OOB.
To fix this, split the option into two. The now invisible
option NAND_OOB_DEVICE is only responsible for b) and gets
selected when necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/Kconfig |    7 ++++++-
 drivers/mtd/nand/nand.c  |    2 +-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 20f9f33..1cc29a8 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -41,16 +41,21 @@ config NAND_INFO
 	  Show informational strings about the vendor and nand flash type
 	  during startup
 
+config NAND_READ_OOB
+	bool
+
 config NAND_BBT
 	bool
+	select NAND_READ_OOB
 	default y
 	prompt "support bad block tables"
 	help
 	  Say y here to include support for bad block tables. This speeds
 	  up the process of checking for bad blocks
 
-config NAND_READ_OOB
+config NAND_OOB_DEVICE
 	bool
+	select NAND_READ_OOB
 	default y
 	prompt "create a device for reading the OOB data"
 
diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index 6db21d6..130e2af 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -186,7 +186,7 @@ static struct file_operations nand_ops = {
 	.lseek  = dev_lseek_default,
 };
 
-#ifdef CONFIG_NAND_READ_OOB
+#ifdef CONFIG_NAND_OOB_DEVICE
 static ssize_t nand_read_oob(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
 {
 	struct mtd_info *info = cdev->priv;
-- 
1.7.7.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

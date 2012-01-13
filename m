Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlflP-0005zz-3Q
 for barebox@lists.infradead.org; Fri, 13 Jan 2012 11:57:45 +0000
Date: Fri, 13 Jan 2012 12:57:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120113115731.GI5446@pengutronix.de>
References: <OF2ADC7AFF.7875240B-ONC1257984.002AE123-C1257984.003043B9@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF2ADC7AFF.7875240B-ONC1257984.002AE123-C1257984.003043B9@o0802.rafi.inhouse>
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
Subject: Re: imx35 NFC and jffs2
To: guenter.gebhardt@rafi.de
Cc: barebox@lists.infradead.org

Hi Guenter,

On Fri, Jan 13, 2012 at 09:47:08AM +0100, guenter.gebhardt@rafi.de wrote:
> I am using jffs2 for my Linux root file system.
> 
> I am using the following command to create it:
> 
> $ mkfs.jffs2 -D ${ROOTFS_DEVICE_TABLE} -r ${ROOTFS_TMP} -o 
> ${DIR_TFTP}/${ROOTFS_IMG} -n -l -e 128
> 
> Then I am using the barebox shell to program this image to the NAND flash:
> 
> $ update_rootfs nand
> 
> The system get's booted now. All seems to be fine.
> But after using the system for a while I get a lot of error messages 
> originating from the jffs2 file system:
> 
> UnCorrectable RS-ECC Error   
> UnCorrectable RS-ECC Error   
> UnCorrectable RS-ECC Error   
> UnCorrectable RS-ECC Error   
> mtd->read(0x6f8 bytes from 0x760108) returned ECC error
> 
> This leads to a corrupted and unusable file system.
> 
> I executed all the tests provided by the Linux kernel mtd device driver 
> with success.
> Also nandtest from the MTD utils package runs with success.
> Therefore I assume that the imx35 NFC device driver is working well.

Do yourself a favour and use UBIFS. The i.MX NFC is not very suitable
for jffs2 because it uses OOB data which the NFC can't handle properly.
If you really want to use jffs2 try the following patch which is from
the Freescale BSP

Sascha


commit cfead094af78e18512a0515f213dbd490892b75a
Author: Jason Liu <r64343@freescale.com>
Date:   Fri Mar 14 21:53:04 2008 -0500

    ENGR00068619 JFFS2 community fix with not use OOB
    
    JFFS2 community fix with not use OOB at MLC NAND, this patch
    is coming from the MTD community
    
    Signed-off-by: Jason Liu <r64343@freescale.com>

diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index e896e67..c6f902d 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -692,7 +692,9 @@ void jffs2_gc_release_page(struct jffs2_sb_info *c,
 static int jffs2_flash_setup(struct jffs2_sb_info *c) {
 	int ret = 0;
 
-	if (jffs2_cleanmarker_oob(c)) {
+	if (c->mtd->type == MTD_NANDFLASH) {
+		if (!(c->mtd->flags & MTD_OOB_WRITEABLE))
+			printk(KERN_INFO "JFFS2 doesn't use OOB.\n");
 		/* NAND flash... do setup accordingly */
 		ret = jffs2_nand_flash_setup(c);
 		if (ret)
@@ -725,7 +727,7 @@ static int jffs2_flash_setup(struct jffs2_sb_info *c) {
 
 void jffs2_flash_cleanup(struct jffs2_sb_info *c) {
 
-	if (jffs2_cleanmarker_oob(c)) {
+	if (c->mtd->type == MTD_NANDFLASH) {
 		jffs2_nand_flash_cleanup(c);
 	}
 
diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index 00bae7c..b6776d9 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -106,7 +106,7 @@ static inline void jffs2_init_inode_info(struct jffs2_inode_info *f)
 #define jffs2_can_mark_obsolete(c) (c->mtd->flags & (MTD_BIT_WRITEABLE))
 #endif
 
-#define jffs2_cleanmarker_oob(c) (c->mtd->type == MTD_NANDFLASH)
+#define jffs2_cleanmarker_oob(c) (c->mtd->type == MTD_NANDFLASH && (c->mtd->flags & MTD_OOB_WRITEABLE))
 
 #define jffs2_flash_write_oob(c, ofs, len, retlen, buf) ((c)->mtd->write_oob((c)->mtd, ofs, len, retlen, buf))
 #define jffs2_flash_read_oob(c, ofs, len, retlen, buf) ((c)->mtd->read_oob((c)->mtd, ofs, len, retlen, buf))
diff --git a/include/mtd/mtd-abi.h b/include/mtd/mtd-abi.h
index 2f7d45b..e486432 100644
--- a/include/mtd/mtd-abi.h
+++ b/include/mtd/mtd-abi.h
@@ -58,12 +58,13 @@ struct mtd_oob_buf64 {
 #define MTD_BIT_WRITEABLE	0x800	/* Single bits can be flipped */
 #define MTD_NO_ERASE		0x1000	/* No erase necessary */
 #define MTD_POWERUP_LOCK	0x2000	/* Always locked after reset */
+#define MTD_OOB_WRITEABLE	0x4000	/* Use Out-Of-Band area */
 
 // Some common devices / combinations of capabilities
 #define MTD_CAP_ROM		0
 #define MTD_CAP_RAM		(MTD_WRITEABLE | MTD_BIT_WRITEABLE | MTD_NO_ERASE)
 #define MTD_CAP_NORFLASH	(MTD_WRITEABLE | MTD_BIT_WRITEABLE)
-#define MTD_CAP_NANDFLASH	(MTD_WRITEABLE)
+#define MTD_CAP_NANDFLASH	(MTD_WRITEABLE | MTD_OOB_WRITEABLE)
 
 /* ECC byte placement */
 #define MTD_NANDECC_OFF		0	// Switch off ECC (Not recommended)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

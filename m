Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMeoK-0005xr-HP
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:44:20 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMeoJ-0003nX-2q
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 04:44:15 -0500
Date: Mon, 21 Dec 2009 04:43:50 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912210440490.11209@localhost>
MIME-Version: 1.0
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
Subject: [PATCH] NAND: Free asprintf()-allocated space upon mtd device
	deletion.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Given that add_mtd_device() invokes asprintf() thusly:

  mtd->cdev.name = asprintf("nand%d", mtd->class_dev.id);
  ...
  mtd->param_size.value = asprintf("%u", mtd->size);
  ...
  mtd->cdev_oob.name = asprintf("nand_oob%d", mtd->class_dev.id);

make sure del_mtd_device() frees that in the reverse order.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/drivers/nand/nand.c b/drivers/nand/nand.c
index 0a6128c..bcf52bd 100644
--- a/drivers/nand/nand.c
+++ b/drivers/nand/nand.c
@@ -240,7 +240,9 @@ int add_mtd_device(struct mtd_info *mtd)
 int del_mtd_device (struct mtd_info *mtd)
 {
 	unregister_device(&mtd->class_dev);
+	free(mtd->cdev_oob.name);
 	free(mtd->param_size.value);
+	free(mtd->cdev.name);
 	return 0;
 }


========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

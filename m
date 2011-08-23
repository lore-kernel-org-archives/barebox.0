Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gateway.hbm.com ([213.157.30.2] helo=hbmntx5.hbm.com)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvpzd-0007Xi-72
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 12:22:21 +0000
Content-Class: urn:content-classes:message
From: "Tim Sander" <tim.sander@hbm.com>
Date: Tue, 23 Aug 2011 14:21:42 +0200
MIME-Version: 1.0
Message-ID: <201108231421.42868.tim.sander@hbm.com>
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
Subject: RFC: arm pcm043 1315.6 IM950 timing (Numonyx Axcell Errata)
To: barebox@lists.infradead.org

Hi

I just found out that Phytec has some patches in its BSP and i think especially the patches
IM590_cfi_workaround for "Numonyx Axcell P33/P30 Specification Update" make me a little nervous.

We had some Problems getting the latest HW Revision of PCM043 (1315.6) up and
running and so i found these patches. I have ported some other patches i found
(which i will send later today) but i don't know enough about CFI to apply this patch
logically to the barebox tree nevertheless heres my educated guess:
(I am not sure if the patch belongs into intel CFI but since Numonyx has been owned by
intel partly...)

commit bfa486c0bd90055222b4a2702bfb0d6a0fe59d8e
Author: Tim Sander <tim.sander@hbm.com>
Date:   Tue Aug 23 14:03:49 2011 +0200

    IM590 cfi workaround

diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index c3cbad5..30a54e6 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -132,12 +132,30 @@ static int intel_flash_status_check (struct flash_info *info, flash_sect_t secto
 static int intel_flash_real_protect (struct flash_info *info, long sector, int prot)
 {
        flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
+       //flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+       /*
+       * see errata called
+       * "Numonyx Axcell P33/P30 Specification Update" :)
+       */
+       flash_write_cmd (info, sector, 0, FLASH_CMD_READ_ID);
+       flash_isequal (info, sector, FLASH_OFFSET_PROTECT, prot);
+       /*
+       * cmd must come before FLASH_CMD_PROTECT + 20us
+       * Disable interrupts which might cause a timeout here.
+       */
+#ifdef CONFIG_USE_IRQ
+       int flag = disable_interrupts ();
+#endif
        flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
        if (prot)
                flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
        else
                flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
-
+       
+#ifdef CONFIG_USE_IRQ
+       if(flag)
+               enable_interrupts();
+#endif
        return 0;
 }


This patch is against u-boot-v2-rc10 *not* againts barebox as reference. It is taken from the 
PD10.1.2 BSP for PCM043.
Index: u-boot-2.0.0-rc10/drivers/nor/cfi_flash.c        
===================================================================
--- u-boot-2.0.0-rc10.orig/drivers/nor/cfi_flash.c  2011-01-28 10:52:14.881458149 +0100
+++ u-boot-2.0.0-rc10/drivers/nor/cfi_flash.c   2011-01-28 11:09:40.241981535 +0100
@@ -599,14 +599,34 @@
 static int flash_real_protect (flash_info_t * info, long sector, int prot)
 {
    int retcode = 0;
+   unsigned short cmd;

    flash_write_cmd (info, sector, 0, FLASH_CMD_CLEAR_STATUS);
-   flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+   /*
+    * see errata called
+    * "Numonyx Axcell P33/P30 Specification Update" :)
+    */
+   flash_write_cmd (info, sector, 0, FLASH_CMD_READ_ID);
+   flash_isequal (info, sector, FLASH_OFFSET_PROTECT, prot);
+   /*
+    * cmd must come before FLASH_CMD_PROTECT + 20us
+    * Disable interrupts which might cause a timeout here.
+    */
+#ifdef CONFIG_USE_IRQ
+   int flag = disable_interrupts ();
+#endif
    if (prot)
-       flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_SET);
+       cmd = FLASH_CMD_PROTECT_SET;
    else
-       flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT_CLEAR);
+       cmd = FLASH_CMD_PROTECT_CLEAR;

+   flash_write_cmd (info, sector, 0, FLASH_CMD_PROTECT);
+   flash_write_cmd (info, sector, 0, cmd);
+#ifdef CONFIG_USE_IRQ
+   /* re-enable interrupts if necessary */
+   if (flag)
+       enable_interrupts ();
+#endif
    if ((retcode =
         flash_full_status_check (info, sector, info->erase_blk_tout,
                      prot ? "protect" : "unprotect")) == 0) {

--
Please CC as i'm not subscribed to the list.

Best regards
Tim

Hottinger Baldwin Messtechnik GmbH, Im Tiefen See 45, 64293 Darmstadt, Germany | www.hbm.com 

Registered as GmbH (German limited liability corporation) in the commercial register at the local court of Darmstadt, HRB 1147  
Company domiciled in Darmstadt | CEO: Andreas Huellhorst | Chairman of the board: James Charles Webster

Als Gesellschaft mit beschraenkter Haftung eingetragen im Handelsregister des Amtsgerichts Darmstadt unter HRB 1147 
Sitz der Gesellschaft: Darmstadt | Geschaeftsfuehrung: Andreas Huellhorst | Aufsichtsratsvorsitzender: James Charles Webster

The information in this email is confidential. It is intended solely for the addressee. If you are not the intended recipient, please let me know and delete this email.

Die in dieser E-Mail enthaltene Information ist vertraulich und lediglich fur den Empfaenger bestimmt. Sollten Sie nicht der eigentliche Empfaenger sein, informieren Sie mich bitte kurz und loeschen diese E-Mail.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

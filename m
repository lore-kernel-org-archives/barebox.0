Delivery-date: Mon, 30 Aug 2021 16:50:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKicl-00035H-Rl
	for lore@lore.pengutronix.de; Mon, 30 Aug 2021 16:50:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKich-0001xA-K6
	for lore@pengutronix.de; Mon, 30 Aug 2021 16:50:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aMd+jzn+Tquy8cQaPUdAlZD/UkOwE/N2DQuxXb/Hxb8=; b=RhNoPbuWNMHEXO
	AXi9L2c9a1k/6WtXLXuOcNV5g5d3qrrQhhI+QOWwVniIK1jA8pcWl+jNDleokvksjudgnNaCRJ7vf
	YL4BYP0W++7Qc1jgAVlYy/oE2AQ7qLvxUvVwq5VCU3GSkCSY7ZWO7YpJiSIAjqhTEwLWJK9DYnV0m
	V45DYTnC0sEqOYv9TzS8OwhESb07UUUj0NTmnvNATyA40XAbvjLpMQS989N2nU3ZGjcVD9QYd/9Yg
	RHSLEC1IcCAFXnoL/Yo/A/HAJ+sxYQppcgWeJNr/ILVjitZnQAvM/kJNnp7BY1GqqFu4B1+sRzOyl
	rJRDfPhSR6cW2SetfOeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKian-00HSyq-7b; Mon, 30 Aug 2021 14:48:57 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKiae-00HSxs-V9
 for barebox@lists.infradead.org; Mon, 30 Aug 2021 14:48:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 722EB412501
 for <barebox@lists.infradead.org>; Mon, 30 Aug 2021 16:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1630334923;
 bh=qhyQ+xJd7EJgyeKml+fBSfBQJkiQyR9qbS9DKtIHjOc=;
 h=From:To:Cc:Subject:Date;
 b=bUHGF6tiGyAH2DrbhfJEAE/CpJ2fWqofJI3GaIhr6/bGTWHxcMRGAO7QxPkIWy0ut
 vdms0Ze/gDIwdl8dscKHWNJ5G97AI2SYBsJ+3aNkcQ617RpIf+1spJf27iaEmgjCBb
 9c2et4ih9cLBaT92id7NZ9wDo7bU8VaZx1XiNLXc=
Received: from fx403 (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id A40464124B2;
 Mon, 30 Aug 2021 16:48:42 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <dc3d.612cefca.3c099.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx403.security-mail.net (Postfix) with ESMTPS id 3E4CC412483;
 Mon, 30 Aug 2021 16:48:42 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 2781027E02EB;
 Mon, 30 Aug 2021 16:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 11A2527E02E8;
 Mon, 30 Aug 2021 16:48:42 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 11A2527E02E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1630334922;
 bh=NmUxc0lgNOcyHxeUmHy0fKBl8tbJ4bEftvkQS0FWkRQ=;
 h=From:To:Date:Message-Id;
 b=OpR1s+1gosirxW8bm2cd+jN+n/tWIjpiN5JnEYLvZHHlyAFwRps5ie1A6SpmsbWOJ
 iqui8muwa+R9XK5J2N8OdRpLa5RG4V5Qw93VaoBtnq7r1MJ6lC65LBdD/1CLl7Nw1O
 aCrCz//kM/Rs8nwbOWR2XF7jLjA41Y1PVxw6egkI=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id l2rKdpRP_f61; Mon, 30 Aug 2021 16:48:42 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id E889B27E02A8;
 Mon, 30 Aug 2021 16:48:41 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 30 Aug 2021 16:48:35 +0200
Message-Id: <20210830144835.27458-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_074849_525840_01D3A4D2 
X-CRM114-Status: GOOD (  20.40  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC PATCH] usb: gadget: dfu: Rework dfu command to use usbgadget
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The dfu command now uses the composite multi gadget to register the usb
functionality. This allows the removal of the usb composite driver from
dfu.c

As the dfu command is blocking the command slice must be released while
the dfu gadget is running in order to do operations on the file system.

The usb_dfu_register() function is replaced with usb_dfu_detached() for
the dfu command to return a different value depending on if it has been
interrupted with CTRL-C or if the gadget has been detached.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 commands/dfu.c           |  24 +++---
 drivers/usb/gadget/dfu.c | 163 +--------------------------------------
 include/usb/dfu.h        |   2 +-
 3 files changed, 15 insertions(+), 174 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 3132a7479d..0d8a703300 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -11,6 +11,7 @@
 #include <fs.h>
 #include <xfuncs.h>
 #include <usb/dfu.h>
+#include <usb/gadget-multi.h>
 #include <linux/err.h>
 
 /* dfu /dev/self0(bootloader)sr,/dev/nand0.root.bb(root)
@@ -20,28 +21,27 @@
  */
 static int do_dfu(int argc, char *argv[])
 {
-	struct f_dfu_opts opts;
 	char *argstr;
-	struct usb_dfu_dev *dfu_alts = NULL;
 	int ret;
 
 	if (argc != optind + 1)
 		return COMMAND_ERROR_USAGE;
 
 	argstr = argv[optind];
+	ret = usbgadget_register(true, argstr, false, NULL, false, false);
+	if (ret)
+		return ret;
 
-	opts.files = file_list_parse(argstr);
-	if (IS_ERR(opts.files)) {
-		ret = PTR_ERR(opts.files);
-		goto out;
+	command_slice_release();
+	while (!usb_dfu_detached()) {
+		if (ctrlc()) {
+			ret = -EINTR;
+			break;
+		}
 	}
+	command_slice_acquire();
 
-	ret = usb_dfu_register(&opts);
-
-	file_list_free(opts.files);
-out:
-
-	free(dfu_alts);
+	usb_multi_unregister();
 
 	return ret;
 }
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index fd0ec505dc..ba5fdd5b74 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -817,168 +817,9 @@ static void dfu_disable(struct usb_function *f)
 	dfu_abort(dfu);
 }
 
-#define STRING_MANUFACTURER_IDX		0
-#define STRING_PRODUCT_IDX		1
-#define STRING_DESCRIPTION_IDX		2
-
-static struct usb_string strings_dev[] = {
-	[STRING_MANUFACTURER_IDX].s = NULL,
-	[STRING_PRODUCT_IDX].s = NULL,
-	[STRING_DESCRIPTION_IDX].s = "USB Device Firmware Upgrade",
-	{  } /* end of list */
-};
-
-static struct usb_gadget_strings stringtab_dev = {
-	.language	= 0x0409,	/* en-us */
-	.strings	= strings_dev,
-};
-
-static struct usb_gadget_strings *dev_strings[] = {
-	&stringtab_dev,
-	NULL,
-};
-
-static void dfu_unbind_config(struct usb_configuration *c)
-{
-	free(dfu_string_defs);
-}
-
-static struct usb_configuration dfu_config_driver = {
-	.label			= "USB DFU",
-	.unbind			= dfu_unbind_config,
-	.bConfigurationValue	= 1,
-	.bmAttributes		= USB_CONFIG_ATT_SELFPOWER,
-};
-
-static struct usb_device_descriptor dfu_dev_descriptor = {
-	.bLength		= USB_DT_DEVICE_SIZE,
-	.bDescriptorType	= USB_DT_DEVICE,
-	.bcdUSB			= 0x0100,
-	.bDeviceClass		= 0x00,
-	.bDeviceSubClass	= 0x00,
-	.bDeviceProtocol	= 0x00,
-/*	.idVendor		= dynamic */
-/*	.idProduct		= dynamic */
-	.bcdDevice		= 0x0000,
-	.bNumConfigurations	= 0x01,
-};
-
-static struct usb_function_instance *fi_dfu;
-static struct usb_function *f_dfu;
-
-static int dfu_driver_bind(struct usb_composite_dev *cdev)
+int usb_dfu_detached(void)
 {
-	struct usb_gadget *gadget = cdev->gadget;
-	int status;
-
-	if (gadget->vendor_id && gadget->product_id) {
-		dfu_dev_descriptor.idVendor = cpu_to_le16(gadget->vendor_id);
-		dfu_dev_descriptor.idProduct = cpu_to_le16(gadget->product_id);
-	} else {
-		dfu_dev_descriptor.idVendor = cpu_to_le16(0x1d50); /* Openmoko, Inc */
-		dfu_dev_descriptor.idProduct = cpu_to_le16(0x60a2); /* barebox bootloader USB DFU Mode */
-	}
-
-	strings_dev[STRING_MANUFACTURER_IDX].s = gadget->manufacturer;
-	strings_dev[STRING_PRODUCT_IDX].s = gadget->productname;
-
-	status = usb_string_id(cdev);
-	if (status < 0)
-		goto fail;
-	strings_dev[STRING_MANUFACTURER_IDX].id = status;
-	dfu_dev_descriptor.iManufacturer = status;
-
-	status = usb_string_id(cdev);
-	if (status < 0)
-		goto fail;
-	strings_dev[STRING_PRODUCT_IDX].id = status;
-	dfu_dev_descriptor.iProduct = status;
-
-	/* config description */
-	status = usb_string_id(cdev);
-	if (status < 0)
-		goto fail;
-	strings_dev[STRING_DESCRIPTION_IDX].id = status;
-	dfu_config_driver.iConfiguration = status;
-
-	status = usb_add_config_only(cdev, &dfu_config_driver);
-	if (status < 0)
-		goto fail;
-
-	fi_dfu = usb_get_function_instance("dfu");
-	if (IS_ERR(fi_dfu)) {
-		status = PTR_ERR(fi_dfu);
-		goto fail;
-	}
-
-	f_dfu = usb_get_function(fi_dfu);
-	if (IS_ERR(f_dfu)) {
-		status = PTR_ERR(f_dfu);
-		goto fail;
-	}
-
-	status = usb_add_function(&dfu_config_driver, f_dfu);
-	if (status)
-		goto fail;
-
-	return 0;
-fail:
-	return status;
-}
-
-static int dfu_driver_unbind(struct usb_composite_dev *cdev)
-{
-	usb_put_function(f_dfu);
-	usb_put_function_instance(fi_dfu);
-
-	return 0;
-}
-
-static struct usb_composite_driver dfu_driver = {
-	.name		= "g_dfu",
-	.dev		= &dfu_dev_descriptor,
-	.strings	= dev_strings,
-	.max_speed	= USB_SPEED_HIGH,
-	.bind		= dfu_driver_bind,
-	.unbind		= dfu_driver_unbind,
-};
-
-int usb_dfu_register(struct f_dfu_opts *opts)
-{
-	int ret;
-
-	if (dfu_files)
-		return -EBUSY;
-
-	dfu_files = opts->files;
-
-	ret = usb_composite_probe(&dfu_driver);
-	if (ret)
-		goto out;
-
-	while (1) {
-		ret = usb_gadget_poll();
-		if (ret < 0)
-			goto out1;
-
-		if (dfudetach) {
-			ret = 0;
-			goto out1;
-		}
-
-		if (ctrlc()) {
-			ret = -EINTR;
-			goto out1;
-		}
-	}
-
-out1:
-	dfudetach = 0;
-	usb_composite_unregister(&dfu_driver);
-out:
-	dfu_files = NULL;
-
-	return ret;
+	return dfudetach;
 }
 
 static void dfu_free_func(struct usb_function *f)
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index 560a0318fe..81425f7c62 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -29,6 +29,6 @@ struct f_dfu_opts {
 	struct file_list *files;
 };
 
-int usb_dfu_register(struct f_dfu_opts *);
+int usb_dfu_detached(void);
 
 #endif /* _USB_DFU_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


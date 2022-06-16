Delivery-date: Thu, 16 Jun 2022 16:29:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qUi-0040y0-4I
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 16:29:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qUh-0006kq-NO
	for lore@pengutronix.de; Thu, 16 Jun 2022 16:29:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qe8l4RvRSEwGzeGDAVuq1P9FpYL/cs3Sw3CXKqfADBs=; b=exW8po0P/pjQYz
	r6y3YAxk6JMe9UoQjkE2ZMb4c0vbAxRp1VPPzUrT7exsG16BgH64Glyr/4At9tFRRvuLBrYHpuWE+
	bKOkXssj7GmfjL6ucG8YGedPruZtqw702AzuXcEOCJLvGllz7BjVa9gUiWB+0cdqmU/HYZtzDkRxY
	G3WaOqfkZt5J1k5wBXAURSt3u2SCtwrtdaOD/Hr/+ArX1JUU5wIgDOo1xC0XGuyTXTUF30+erYb4C
	cDx7AoQwXkJjG12xMwLN6TCeBCfEWobHD+GLQOC3iLpkITqhWGdRAq9L59UPqISS15kF7mj2+t+Ey
	C3dQZvgGqCoPvvFxOxbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qTF-002qKe-Tm; Thu, 16 Jun 2022 14:27:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qTB-002qJW-21
	for barebox@bombadil.infradead.org; Thu, 16 Jun 2022 14:27:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Qe8l4RvRSEwGzeGDAVuq1P9FpYL/cs3Sw3CXKqfADBs=; b=Q7fpU2m4J74Mtn5jceocK+J2/d
	cwakREeJBcKJx3ERUbHtCLQ8+d4yjuFdtjiqrjGhfh6nB4U8xX0zgT3ROPxhxBSK5JZHFPCMWOGvC
	O5m4SAllBL0Dbs9cSmUzZbga39mZCjABf/V64GRxFbBeSlGF4ZT0auoeuiQjgDbKvDsf6RfBz5qWb
	PS+ttj3hO404HsdzemZjFefy7pRrfb/rTfyuSeQkD07J/HIfjLyepDll1A2VD9n1LQIoiCDEYHWUp
	FuuooDKzbLGdIh6xUHG1cW5cg77beKKgKTy3EL6428/bCPzuvQlH+PZOAqSQ879OhWXO+Jy6v33st
	c6uX/lmg==;
Received: from smtp16.bhosted.nl ([94.124.121.27])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qT4-008Qwg-JZ
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 14:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=Qe8l4RvRSEwGzeGDAVuq1P9FpYL/cs3Sw3CXKqfADBs=;
	b=Nf/G3M0stJadRM85/Ex+8K4hW+DEreRiVvYw+oPu//ka2Hk5RSDUUnQR2mtV2vrTgnVO9oFMgE8AJ
	 dqrEczY3VgYtDZYL/hgtgeZ8VDhFCBzFqRuhxdF9jcG1VM0D14KJLE9/VOPaQKdmqr0TEY/9cehikl
	 Fh0Y6fB9kGzd/uBzBRpQbeXYzjGQAKgMhq8mTxwmJfcfmGraSK37QLv0XHELVZi+F3YCc0jKw9lUxe
	 /zfEXBcVemC7BQezEs3OV2KZEQJuet8rCRtPuZ6sA7lrvO79dLoOf9kc6rPOq0+oVBoEFrzg24nmIy
	 GAwLFLBMkUOTO5gXGpAefoAiY4q6p0Q==
X-MSG-ID: c9e75e7d-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:11 +0200
Message-Id: <20220616131114.214628-7-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_152731_727460_8C267473 
X-CRM114-Status: GOOD (  18.62  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/9] ARM: boards: protonic-imx6: Register prt-usb boot entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The worker that polls for a bootable usb device and the first boot.default
target are executed at the same time (after usb_delay seconds). Since
inspecting the usb drive's contents takes some time it loses the race
breaking usb boot.

If we make the usb boot routine a boot entry and prepend it to boot.default
it will always run first when the autoboot timeout expires. If the usb boot
entry fails boot will just fallback to the next entry (i.e. bootchooser).

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 108 +++++++++++++++++++-------
 1 file changed, 79 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index e67d8d2f3b..2c4f323799 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -4,10 +4,13 @@
 // SPDX-FileCopyrightText: 2020 Oleksij Rempel, Pengutronix
 
 #include <bbu.h>
+#include <boot.h>
+#include <bootm.h>
 #include <common.h>
 #include <deep-probe.h>
 #include <environment.h>
 #include <fcntl.h>
+#include <globalvar.h>
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <mach/bbu.h>
@@ -21,7 +24,6 @@
 #include <sys/stat.h>
 #include <unistd.h>
 #include <usb/usb.h>
-#include <work.h>
 
 #define GPIO_HW_REV_ID  {\
 	{IMX_GPIO_NR(2, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "rev_id0"}, \
@@ -88,8 +90,6 @@ struct prt_imx6_priv {
 	const char *name;
 	unsigned int usb_delay;
 	unsigned int no_usb_check;
-	struct work_queue wq;
-	struct work_struct work;
 };
 
 struct prti6q_rfid_contents {
@@ -286,25 +286,21 @@ exit_usb_mount:
 
 #define OTG_PORTSC1 (MX6_OTG_BASE_ADDR+0x184)
 
-static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
+static int prt_imx6_usb_boot(struct bootentry *entry, int verbose, int dryrun)
 {
-	struct prt_imx6_priv *priv = container_of(w, struct prt_imx6_priv, work);
+	struct prt_imx6_priv *priv = prt_priv;
 	struct device_d *dev = priv->dev;
-	char *second_word, *bootsrc;
+	char *second_word;
 	char buf[sizeof("vicut1q recovery")] = {};
-	unsigned int v;
+	struct bootm_data bootm_data = {};
 	ssize_t size;
 	int fd, ret;
 
-	v = readl(OTG_PORTSC1);
-	if ((v & 0x0c00) == 0) /* LS == SE0 ==> nothing connected */
-		return;
-
 	usb_rescan();
 
 	ret = prt_imx6_usb_mount(priv);
 	if (ret)
-		return;
+		return ret;
 
 	fd = open("/usb/boot_target", O_RDONLY);
 	if (fd < 0) {
@@ -343,35 +339,90 @@ static void prt_imx6_check_usb_boot_do_work(struct work_struct *w)
 		goto exit_usb_boot;
 	}
 
+	bootm_data_init_defaults(&bootm_data);
+
 	second_word++;
 	if (strncmp(second_word, "usb", 3) == 0) {
-		bootsrc = "usb";
+		dev_info(dev, "Booting from USB drive\n");
+		bootm_data.os_file = "/usb/linuximage.fit";
 	} else if (strncmp(second_word, "recovery", 8) == 0) {
-		bootsrc = "recovery";
+		dev_info(dev, "Booting internal recovery OS\n");
+		bootm_data.os_file = "/dev/mmc2.5";
 	} else {
 		dev_err(dev, "Unknown boot target!\n");
 		ret = -ENODEV;
 		goto exit_usb_boot;
 	}
 
-	dev_info(dev, "detected valid usb boot target file, overwriting boot to: %s\n", bootsrc);
-	ret = setenv("global.boot.default", bootsrc);
+	ret = globalvar_add_simple("linux.bootargs.root",
+		"root=/dev/ram rw rootwait ramdisk_size=196608");
+	if (ret)
+		goto exit_usb_boot;
+
+	if (verbose)
+		bootm_data.verbose = verbose;
+	if (dryrun)
+		bootm_data.dryrun = dryrun;
+
+	ret = bootm_boot(&bootm_data);
 	if (ret)
 		goto exit_usb_boot;
 
-	return;
+	return 0;
 
 exit_usb_boot:
 	dev_err(dev, "Failed to run usb boot: %s\n", strerror(-ret));
 
-	return;
+	return ret;
+}
+
+static void prt_imx6_bootentry_release(struct bootentry *entry)
+{
+	free(entry);
+}
+
+static int prt_imx6_bootentry_create(struct bootentries *bootentries, const char *name)
+{
+	struct bootentry *entry;
+
+	entry = xzalloc(sizeof(*entry));
+	if (!entry)
+		return -ENOMEM;
+
+	entry->me.type = MENU_ENTRY_NORMAL;
+	entry->release = prt_imx6_bootentry_release;
+	entry->boot = prt_imx6_usb_boot;
+	entry->title = xstrdup(name);
+	entry->description = xstrdup("Boot FIT image of a USB drive");
+	bootentries_add_entry(bootentries, entry);
+
+	return 0;
+}
+
+static int prt_imx6_bootentry_provider(struct bootentries *bootentries,
+				     const char *name)
+{
+	int found = 0;
+	unsigned int v;
+
+	if (strncmp(name, "prt-usb", 7))
+		return found;
+
+	v = readl(OTG_PORTSC1);
+	if ((v & 0x0c00) == 0)	/* No usb device detected */
+		return found;
+
+	if (!prt_imx6_bootentry_create(bootentries, name))
+		found = 1;
+
+	return found;
 }
 
 static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 {
 	const struct prt_machine_data *dcfg = priv->dcfg;
 	struct device_d *dev = priv->dev;
-	char *delay, *bootsrc;
+	char *delay, *bootsrc, *boot_targets;
 	int ret;
 
 	ret = setenv("global.linux.bootargs.base", "consoleblank=0 vt.color=0x00");
@@ -399,7 +450,13 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 	else
 		bootsrc = "mmc2";
 
-	ret = setenv("global.boot.default", bootsrc);
+	if (!priv->no_usb_check)
+		boot_targets = xasprintf("prt-usb %s", bootsrc);
+	else
+		boot_targets = xstrdup(bootsrc);
+
+	ret = setenv("global.boot.default", boot_targets);
+	free(boot_targets);
 	if (ret)
 		goto exit_env_init;
 
@@ -468,16 +525,9 @@ static int prt_imx6_devices_init(void)
 
 	prt_imx6_read_i2c_mac_serial(priv);
 
-	prt_imx6_env_init(priv);
+	bootentry_register_provider(prt_imx6_bootentry_provider);
 
-	if (!priv->no_usb_check) {
-		priv->wq.fn = prt_imx6_check_usb_boot_do_work;
-
-		wq_register(&priv->wq);
-
-		wq_queue_delayed_work(&priv->wq, &priv->work,
-				      priv->usb_delay * SECOND);
-	}
+	prt_imx6_env_init(priv);
 
 	return 0;
 }
-- 
2.34.1




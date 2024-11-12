Delivery-date: Tue, 12 Nov 2024 10:02:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmmt-000wzS-1y
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 10:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAmms-0003XF-UE
	for lore@pengutronix.de; Tue, 12 Nov 2024 10:02:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1NnDVHIr9Ame3L+njwbRzV5vjmIj/WcYDxeH6wsOWds=; b=iiJxcZyQEOBm9X3ixBV+KuVMBr
	qroqxCZtYnz546n2iH+ndGcptUFe0hb1erckFlz7WWiEjtGuGIn9bWIx1WZF1u1svPlGLoLgL1Tt6
	ffScgs6FfV6DnW+dseRYxIqHsa6mdgFwYbkoNOWrV1Q9mVESZWdvKXmB3p8HliEcFnX6TfcjCQCUR
	jtFRHPKB8/y4ZMM/pEiIPZb2n6Zu+4nQkDbgdtJQzl8QCZyH7SiWxCMkpmpezU8pcpoZPwHTA0rQU
	7ShHfPdVdkVWilwhnnnNuWoxAAerUsn++jKJzLJXXtGzt+r5VVsE/aLTW9PZxZP3OWdRQLqCqCNef
	hx9FTICA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmmQ-00000002k2k-24Ap;
	Tue, 12 Nov 2024 09:01:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmm7-00000002juo-3VC8
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 09:01:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmm6-000393-Iw; Tue, 12 Nov 2024 10:01:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmm6-000NjF-1F;
	Tue, 12 Nov 2024 10:01:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tAmm6-00EVUq-0x;
	Tue, 12 Nov 2024 10:01:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Nov 2024 10:01:25 +0100
Message-Id: <20241112090125.3457278-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_010127_942364_42901EE3 
X-CRM114-Status: GOOD (  12.28  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: implement environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When booting from SD/eMMC TI SoCs start from a FAT partition. mount this
partition to /boot and put the barebox environment there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 60 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 0da6f76ae4..13f3f5e169 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -3,6 +3,10 @@
 #include <io.h>
 #include <deep-probe.h>
 #include <init.h>
+#include <envfs.h>
+#include <fs.h>
+#include <xfuncs.h>
+#include <malloc.h>
 #include <pm_domain.h>
 #include <bootsource.h>
 #include <linux/bits.h>
@@ -183,3 +187,59 @@ static int am625_init(void)
 	return 0;
 }
 postcore_initcall(am625_init);
+
+#if defined(CONFIG_ENV_HANDLING)
+static int omap_env_init(void)
+{
+	char *partname, *cdevname, *envpath;
+	struct cdev *cdev;
+	const char *rootpath;
+	int instance;
+
+	if (!of_machine_is_compatible("ti,am625"))
+		return 0;
+
+	if (bootsource_get() != BOOTSOURCE_MMC)
+		return 0;
+
+	instance = bootsource_get_instance();
+
+	cdevname = xasprintf("mmc%d", instance);
+	partname = xasprintf("mmc%d.0", instance);
+
+	device_detect_by_name(cdevname);
+
+	cdev = cdev_open_by_name(partname, O_RDONLY);
+	if (!cdev) {
+		pr_err("Failed to get device %s\n", partname);
+		goto out;
+	}
+
+	rootpath = cdev_mount_default(cdev, NULL);
+
+	cdev_close(cdev);
+
+	if (IS_ERR(rootpath)) {
+		pr_err("Failed to load environment: mount %s failed (%ld)\n",
+						cdev->name, PTR_ERR(rootpath));
+		goto out;
+	}
+
+	symlink(rootpath, "/boot");
+
+	envpath = xasprintf("%s/barebox.env", rootpath);
+
+	pr_debug("Loading default env from %s on device %s\n",
+		 envpath, partname);
+
+	default_environment_path_set(envpath);
+
+	free(envpath);
+out:
+	free(partname);
+	free(cdevname);
+
+	return 0;
+}
+late_initcall(omap_env_init);
+#endif
-- 
2.39.5




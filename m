Delivery-date: Wed, 29 Jan 2025 16:32:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdA2r-005yhp-1P
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 16:32:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdA2r-0006EG-FQ
	for lore@pengutronix.de; Wed, 29 Jan 2025 16:32:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MQaWvdL3JiOe7a/GZ6BjphCZDcMNQde/ln2xIGfKmV0=; b=UEN26OmudjwQlSs9D5aCbWAu2D
	3qeBrz4R4QR2vrKjATTa1qwflMIIhdmt+izhcMffxyOoZyO+4zSn+7ZFxtY0lfr/yAnZPcxEt1xla
	lQ1yjT4KrSm/LLeds9l0zs/dLZXKMuC8QNPDqTyCiNDqRN6syY8mmjK66zaZW9GFCsR31e9N3l2bP
	l9dtfIB7E57o0Qmfdo8HOIUvIMU9Pjjc0VjybsGXU2LGep2RPxCJeDTm/R0zRm8xOMCkhEZKP7ffX
	dCWMnOglWGbIgkknb7uWVePGLWijiNDjeMirBctwEyfyfYO+QJ+C/2CVcRy69Tq49ZmFCTt2MMNsd
	iraOY2FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA2J-00000007G7T-0OLv;
	Wed, 29 Jan 2025 15:31:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA2G-00000007G4w-0ESm
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 15:31:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA2C-00067m-MZ; Wed, 29 Jan 2025 16:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA2C-002U5G-1c;
	Wed, 29 Jan 2025 16:31:20 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA2C-00EUoT-1D;
	Wed, 29 Jan 2025 16:31:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 29 Jan 2025 16:31:19 +0100
Message-Id: <20250129153119.3455028-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_073124_194785_2DD462A9 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: am625: fixup Linux device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM625 comes in variants without GPU, without PRU and with less than
4 cores. Disable the features we do not have in the Linux device tree.
The code is based on the corresponding U-Boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 50 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 766c6529bd..9ca41ac89d 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -5,6 +5,7 @@
 #include <init.h>
 #include <envfs.h>
 #include <fs.h>
+#include <stdio.h>
 #include <xfuncs.h>
 #include <malloc.h>
 #include <pm_domain.h>
@@ -161,6 +162,53 @@ void am625_get_bootsource(enum bootsource *src, int *instance)
 	k3_get_bootsource(devstat, src, instance);
 }
 
+static void of_delete_node_path(struct device_node *root, const char *path)
+{
+	struct device_node *np;
+
+	np = of_find_node_by_path_from(root, path);
+	of_delete_node(np);
+}
+
+#define CTRLMMR_WKUP_JTAG_DEVICE_ID	(AM625_WKUP_CTRL_MMR0_BASE + 0x18)
+
+#define JTAG_DEV_CORE_NR		GENMASK(21, 19)
+#define JTAG_DEV_GPU			BIT(18)
+#define JTAG_DEV_FEATURES		GENMASK(17, 13)
+#define JTAG_DEV_FEATURE_NO_PRU		0x4
+
+static int am625_of_fixup(struct device_node *root, void *unused)
+{
+	u32 full_devid = readl(CTRLMMR_WKUP_JTAG_DEVICE_ID);
+	u32 feature_mask = FIELD_GET(JTAG_DEV_FEATURES, full_devid);
+	int num_cores = FIELD_GET(JTAG_DEV_CORE_NR, full_devid);
+	bool has_gpu = full_devid & JTAG_DEV_GPU;
+	bool has_pru = !(feature_mask & JTAG_DEV_FEATURE_NO_PRU);
+	char path[32];
+	int i;
+
+        for (i = num_cores; i < 4; i++) {
+		snprintf(path, sizeof(path), "/cpus/cpu@%d", i);
+		of_delete_node_path(root, path);
+
+		snprintf(path, sizeof(path), "/cpus/cpu-map/cluster0/core%d", i);
+		of_delete_node_path(root, path);
+
+		snprintf(path, sizeof(path), "/bus@f0000/watchdog@e0%d0000", i);
+		of_delete_node_path(root, path);
+	}
+
+        if (!has_gpu) {
+		of_delete_node_path(root, "/bus@f0000/gpu@fd00000");
+		of_delete_node_path(root, "/bus@f0000/watchdog@e0f0000");
+	}
+
+	if (!has_pru)
+		of_delete_node_path(root, "/bus@f0000/pruss@30040000");
+
+	return 0;
+}
+
 static int am625_init(void)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
@@ -181,6 +229,8 @@ static int am625_init(void)
 
 	genpd_activate();
 
+	of_register_fixup(am625_of_fixup, NULL);
+
 	return 0;
 }
 postcore_initcall(am625_init);
-- 
2.39.5




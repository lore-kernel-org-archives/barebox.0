Delivery-date: Tue, 05 Mar 2024 11:34:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhS8M-009bvU-0d
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 11:34:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhS8J-0004b1-4r
	for lore@pengutronix.de; Tue, 05 Mar 2024 11:34:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=okUdir6zF48T3NdzEuR1I4ywnlLQV1NXDZovSRv/VOE=; b=T+1YKNahT5KoBgfeo0iGLyDhQM
	tAAKpeEFltBXkfGu+xZPsslJxhDOv1/smJf9RclVt6/Nc3pxp2QVFIgKs/uRpQ5LTyTM1gVwdPlVe
	IaGpgcdb5h2LeDGjs+RKA8UooZeqd4vn/IT17kBhAVSkpemttFFUsuY4zAxGoGLsyMLfqngBydgmX
	ujeXD6WFE6RWfbU7/J3uyRf3xp9LOiFBcZhDU0ccpPUSADNpmNlD/VIMcFnLzpnmtzPqfXXQCl2le
	w3O5VytnZGPICCUJzC/1km1Oddizx+gVYA8NitMl5k2bgzfVQKMiHuV2JG0kvYtbEzkAybLJFclUy
	8MYJGCYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhS7F-0000000D5Eq-3BDu;
	Tue, 05 Mar 2024 10:33:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhS7B-0000000D5C4-47kd
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 10:33:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhS78-0004CQ-QK; Tue, 05 Mar 2024 11:33:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhS78-004X3I-7B; Tue, 05 Mar 2024 11:33:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhS77-009Uet-1q;
	Tue, 05 Mar 2024 11:33:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>,
	Denis Osterland-Heim <denis.osterland@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Mar 2024 11:32:41 +0100
Message-Id: <20240305103241.2257742-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_023342_081772_09486FA8 
X-CRM114-Status: GOOD (  19.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: rpi: fix regression booting without VideoCore DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Raspberry Pi firmware running prior to barebox can load a kernel
directly and thus can boot barebox-dt-2nd.img straight without having to
use the Raspberry Pi images.

However, the Raspberry Pi specific PBL entry points, store the VideoCore
DT into a handover area for earlier extraction of fixups done by the
VideoCore firmware. This doesn't happen with barebox-dt-2nd.img.

Commit 5ea6e19737e1 ("raspi: support to read vc values via dt-2nd boot")
worked around this by using the barebox-internal DT, when a VideoCore DT
wasn't saved, but this in turn added a slew of warnings to the valid setup
of having no VideoCore DT at all and just using a proper Raspberry Pi
PBL with their embedded DTs:

    WARNING: no property 'serial-number' found in vc fdt's '' node
    no '/system' node found in vc fdt
    no '/axi' node found in vc fdt
    no '/hat' node found in vc fdt
    no '/chosen/bootloader' node found in vc fdt
    WARNING: no property 'bootargs' found in vc fdt's '/chosen' node
    WARNING: no property 'overlay_prefix' found in vc fdt's '/chosen' node
    WARNING: no property 'os_prefix' found in vc fdt's '/chosen' node
    WARNING: 'pm_rsts' value not found in vc fdt
    ERROR: Won't delete root device node

Fix this by not calling rpi_vc_fdt_parse on the barebox DT if a previous
Raspberry Pi PBL has written VIDEOCORE_FDT_ERROR into the handoff area
to indicate a missing VideoCore DT.

Fixes: 5ea6e19737e1 ("raspi: support to read vc values via dt-2nd boot")
Reported-by: Roland Hieber <rhi@pengutronix.de>
Cc: Denis Osterland-Heim <denis.osterland@gmail.com>
Link: https://lore.barebox.org/barebox/20240219191400.do7ib5rxy7tupv4i@pengutronix.de/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 43 +++++++++++++++++------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 1dfd0b0a10f4..7c82c740e256 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -332,7 +332,7 @@ static void rpi_vc_fdt_parse(struct device_node *root)
 	chosen = register_vc_fixup(root, "/chosen");
 	if (!chosen) {
 		pr_err("no '/chosen' node found in vc fdt\n");
-		goto out;
+		return;
 	}
 
 	bootloader = of_find_node_by_name(chosen, "bootloader");
@@ -385,13 +385,20 @@ static void rpi_vc_fdt_parse(struct device_node *root)
 
 		of_add_memory(memory, false);
 	}
-
-out:
-	if (root)
-		of_delete_node(root);
-	return;
 }
 
+/**
+ * rpi_vc_fdt - unflatten VideoCore provided DT
+ *
+ * If configured via config.txt, the VideoCore firmware will pass barebox PBL
+ * a device-tree in a register. This is saved to a handover memory area by
+ * the Raspberry Pi PBL, which is parsed here. barebox-dt-2nd doesn't
+ * populate this area, instead it uses the VideoCore DT as its own DT.
+ *
+ * Return: an unflattened DT on success, an error pointer if parsing the DT
+ * fails and NULL if a Raspberry Pi PBL has run, but no VideoCore FDT was
+ * saved.
+ */
 static struct device_node *rpi_vc_fdt(void)
 {
 	void *saved_vc_fdt;
@@ -408,7 +415,7 @@ static struct device_node *rpi_vc_fdt(void)
 		if (oftree->totalsize)
 			pr_err("there was an error copying fdt in pbl: %d\n",
 					be32_to_cpu(oftree->totalsize));
-		return ERR_PTR(-EINVAL);
+		return NULL;
 	}
 
 	if (magic != FDT_MAGIC)
@@ -481,7 +488,7 @@ static int rpi_devices_probe(struct device *dev)
 	const struct rpi_machine_data *dcfg;
 	struct regulator *reg;
 	struct rpi_priv *priv;
-	struct device_node *root;
+	struct device_node *vc_root;
 	const char *name, *ptr;
 	char *hostname;
 	int ret;
@@ -510,8 +517,24 @@ static int rpi_devices_probe(struct device *dev)
 	bcm2835_register_fb();
 	armlinux_set_architecture(MACH_TYPE_BCM2708);
 	rpi_env_init();
-	root = rpi_vc_fdt();
-	rpi_vc_fdt_parse(IS_ERR(root) ? priv->dev->device_node : root);
+
+	vc_root = rpi_vc_fdt();
+	if (!vc_root) {
+		dev_dbg(dev, "No VideoCore FDT was provided\n");
+	} else if (!IS_ERR(vc_root)) {
+		dev_dbg(dev, "VideoCore FDT was provided\n");
+		rpi_vc_fdt_parse(vc_root);
+		of_delete_node(vc_root);
+	} else if (IS_ERR(vc_root)) {
+		/* This is intentionally at a higher logging level, because we can't
+		 * be sure that the external DT is indeed a barebox DT (and not a
+		 * kernel DT that happened to be in the partition). So for ease
+		 * of debugging, we report this at info log level.
+		 */
+		dev_info(dev, "barebox FDT will be used for VideoCore FDT\n");
+		rpi_vc_fdt_parse(priv->dev->device_node);
+	}
+
 	rpi_set_kernel_name();
 
 	if (dcfg && dcfg->init)
-- 
2.39.2




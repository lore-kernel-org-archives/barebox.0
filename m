Delivery-date: Wed, 10 Jan 2024 14:17:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNYSo-00BeqW-2p
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 14:17:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNYSo-00044s-48
	for lore@pengutronix.de; Wed, 10 Jan 2024 14:17:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NFcp/QSZW/eVYmbE6McMc0Aa/BzfKfo829hTsh1HjJY=; b=JHuo1vdNd/9oxqjWVpSSTXksi+
	ypzUECXPO+EwNgsPJln/tn8kVEovbHVwwbE4w+XeW1JfbNksEgP/rgSMiro1IobPXv+g1ytlrCnNm
	ScwqacALoFmqCZfYdPrboX3t1rnrenRdZjTw8TRzroBFAf+Rt70p6xCgOLggjWd9GVNJ9qjkQMh1a
	kL3STIF1shBzd8DWY8g3V2rf66VXrcldDHxKJGWgnQot+SOAhK+7Zbv1FBqbJ4iZClsmGzNkX6qR7
	dPX2WpUcAyTrt1rUbl+FqP0IB/nfDrF9cvTcwvbFUvqueNLdGd2pe7YplQA+psc2bOWIHkaDnGCCy
	mo2Kn6AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNYRF-00Bv1D-2q;
	Wed, 10 Jan 2024 13:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNYRB-00Buyh-0K
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 13:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNYR5-0003mE-Ha; Wed, 10 Jan 2024 14:15:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNYR5-001iFj-53; Wed, 10 Jan 2024 14:15:59 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNYR5-005PkX-0A;
	Wed, 10 Jan 2024 14:15:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Jan 2024 14:15:57 +0100
Message-Id: <20240110131557.1289602-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_051605_156230_75D9DC66 
X-CRM114-Status: GOOD (  20.48  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: nand: denali: Make partition binding configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The binding for the denali NAND driver changed over time. Originally the
partitions were placed directly under the controller node. Nowadays
there is an additional chip node between the controller node and the
partitions. So what originally was:

nand: nand@ff900000 {
	compatible = "altr,socfpga-denali-nand";
	partitions {
		...
	};
};

has now become:

nand: nand@ff900000 {
	compatible = "altr,socfpga-denali-nand";
	nand@0 {
		partitions {
			...
		};
	};
};

The new binding has been introduced with Linux-5.2 and after a grace
period it has been made mandatory in Linux-5.5. We want however to be
able to start old Kernels supporting only the old binding as well, so
make the binding we fix up the kernel device tree with configurable.

This introduces the globalvar nandx.denali_partition_binding with three
different settings:

chip: Fixup the Kernel device tree according to the new binding. This is
      the default
controller: Fixup the Kernel device tree according to the old binding
auto: When the Kernel device tree has a "nand@0" node then use the new
      binding, otherwise use the old binding.

The previous (only) implemented default before this patch was "auto".
This deliberately is changed with this patch as Kernels older than
Linux-5.2 are quite old already and likely contains the least surprises
for the user.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_denali_dt.c | 67 ++++++++++++++++++++++++++-----
 1 file changed, 56 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index cf902fe6c4..d21cdc9756 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -14,6 +14,7 @@
 #include <io.h>
 #include <of_mtd.h>
 #include <errno.h>
+#include <globalvar.h>
 
 #include <linux/clk.h>
 #include <linux/spinlock.h>
@@ -43,6 +44,18 @@ static const struct denali_dt_data denali_socfpga_data = {
 	.ecc_caps = &denali_socfpga_ecc_caps,
 };
 
+enum of_binding_name {
+	DENALI_OF_BINDING_CHIP,
+	DENALI_OF_BINDING_CONTROLLER,
+	DENALI_OF_BINDING_AUTO,
+};
+
+static const char *denali_of_binding_names[] = {
+	"chip", "controller", "auto"
+};
+
+static int denali_of_binding;
+
 /*
  * Older versions of the kernel driver require the partition nodes
  * to be direct subnodes of the controller node. Starting with Kernel
@@ -70,26 +83,50 @@ static int denali_partition_fixup(struct mtd_info *mtd, struct device_node *root
 							struct denali_controller,
 							controller);
 	struct device_node *np, *mtdnp = mtd_get_of_node(mtd);
+	struct device_node *chip_np, *controller_np;
 	char *name;
 
 	name = of_get_reproducible_name(mtdnp);
-	np = of_find_node_by_reproducible_name(root, name);
+	chip_np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 
-	if (np) {
-		dev_info(denali->dev, "Fixing up chip node %pOF\n", np);
-	} else {
-		name = of_get_reproducible_name(mtdnp->parent);
-		np = of_find_node_by_reproducible_name(root, name);
-		free(name);
+	name = of_get_reproducible_name(mtdnp->parent);
+	controller_np = of_find_node_by_reproducible_name(root, name);
+	free(name);
 
-		if (np)
-			dev_info(denali->dev, "Fixing up controller node %pOF\n", np);
-	}
+	if (!controller_np)
+		return -EINVAL;
+
+	switch (denali_of_binding) {
+	case DENALI_OF_BINDING_CHIP:
+		if (chip_np) {
+			np = chip_np;
+		} else {
+			np = of_new_node(controller_np, mtdnp->name);
+			of_property_write_u32(np, "reg", 0);
+			chip_np = np;
+		}
+		break;
+	case DENALI_OF_BINDING_CONTROLLER:
+		np = controller_np;
+		break;
+	case DENALI_OF_BINDING_AUTO:
+	default:
+		np = chip_np ? chip_np : controller_np;
+		break;
+	};
 
 	if (!np)
 		return -EINVAL;
 
+	dev_info(denali->dev, "Fixing up %s node %pOF\n",
+		 chip_np ? "chip" : "controller", np);
+
+	if (!chip_np) {
+		of_property_write_bool(np, "#size-cells", false);
+		of_property_write_bool(np, "#address-cells", false);
+	}
+
 	return of_fixup_partitions(np, &mtd->cdev);
 }
 
@@ -123,7 +160,15 @@ static int denali_dt_chip_init(struct denali_controller *denali,
 		nand_set_flash_node(&dchip->chip, chip_np);
 	}
 
-	return denali_chip_init(denali, dchip);
+	ret = denali_chip_init(denali, dchip);
+	if (ret)
+		return ret;
+
+	dev_add_param_enum(&dchip->chip.base.mtd.dev, "denali_partition_binding",
+			   NULL, NULL,  &denali_of_binding, denali_of_binding_names,
+			   ARRAY_SIZE(denali_of_binding_names), NULL);
+
+	return 0;
 }
 
 static int denali_dt_probe(struct device *ofdev)
-- 
2.39.2




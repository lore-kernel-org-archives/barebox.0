Delivery-date: Mon, 17 Feb 2025 19:23:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m6-003aPx-1E
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m2-0003W1-RR
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cG1GE7YB5o4F72n/VpylZ/saXS4EgoPa7PPR9aM7yKk=; b=wFEZn0ONzGt3ZbzCPwZudaMe2P
	HWMxYAcV4vhLDWdkA3oFuK8dKrZx9xaTZ2LUN1AisM7A86sYL3gwU/LWd9ftsN3C3rmGEhQbRxA26
	YFOAqtHgxN06ewUzOeeRGzPY/05LbvUHRWrxanpE7RjYPqbkP3m3CYKNSkcUqh7EHppKS9vOTjVey
	i/zXXT+GCzJC62RojPYcCyYFLgNmswL3VHiem1SLneTAYz/ycOw/4ozIOaXLo4HXPYBkQRly8pTFp
	X+bcLItyXWjp49pYQTNfYgbb2uoGXuiKSdkqRlqWDUMzT7cf+iMABjcGpLcMUVeplsx2RWxbBCCt3
	bj72seBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lN-00000005adF-09YO;
	Mon, 17 Feb 2025 18:22:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xt-00000005Yys-0xmS
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:08:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=cG1GE7YB5o4F72n/VpylZ/saXS4EgoPa7PPR9aM7yKk=; b=IDmgtFHWcvcm+ZpcetMw6I0pwM
	N2IdRbaAPy1L7vBfJdlWDRQjPpRwHsbeuaBnHH2gcgU8AZCD9wmSy1hddP06kFVkCw+KwVAYZt3Qn
	kCTY0HjqPz5Ryu8QHINz0xnAwW8fVI1Ik78zX1FPpOA3HYXoLBgmdD6brr7rV1rSZ9K92p/+fxzjH
	Y6w0aaCW5y7fhbjJfIeRwSIRaaVyH599/hDjbs0CNHtkMP9g7psak7Kx/0aDp0t75LIyxfshMqc3V
	jfq2RHUKbJvC5eHcYG4TYXydSZ2fHtUZE+NMOToKP4/jerzo9uTPqpE4F4ax42ZBoSGO+CLRM+OoS
	gw14yq1Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xp-00000001rin-02RL
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011X-FD; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7o-0q;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00Gc9q-0Y;
	Mon, 17 Feb 2025 19:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:33 +0100
Message-Id: <20250217180833.3955657-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180837_184620_62ADA415 
X-CRM114-Status: GOOD (  20.90  )
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
Subject: [PATCH 6/6] of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux supports OF partitions for MMC since Linux v6.13-rc1 with commit
2e3a191e89f9 ("block: add support for partition table defined in OF"),
but in a manner incompatible to barebox:

If CONFIG_OF_PARTITION is enabled and a fixed-partitions node exists,
the EFI/MBR partition table is completely ignored.
In barebox, they are allowed to coexist, as long as they don't conflict.

To resolve this conflict, we change the default fixup scheme to an
"adaptive" scheme that uses new-style fixups, but with the compatible
depending on the parent device:

  - If the partitions node in the kernel DT already has a compatible,
    use the same compatible as not to clobber new Linux OF partitions,
    which would be parsed by CONFIG_OF_PARTITION
  - If the device is an MTD device, use "fixed-partitions", so Linux
    sees the same partitions and to maintain backwards compatibility
  - For everything else (i.e. EEPROMs and SD/eMMC), use
    "barebox,fixed-partitions"

This scheme is fully backwards-compatible with older kernels and
userspace:

  - barebox,fixed-partitions replaces fixed-partitions only
    for nodes that Linux didn't parse before anyway

  - fixed-partitions will continue to be emitted for MTD,
    which Linux did parse before

  - barebox-state doesn't actually look for the "fixed-partitions"
    compatible to find out if a patition is in a container.
    Instead it checks the parent node name to be equal
    to "partitions"...

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../devicetree/bindings/mtd/partition.rst     | 27 +++++++++++++++++--
 drivers/of/partition.c                        | 22 +++++++++++----
 2 files changed, 42 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/partition.rst b/Documentation/devicetree/bindings/mtd/partition.rst
index fb228c63a344..33b8a207f177 100644
--- a/Documentation/devicetree/bindings/mtd/partition.rst
+++ b/Documentation/devicetree/bindings/mtd/partition.rst
@@ -3,9 +3,16 @@
 Representing flash partitions in devicetree
 ===========================================
 
-In addition to the upstream binding, another property is added:
+In addition to the upstream binding, barebox supports parsing OF partitions
+for EEPROMs and for SD/MMC as well. SD/MMC OF partitions in barebox are
+allowed to co-exist with GPT/MBR partitions as long as they don't overlap.
 
-Optional properties:
+This is different from the Linux behavior where OF partitions have precedence
+over GPT/MBR. For this reason, barebox also accepts the compatible
+``barebox,fixed-partitions``, which is handled inside barebox identically to
+``fixed-partitions``, but is ignored by Linux.
+
+Additionally, barebox supports an extra optional property:
 
 * ``partuuid``: The global partition UUID for this partition.
   For GPT partitions, the partuuid is the 16-byte GPT Partition UUID (e.g.
@@ -26,6 +33,9 @@ the partition table node is named appropriately:
 ``boot0-partitions`` and ``boot1-partitions`` are deprecated. Use ``partitions-boot1``
 and ``partitions-boot2`` instead which is supported under Linux as well.
 
+In addition to the upstream ``fixed-partitions`` compatible binding,
+barebox also supports a ``barebox,fixed-partitions`` binding.
+
 Examples:
 
 .. code-block:: none
@@ -54,3 +64,16 @@ Examples:
   		};
   	};
   };
+
+  sd {
+  	partitions {
+  		compatible = "barebox,fixed-partitions";
+  		#address-cells = <1>;
+  		#size-cells = <1>;
+
+  		barebox-env@1000 {
+  			label = "barebox-environment";
+  			reg = <0x1000 0x20000>;
+  		};
+  	};
+  };
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index fa4847e20a2b..a0890bfcdef0 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -16,8 +16,6 @@
 #include <init.h>
 #include <globalvar.h>
 
-static unsigned int of_partition_binding;
-
 /**
  * enum of_binding_name - Name of binding to use for OF partition fixup
  * @MTD_OF_BINDING_NEW:		Fix up new-style partition bindings
@@ -25,13 +23,20 @@ static unsigned int of_partition_binding;
  * @MTD_OF_BINDING_LEGACY:	Fix up legacy partition bindings
  *				directly into the parent node without container
  * @MTD_OF_BINDING_DONTTOUCH:	Don't touch partition nodes at all - no fixups
+ * @MTD_OF_BINDING_ADAPTIVE:	Do a new-style fixup with compatible being either:
+ *				- the same compatible as in the kernel DT if available
+ *				- "fixed-partitions" for MTD
+ *				- "barebox,fixed-partitions" otherwise
  */
 enum of_binding_name {
 	MTD_OF_BINDING_NEW,
 	MTD_OF_BINDING_LEGACY,
 	MTD_OF_BINDING_DONTTOUCH,
+	MTD_OF_BINDING_ADAPTIVE,
 };
 
+static unsigned int of_partition_binding = MTD_OF_BINDING_ADAPTIVE;
+
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 {
 	struct devfs_partition partinfo = {};
@@ -172,6 +177,7 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 {
 	struct cdev *partcdev;
 	struct device_node *part, *partnode;
+	const char *compat = "fixed-partitions";
 	int ret;
 	int n_cells, n_parts = 0;
 
@@ -199,10 +205,16 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		of_delete_node(partnode);
 		partnode = np;
 		break;
+	case MTD_OF_BINDING_ADAPTIVE:
+		/* If there's already a compatible property, leave it as-is */
+		if (of_property_present(partnode, "compatible"))
+			break;
+		if (!cdev->mtd)
+			compat = "barebox,fixed-partitions";
+		fallthrough;
 	case MTD_OF_BINDING_NEW:
 		partnode = partnode ?: of_new_node(np, "partitions");
-		ret = of_property_write_string(partnode, "compatible",
-					       "fixed-partitions");
+		ret = of_property_write_string(partnode, "compatible", compat);
 		if (ret)
 			return ret;
 		break;
@@ -302,7 +314,7 @@ int of_partitions_register_fixup(struct cdev *cdev)
 }
 
 static const char *of_binding_names[] = {
-	"new", "legacy", "donttouch"
+	"new", "legacy", "donttouch", "adaptive"
 };
 
 static int of_partition_init(void)
-- 
2.39.5




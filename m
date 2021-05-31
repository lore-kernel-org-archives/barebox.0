Delivery-date: Mon, 31 May 2021 09:14:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7t-0002uI-AY
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7r-0003fw-Js
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MvmtVJuqUd2LO5BFHHfbMTtsH1AcZy865dhZ1ujkio=; b=ER+YxhhOJef+go
	82xmRfnkMFc+5wxMnz7BgwcoBTH1EDQzSyag2q95I27I1toDXCqTNoWzweoNWnQKD5ntbYcEz2lZr
	4lBlnNDFWzLVa59ihGnyX6XZBg6I437BAiKv9yAQGrfTjClxTbtpTe8rGv2Q1X8FydqQc0FITXrgR
	YNOYboEqc0qtUERfgjHWk8UtXtfZIamePQTyabjnQcDxahIL5vMyN822h07bXp0Ib/xCTUrJPNohN
	+vsUiQtzhIbkDRhNvTa53CZ+dRRs5HKItBVABeE/HkfQAHjTcG36/MH3kO7Gf0+yno2sSM/GrtOwF
	ZRyljxtfqwPoLWG5pgNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6f-00B7ep-5Y; Mon, 31 May 2021 07:13:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6M-00B7Xw-5X
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Ds-Tr; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-000804-Di; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:12:37 +0200
Message-Id: <20210531071239.30653-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531071239.30653-1-a.fatoum@pengutronix.de>
References: <20210531071239.30653-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001242_298123_8936E27B 
X-CRM114-Status: GOOD (  17.72  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] of: warn about of_add_memory_bank errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that errors from of_probe are propagated to the respective initcalls
registering the device tree, propagate of_add_memory_bank errors as
well. This ensures that clashes of device-tree added regions with
previous ones don't go unnoticed. This can e.g. be the case if a device
tree happens to have both /memory@X { }; and /memory { }; nodes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/boot/dtb.c     |  9 ++++++---
 drivers/of/base.c        | 24 ++++++++++++++++++------
 drivers/of/mem_generic.c |  5 +++--
 include/of.h             |  2 +-
 4 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index dbb6315d1f05..ece1494e5fdf 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -14,21 +14,24 @@
 void *glob_fdt;
 u32 glob_fdt_size;
 
-void of_add_memory_bank(struct device_node *node, bool dump, int r,
+int of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size)
 {
 	static char str[12];
+	int ret;
 
 	if (IS_ENABLED(CONFIG_MMU)) {
 		sprintf(str, "kseg0_ram%d", r);
-		barebox_add_memory_bank(str, CKSEG0 | base, size);
+		ret = barebox_add_memory_bank(str, CKSEG0 | base, size);
 	} else {
 		sprintf(str, "kseg1_ram%d", r);
-		barebox_add_memory_bank(str, CKSEG1 | base, size);
+		ret = barebox_add_memory_bank(str, CKSEG1 | base, size);
 	}
 
 	if (dump)
 		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+
+	return ret;
 }
 
 extern char __dtb_start[];
diff --git a/drivers/of/base.c b/drivers/of/base.c
index b99201a50fd5..17f58dba233e 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2248,6 +2248,7 @@ int of_add_memory(struct device_node *node, bool dump)
 		return -ENXIO;
 
 	while (!of_address_to_resource(node, n, &res)) {
+		int err;
 		n++;
 		if (!resource_size(&res))
 			continue;
@@ -2255,12 +2256,15 @@ int of_add_memory(struct device_node *node, bool dump)
 		if (!of_device_is_available(node))
 			continue;
 
-		of_add_memory_bank(node, dump, mem_bank_num,
+		err = of_add_memory_bank(node, dump, mem_bank_num,
 				res.start, resource_size(&res));
+		if (err)
+			ret = err;
+
 		mem_bank_num++;
 	}
 
-	return 0;
+	return ret;
 }
 
 static struct device_node *of_chosen;
@@ -2283,18 +2287,25 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
-static void of_probe_memory(void)
+static int of_probe_memory(void)
 {
 	struct device_node *memory = root_node;
+	int ret = 0;
 
 	/* Parse all available node with "memory" device_type */
 	while (1) {
+		int err;
+
 		memory = of_find_node_by_type(memory, "memory");
 		if (!memory)
 			break;
 
-		of_add_memory(memory, false);
+		err = of_add_memory(memory, false);
+		if (err)
+			ret = err;
 	}
+
+	return ret;
 }
 
 static void of_platform_device_create_root(struct device_node *np)
@@ -2315,6 +2326,7 @@ static void of_platform_device_create_root(struct device_node *np)
 int of_probe(void)
 {
 	struct device_node *firmware;
+	int ret;
 
 	if(!root_node)
 		return -ENODEV;
@@ -2325,7 +2337,7 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	of_probe_memory();
+	ret = of_probe_memory();
 
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
@@ -2336,7 +2348,7 @@ int of_probe(void)
 	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
-	return 0;
+	return ret;
 }
 
 /**
diff --git a/drivers/of/mem_generic.c b/drivers/of/mem_generic.c
index 9094243c0400..55d93bcb06a8 100644
--- a/drivers/of/mem_generic.c
+++ b/drivers/of/mem_generic.c
@@ -2,14 +2,15 @@
 #include <of.h>
 #include <memory.h>
 
-void of_add_memory_bank(struct device_node *node, bool dump, int r,
+int of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size)
 {
 	static char str[6];
 
 	sprintf(str, "ram%d", r);
-	barebox_add_memory_bank(str, base, size);
 
 	if (dump)
 		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
+
+	return barebox_add_memory_bank(str, base, size);
 }
diff --git a/include/of.h b/include/of.h
index 66d1edcc5c0d..c8ebf4009921 100644
--- a/include/of.h
+++ b/include/of.h
@@ -283,7 +283,7 @@ int of_device_is_stdout_path(struct device_d *dev);
 const char *of_get_model(void);
 void *of_flatten_dtb(struct device_node *node);
 int of_add_memory(struct device_node *node, bool dump);
-void of_add_memory_bank(struct device_node *node, bool dump, int r,
+int of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size);
 struct device_d *of_find_device_by_node_path(const char *path);
 #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


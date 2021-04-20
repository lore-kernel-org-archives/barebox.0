Delivery-date: Tue, 20 Apr 2021 10:06:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP7-0008G1-HK
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP6-0004II-Ce
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RA4RY0uoOYlRU77a2/gf6ZZEY8Z2C0FyYeX/Fodn63o=; b=bvUbGH+CLfbTJm4SAd7NB41kh
	EFxu1fLNJ6dF0N/DHxKhHSxeu87sPT8+rNTeb7trGVY7v9ISncbjFalndtJgKBR2vQllx6dKk+Cgr
	EnZvWa1h2Xvgd07g4gdE1FMUsvgVynNmsnuZb2fLidXnlN+yq3+MAHp38dMgq1QM5uZ6sup0qS/2r
	2nUqyUdychQQHramuWdzFuzeP2by/bd0Bjm2HjQQyKtAtt8t4TbYprRkYqtbFBL32h389ZGOaQ3nO
	Usi3jA8W2wdM+1NtWr2IbIB52wj0TXH33WBFa73Qg/rWDMNW5Z2JzzJS0BY2nn2/AV286M+ircZ6z
	bwj8SPK8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlOA-00BX1m-Kh; Tue, 20 Apr 2021 08:05:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNk-00BWuW-QH
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wGkLj+Bq7aUjwzAzWXWKM5gvVs0NpTA9S8DpT+jM2NI=; b=oUPlokdHfcR2Lqc0jA8IMZPXJq
 d4K3QRYfGgsvZw76XxpR9n70p0Dg5Qw7tHBJBHhhf6mLzJ37/x8g2TyeSHF7UylDdBGxPjw6g6wm5
 /CNFeE8ZY8oTN7dlAruVqkO5dTmz808d8nWH6bt26JudaVsqMCJTHLgU2Lc8pkq/aeqa8fjt6vBHa
 fSKxy2wH3RwTIOB+sNxDF9XdyIz7pT1RWvyHQEpYg/o8M+ehH4QqhuqMYxeN9YizKP+AEGOJhhYSR
 3kmXDinua1RP0Jh49/whdj4tHXZyTRU4g/ur+R4DK8MUnfvgKRvmSPt7DTqlSWZwlfvIo7oN8LHdO
 zi95jUyg==;
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNh-00Bu0Y-1T
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:15 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id BB81E116A73; Tue, 20 Apr 2021 09:57:21 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id B9F33116A65;
 Tue, 20 Apr 2021 09:57:17 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:58 +0200
Message-Id: <20210420075700.246124-5-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010513_242441_1CF73055 
X-CRM114-Status: GOOD (  15.62  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] of: add reserved_mem_read initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a reserved_mem_read initcall which parses the reserved-memory
entries and adds barebox of reserve entries. Also remove the OP-TEE size
of reserve entry, since this is now parsed from the DT and does not need
to be statically configured any longer.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/start.c      |  3 ---
 drivers/of/Makefile       |  1 +
 drivers/of/reserved-mem.c | 41 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+), 3 deletions(-)
 create mode 100644 drivers/of/reserved-mem.c

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 10ac070fe3..811de056c0 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -226,9 +226,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
-		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1, OF_RESERVE_ENTRY_FLAG_XN);
-
 	pr_debug("starting barebox...\n");
 
 	start_barebox();
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index b6847752d2..749fe16a2a 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
+obj-y += reserved-mem.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
 obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
new file mode 100644
index 0000000000..ee15ae880c
--- /dev/null
+++ b/drivers/of/reserved-mem.c
@@ -0,0 +1,41 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <of_address.h>
+#include <malloc.h>
+#include <partition.h>
+
+static int reserved_mem_read(void)
+{
+	struct device_node *node, *child;
+	struct resource resource;
+	int flag;
+
+	node = of_get_root_node();
+	if (!node)
+		return 0;
+
+	node = of_find_node_by_path("/reserved-memory");
+	if (!node)
+		return 0;
+
+	for_each_child_of_node(node, child) {
+		flag = OF_RESERVE_ENTRY_FLAG_NO_RESERVE;
+
+		of_address_to_resource(child, 0, &resource);
+
+		pr_err("Res-Mem start: 0x%08x\n", resource.start);
+		pr_err("Res-Mem end: 0x%08x\n", resource.end);
+
+		if(of_find_property(child, "no-map", 0)) {
+			pr_err("Res-Mem: no-map\n");
+			flag |= OF_RESERVE_ENTRY_FLAG_XN;
+		}
+
+		of_add_reserve_entry(resource.start, resource.end, flag);
+	}
+
+	return 0;
+}
+postconsole_initcall(reserved_mem_read);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Thu, 19 Dec 2024 12:16:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWD-00A0zZ-09
	for lore@lore.pengutronix.de;
	Thu, 19 Dec 2024 12:16:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWC-0001sL-UG
	for lore@pengutronix.de; Thu, 19 Dec 2024 12:16:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4xoC2QvL2c9nOk1t0gFwKjC/Acv4C9+edU59aLDBLLI=; b=G9xKlhhlAzhks6OR2+r/JrbZEH
	2cUZMPH+YDn7dPzliC0zCMhQCNMHNVL2Ql8BpsqSOmiP4w0WzQk86ntZcQwQzgMLj87OpGLayert3
	M2eqVqeaOd6EjdjdYYwiKLE60JYOJPMxGaUg4IZ3WKeIteDRT5w5BzuJVI62mJcy57EorDbwmU8C4
	8le9UbzeszwovZpf0FCvthGVjBdhaLPnh4hcMtmmlsOH3BevAj4VJmYwe9JNO85g/0hDD66zmBJFJ
	H4je/s4yzmorIElm1OXEeVpH87dAoYk4EO7FCjWcQfm7p9GedDbJZyzU/RXu/gL5hjD5FCDMTwAeO
	exgoTW3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVn-00000001dPv-0fMU;
	Thu, 19 Dec 2024 11:16:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVh-00000001dNR-3Ob2
	for barebox@lists.infradead.org;
	Thu, 19 Dec 2024 11:16:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-0001dg-Cp; Thu, 19 Dec 2024 12:16:04 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVf-004CBA-1P;
	Thu, 19 Dec 2024 12:16:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-004HTI-0N;
	Thu, 19 Dec 2024 12:16:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 19 Dec 2024 12:16:02 +0100
Message-Id: <20241219111603.1020442-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
References: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_031605_844258_BAFA4F74 
X-CRM114-Status: GOOD (  15.83  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] of: fdt: rename /memreserve special node to /$memreserve
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

/memreserve in the barebox device tree is a special node used to hold
the reserved memory entries in the FDT until the DT is unflattened
again.

To avoid conflicts with an actual device tree node called /memreserve,
let's prefix with '$', the character newly chosen to mark
barebox-specific nodes and properties.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c          | 14 ++++++--------
 drivers/of/reserved-mem.c |  2 +-
 2 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 6f10094143cd..6c554af61f6f 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -92,7 +92,7 @@ static int of_reservemap_num_entries(const struct fdt_header *fdt)
  * @fdt - the flattened device tree blob
  *
  * This stores the memreserve entries from the dtb in a newly created
- * /memserve node in the unflattened device tree. The device tree
+ * /$memreserve node in the unflattened device tree. The device tree
  * flatten code moves the entries back to the /memreserve/ area in the
  * flattened tree.
  *
@@ -109,7 +109,7 @@ static int of_unflatten_reservemap(struct device_node *root,
 	if (n <= 0)
 		return n;
 
-	memreserve = of_new_node(root, "memreserve");
+	memreserve = of_new_node(root, "$memreserve");
 	if (!memreserve)
 		return -ENOMEM;
 
@@ -462,7 +462,7 @@ static inline int dt_add_string(struct fdt *fdt, const char *str)
 	return ret;
 }
 
-static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node, int is_root)
+static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node)
 {
 	struct property *p;
 	struct device_node *n;
@@ -500,10 +500,8 @@ static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node, int is_ro
 	list_for_each_entry(n, &node->children, parent_list) {
 		if (is_reserved_name(n->name))
 			continue;
-		if (is_root && !strcmp(n->name, "memreserve"))
-			continue;
 
-		ret = __of_flatten_dtb(fdt, n, 0);
+		ret = __of_flatten_dtb(fdt, n);
 		if (ret)
 			return ret;
 	}
@@ -553,11 +551,11 @@ void *of_flatten_dtb(struct device_node *node)
 
 	fdt.dt_nextofs = ofs;
 
-	ret = __of_flatten_dtb(&fdt, node, 1);
+	ret = __of_flatten_dtb(&fdt, node);
 	if (ret)
 		goto out_free;
 
-	memreserve = of_find_node_by_name_address(node, "memreserve");
+	memreserve = of_find_node_by_name_address(node, "$memreserve");
 	if (memreserve) {
 		const void *entries = of_get_property(memreserve, "reg", &len);
 
diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
index 599a7c968afd..b278026617ac 100644
--- a/drivers/of/reserved-mem.c
+++ b/drivers/of/reserved-mem.c
@@ -52,7 +52,7 @@ static int of_reserved_mem_walk(void)
 		}
 	}
 
-	node = of_find_node_by_path("/memreserve");
+	node = of_find_node_by_path("/$memreserve");
 	reg = of_get_property(node, "reg", &ncells);
 	ncells /= sizeof(__be32);
 	if (reg) {
-- 
2.39.5




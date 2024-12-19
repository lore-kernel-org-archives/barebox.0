Delivery-date: Thu, 19 Dec 2024 12:16:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWD-00A0zw-1M
	for lore@lore.pengutronix.de;
	Thu, 19 Dec 2024 12:16:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOEWD-0001sW-8z
	for lore@pengutronix.de; Thu, 19 Dec 2024 12:16:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x292JkNFZnS2KvonQqyfof5PXhS8fUPgMMjBSiLzNv0=; b=rg9bk4RpvN8CS7ake47cAEgPAF
	S5MZISlO5yEg/pPKeFX6RTTAu1SFWVCbMwGADXjZ30mC8OjDXBualhFhwrzs3bs4n8UsM198rCxmK
	s/Z0zZTCy0KEX3vvYFuVsvUshivKKF8clV19ernoqoV1k3TZrn/hSmXxC0HCdXis3Wu0irY3Zd4O7
	ryTU1heG6q/YL8Y2G1AAVd7pHlDDmI9cKdk0ILILy7b2dMuvX7IHWChAOrgzLgA+37G6KWmdvTrtT
	iPRK3rjh8SMOxjSjb9PdKJE/Rk/O4y4Z90MAo03oHbqy6zvqjlJiLV8nsGA6ds3dHQBXp6k4Fn9Uo
	25km1ZyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVl-00000001dP7-2spN;
	Thu, 19 Dec 2024 11:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOEVh-00000001dNS-3OfX
	for barebox@lists.infradead.org;
	Thu, 19 Dec 2024 11:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-0001df-BL; Thu, 19 Dec 2024 12:16:04 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVf-004CB9-1G;
	Thu, 19 Dec 2024 12:16:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOEVg-004HTI-0E;
	Thu, 19 Dec 2024 12:16:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 19 Dec 2024 12:16:01 +0100
Message-Id: <20241219111603.1020442-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_031605_844099_C6BC2A61 
X-CRM114-Status: GOOD (  14.81  )
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
Subject: [PATCH 1/3] of: fdt: reserve properties and nodes starting with $ for barebox use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have at least two places, where we associate extra information with a
device tree, either to consult this information later or to make sure
that an extra allocated buffer is free'd along with the device tree is
tacked onto.

For robustness, we will move such extra nodes and properties into their
own namespace by prefixing them with a '$'. This character is disallowed
by the device tree specification and we have no DTs making use of it.

Nodes and properties starting with '$' will be an error on unflattening
and skipped on flattening, ensuring that only barebox can make use of
them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 69c041cb8902..6f10094143cd 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -56,6 +56,12 @@ static inline const char *dt_string(struct fdt_header *f, const char *strstart,
 	return string_is_terminated(str, f->size_dt_strings - ofs) ? str : NULL;
 }
 
+static inline bool is_reserved_name(const char *name)
+{
+	/* We use the $ prefix for properties internal to barebox */
+	return *name == '$';
+}
+
 static int of_reservemap_num_entries(const struct fdt_header *fdt)
 {
 	/*
@@ -230,7 +236,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 				node = root;
 			} else {
 				/* Only the root node may have an empty name */
-				if (!*pathp) {
+				if (!*pathp || is_reserved_name(pathp)) {
 					ret = -EINVAL;
 					goto err;
 				}
@@ -266,7 +272,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			nodep = fdt_prop->data;
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-			if (!name || !node) {
+			if (!name || !node || is_reserved_name(name)) {
 				ret = -ESPIPE;
 				goto err;
 			}
@@ -475,6 +481,9 @@ static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node, int is_ro
 	list_for_each_entry(p, &node->properties, list) {
 		struct fdt_property *fp;
 
+		if (is_reserved_name(p->name))
+			continue;
+
 		if (fdt_ensure_space(fdt, p->length) < 0)
 			return -ENOMEM;
 
@@ -489,6 +498,8 @@ static int __of_flatten_dtb(struct fdt *fdt, struct device_node *node, int is_ro
 	}
 
 	list_for_each_entry(n, &node->children, parent_list) {
+		if (is_reserved_name(n->name))
+			continue;
 		if (is_root && !strcmp(n->name, "memreserve"))
 			continue;
 
-- 
2.39.5




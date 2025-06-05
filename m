Delivery-date: Thu, 05 Jun 2025 13:37:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uG-003zj8-1s
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uC-0000Ur-Op
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sxuk/O4+hnZTHXVpD3cEm1JHKUXH4lRYccgI+Gri8wo=; b=IVf3NiVogL3VlsMaFgZeLcpJLF
	FqeFyd6x4930whnes63SsM+IcTDGdLIkk4uduSkjQSHCH36+DdW4sCE7FqY+eHwH9C/Zh44sMeB4X
	py2HNaoAvwjKLg1t/mEBItTPHsW07TTyKe1uVo32XHYrrZG33OUGWnmZ9qKRwRqjeulgisIUl0aoc
	pXLPBj8gfrgx1p1l4ypCJ03rTbPcNlrQGrviBo4aWyEiWMi/3itfXyjQmPcrReCAVW3b7pV+O1zSN
	2lzPFe1y8jO2dn9UsWJBBwRSqRqkWweDBJUIdJQWyNr+xjlFeaFGuD1i3v/QUZWDg2Gka5J5aENJm
	8qnd7R3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tW-0000000FNGf-075M;
	Thu, 05 Jun 2025 11:36:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8ja-0000000FMLp-0z9j
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:26:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jY-0001ae-VQ; Thu, 05 Jun 2025 13:26:08 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jY-001wu9-2X;
	Thu, 05 Jun 2025 13:26:08 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8jZ-008GwF-19;
	Thu, 05 Jun 2025 13:26:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:26:07 +0200
Message-Id: <20250605112607.1970520-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605112607.1970520-1-a.fatoum@pengutronix.de>
References: <20250605112607.1970520-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042610_284598_B7862019 
X-CRM114-Status: GOOD (  15.18  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] of: fdt: verify length within bounds before using it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently call dt_struct_advance() at the end of processing a tag
to advance to the next tag with a check after the switch to verify that
we are within bounds.

This is error prone as it expects that code that comes before it also
checks that len is not exceeded as dt_struct_advance would come too late
to go anything about this.

Avoid this by doing dt_struct_advance earlier in the switch cases and
bailing out directly if sizes aren't sane.

Reported-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 53 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 34 insertions(+), 19 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5eead271edb7..9638b3d238be 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -227,6 +227,13 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 				goto err;
 			}
 
+			dt_struct = dt_struct_advance(&f, dt_struct,
+					sizeof(struct fdt_node_header) + len + 1);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
 			if (!node) {
 				/* The root node must have an empty name */
 				if (*pathp) {
@@ -243,9 +250,6 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 				node = of_new_node(node, pathp);
 			}
 
-			dt_struct = dt_struct_advance(&f, dt_struct,
-					sizeof(struct fdt_node_header) + len + 1);
-
 			break;
 
 		case FDT_END_NODE:
@@ -258,6 +262,10 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			node = node->parent;
 
 			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
 
 			break;
 
@@ -272,7 +280,14 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			nodep = fdt_prop->data;
 
 			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
-			if (!name || !node || is_reserved_name(name)) {
+			if (!name || !node ||  is_reserved_name(name)) {
+				ret = -ESPIPE;
+				goto err;
+			}
+
+			dt_struct = dt_struct_advance(&f, dt_struct,
+					sizeof(struct fdt_property) + len);
+			if (!dt_struct) {
 				ret = -ESPIPE;
 				goto err;
 			}
@@ -285,13 +300,15 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			if (!strcmp(name, "phandle") && len == 4)
 				node->phandle = be32_to_cpup(of_property_get_value(p));
 
-			dt_struct = dt_struct_advance(&f, dt_struct,
-					sizeof(struct fdt_property) + len);
 
 			break;
 
 		case FDT_NOP:
 			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			if (!dt_struct) {
+				ret = -ESPIPE;
+				goto err;
+			}
 
 			break;
 
@@ -303,11 +320,6 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			ret = -EINVAL;
 			goto err;
 		}
-
-		if (!dt_struct) {
-			ret = -ESPIPE;
-			goto err;
-		}
 	}
 err:
 	of_delete_node(root);
@@ -752,6 +764,8 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
 					sizeof(struct fdt_node_header) + 1);
+			if (!dt_struct)
+				return 0;
 
 			/*
 			 * Quoting Device Tree Specification v0.4 §5.4.2:
@@ -775,24 +789,25 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 			if (!name)
 				return 0;
 
-			if (strcmp(name, "compatible")) {
-				dt_struct = dt_struct_advance(&f, dt_struct,
-							      sizeof(struct fdt_property) + len);
-				break;
-			}
+			dt_struct = dt_struct_advance(&f, dt_struct,
+						      sizeof(struct fdt_property) + len);
+			if (!dt_struct)
+				return 0;
+
+			if (strcmp(name, "compatible"))
+				continue;
 
 			return fdt_string_is_compatible(fdt_prop->data, len, compat, compat_len);
 
 		case FDT_NOP:
 			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			if (!dt_struct)
+				return 0;
 			break;
 
 		default:
 			return 0;
 		}
-
-		if (!dt_struct)
-			return 0;
 	}
 
 	return 0;
-- 
2.39.5




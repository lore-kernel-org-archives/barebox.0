Delivery-date: Wed, 11 Jun 2025 08:40:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPF8G-0063tp-1X
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 08:40:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPF8F-0002jJ-RJ
	for lore@pengutronix.de; Wed, 11 Jun 2025 08:40:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qMpgBuvK5c14mOswA068J0/DkMwozIIDsY+p5CRp6HQ=; b=k56S4QZO5J4WUVJYthObF5hlSb
	wYH5VhwODhERYf5aQT6BTOMKjyFdEizX4B/ov/Vvf2Ry6m9tDCY4Vj8gycJqptHj4J/0xnQIn47ob
	hmXbg3gCjqPkYdJD2yceFjLPvv5j8TZ0350NeW5YMKg1nxICbCtIqolfQaUABSvgRaGztEqwCKRJ5
	meLu9Tx2CsUbARf6ngfJ3YqNk9RORPbGDQFHtKWwS/sx1b9epG330DdOj7fhG0FVdZXucLUsAFLtv
	902qbr3AsOMR9W8/QEj8aOS996gJ/HsKZoIsdOT4WM6Ndtzd+bjyprVlQ3ndz1MDLVDIPlHm01poT
	T/xyjGCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF7p-000000091bX-0THF;
	Wed, 11 Jun 2025 06:39:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF7C-000000091XE-3sP0
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 06:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=qMpgBuvK5c14mOswA068J0/DkMwozIIDsY+p5CRp6HQ=; b=ARdmy+M+SjPfhznssS8ro4/lCL
	5fjAxHczTZRZ0ShC+iVQ+mEhUa94REnnB7FViqWQ9m19m9nXYIaJlpGzvAaKD/7c9QTCNiHpOKjms
	3imn23bP0vLI7MYYebeg3uIH8IvTT0ImZ3XI8tkuk6VP/nXZhbjTpisdCOIfgmpYxQxyLPzjS8sWR
	KOEfOIdEg2mNXh68YVMxFuVTVwbdIPZ+Id2pdNwlx8R2sXfTApJJZvO8TmdvieBA/MXJJiWefh10O
	PmgNeMbcO5ukR0eljxIp0FujmkBGLc3N0Of9AuYiTW/Aq99p6JYRyI5183Mydf8NEkSx3stM+q9Er
	Xt2aYgcA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF7A-000000028qe-3kDS
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 06:39:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPF79-0002Ot-Bl; Wed, 11 Jun 2025 08:39:11 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPF79-002tsb-0Z;
	Wed, 11 Jun 2025 08:39:11 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPF79-003AH0-2Q;
	Wed, 11 Jun 2025 08:39:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jun 2025 08:39:10 +0200
Message-Id: <20250611063910.754462-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_073913_089133_08C8DB0E 
X-CRM114-Status: GOOD (  11.63  )
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
Subject: [PATCH master] of: fdt: fix overflowing in dt_struct_advance arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While dt_struct_advance was taking care to check its arguments don't
overflow their type, the addition of len (that is read from the FDT)
to a constant was already overflowing before the function was called.

Move all additions with untrusted input into the function to fix this.

This resolves crashes detected by libfuzzer when the digest functions
were ultimately called with a length of -1 == 0xffffffff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 84a36c77bbf0..f2f4aa03de2d 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -33,11 +33,15 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
 }
 #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
 
-static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
+static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size,
+					 uint32_t increment)
 {
 	if (check_add_overflow(dt, size, &dt))
 		return 0;
 
+	if (check_add_overflow(dt, increment, &dt))
+		return 0;
+
 	dt = ALIGN(dt, 4);
 	if (dt > f->off_dt_struct + f->size_dt_struct)
 		return 0;
@@ -229,7 +233,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			}
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
-					sizeof(struct fdt_node_header) + len + 1);
+					sizeof(struct fdt_node_header) + 1, len);
 			if (!dt_struct) {
 				ret = -ESPIPE;
 				goto err;
@@ -262,7 +266,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 
 			node = node->parent;
 
-			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
 			if (!dt_struct) {
 				ret = -ESPIPE;
 				goto err;
@@ -287,7 +291,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			}
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
-					sizeof(struct fdt_property) + len);
+					sizeof(struct fdt_property), len);
 			if (!dt_struct) {
 				ret = -ESPIPE;
 				goto err;
@@ -305,7 +309,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 			break;
 
 		case FDT_NOP:
-			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
 			if (!dt_struct) {
 				ret = -ESPIPE;
 				goto err;
@@ -776,7 +780,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 				return 0;
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
-					sizeof(struct fdt_node_header) + 1);
+					sizeof(struct fdt_node_header), 1);
 			if (!dt_struct)
 				return 0;
 
@@ -803,7 +807,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 				return 0;
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
-						      sizeof(struct fdt_property) + len);
+						      sizeof(struct fdt_property), len);
 			if (!dt_struct)
 				return 0;
 
@@ -813,7 +817,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 			return fdt_string_is_compatible(fdt_prop->data, len, compat, compat_len);
 
 		case FDT_NOP:
-			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
 			if (!dt_struct)
 				return 0;
 			break;
-- 
2.39.5




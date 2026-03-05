Delivery-date: Thu, 05 Mar 2026 08:02:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2iz-008FTW-2s
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 08:02:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2j0-0004PT-2o
	for lore@pengutronix.de; Thu, 05 Mar 2026 08:02:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xiF9XmQbwl8boZJTFHc1yc12FqXFMRzJHoF0Xnp2VcM=; b=N4HJlaSfQfvLXP
	+1msQgkreKhKSUiTy0L25xGVsBaz21kWbGa2xkVpUSYNcVNXN4GqHAtwVNY0+lSTC2bDKdCx/mV3A
	xHP4ca6yDRu2d0e6oCkK+n4Yc8QcBrSY0/FkS9EqL1wcRHUDy2Xp3+bq6rEKzAaFcs18AcZibJ5Zj
	qFJUOI+j7hnJCH8cA5tvg0agLKXoHx+lQ+wLaNw4rC5dD4XJP5B+KZNpzCL4Xf1lthaw6YIFbMijU
	/Y1HM++tx4oGl4gjvb2G8kKrvV8U6v6kwuUS358gJLK5s0mnO0z+GYIMPPgU+5eLxbaYa10xQx3re
	rJ+fp0qJpRtauEkRrtGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2iW-000000013ap-1xKT;
	Thu, 05 Mar 2026 07:01:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2iU-000000013aP-1wM2
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 07:01:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2iS-00049h-Ut; Thu, 05 Mar 2026 08:01:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2iR-003q7I-1M;
	Thu, 05 Mar 2026 08:01:48 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2iS-0000000ELSU-2miC;
	Thu, 05 Mar 2026 08:01:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Mar 2026 08:01:47 +0100
Message-ID: <20260305070147.3419069-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_230150_500359_026F6946 
X-CRM114-Status: GOOD (  13.25  )
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
Cc: Michael Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: pass smaller device tree to OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michael Tretter <m.tretter@pengutronix.de>

libfdt is slow on larger device tree, especially fdt_subnode_offset.

Adding the memory nodes to the ROCK 5T device tree takes about 2 seconds
on my machine.

OP-TEE doesn't need the entire tree, but only the memory nodes.

Create a fresh device tree, which is much smaller, and add the memory
nodes there to avoid the costly search through the device tree.

Since OP-TEE uses libfdt, too, this saves another 2.5 seconds in OP-TEE.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 37f027740c..a60b55ae24 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -230,6 +230,20 @@ static int rk3588_fixup_mem(void *fdt)
 	return fdt_fixup_mem(fdt, base, size, i);
 }
 
+static int rk3588_open_fdt(const void *fdt, void *buf, int bufsize)
+{
+	int root;
+
+	if (fdt_create_empty_tree(buf, bufsize) != 0)
+		return -1;
+	root = fdt_path_offset(buf, "/");
+
+	fdt_setprop_u32(buf, root, "#address-cells", 2);
+	fdt_setprop_u32(buf, root, "#size-cells", 2);
+
+	return 0;
+}
+
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
 	phys_addr_t membase, memend;
@@ -250,7 +264,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT)) {
 			pr_debug("Copy fdt to scratch area 0x%p (%zu bytes)\n",
 				 rk_scratch->fdt, sizeof(rk_scratch->fdt));
-			if (fdt_open_into(fdt, rk_scratch->fdt, sizeof(rk_scratch->fdt)) == 0)
+			if (rk3588_open_fdt(fdt, rk_scratch->fdt, sizeof(rk_scratch->fdt)) == 0)
 				fdt_scratch = rk_scratch->fdt;
 			else
 				pr_warn("Failed to copy fdt to scratch: Continue without fdt\n");
-- 
2.47.3




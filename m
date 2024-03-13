Delivery-date: Wed, 13 Mar 2024 10:32:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKyO-004Bw9-0J
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 10:32:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkKyJ-0007Ym-0a
	for lore@pengutronix.de; Wed, 13 Mar 2024 10:32:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U7P/GFCmQoaemsv8CFcxaA/TywLews2D/VoCLQHkz7s=; b=TneHR5ZLUTQJ9Rz/zItEIeIVRO
	SJElt0KC/PaiZnikLIE/7XuWQSGfae+rcVT10hyV1Z0lzO0j33zH6eM2etvkoxFL7VQBzbmzgGqii
	F04Dya1WUFY9/REJ5lAId4Zz3EczQlvDyBpKfBVNrY2ZaN7tMbZ0SbXYdqgGrAEO8da1PUhERHO2e
	1FzV/+TheNNhsGQ4Xi5FwiscCMVd6+IGWyG0hKXHHW4Pi3ekyG6jtMIw2fFtFOMZcjXkCQbacClxD
	L7MelWvjHXTJ/y21/FgwKlRrPMi3GIx/GeLvmSyuvL0BnCbKsFgMb936JBBalehJmMAajZ7PFjIsy
	/xwJJCdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKxk-00000009W0k-2E4n;
	Wed, 13 Mar 2024 09:31:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkKxg-00000009W0D-32uR
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 09:31:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKxe-00077I-MH; Wed, 13 Mar 2024 10:31:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKxe-0065OT-9p; Wed, 13 Mar 2024 10:31:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkKxd-00E3KT-2G;
	Wed, 13 Mar 2024 10:31:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 10:31:45 +0100
Message-Id: <20240313093145.3349370-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_023148_787338_989DC99E 
X-CRM114-Status: GOOD (  10.98  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: fdt: justify fdt_machine_is_compatible parsing only the root node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_machine_is_compatible() is a lightweight way to check the top-level
compatible without unflattening the DT or pulling in libfdt.

The lightness is due to parsing only the root node and looking for the
compatible right away. This assumes that no child nodes of the root node
precede the compatible property. This is mandated by the specification
and dtc throws a syntax error when attempting to violate this.

Add a comment referencing the specification to tell future readers why
it should be ok for us to assume this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 2f3b0763999d..8dca41990c87 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -730,6 +730,17 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
 			dt_struct = dt_struct_advance(&f, dt_struct,
 					sizeof(struct fdt_node_header) + 1);
 
+			/*
+			 * Quoting Device Tree Specification v0.4 §5.4.2:
+			 *
+			 *   [T]his process requires that all property definitions for
+			 *   a particular node precede any subnode definitions for that
+			 *   node. Although the structure would not be ambiguous if
+			 *   properties and subnodes were intermingled, the code needed
+			 *   to process a flat tree is simplified by this requirement.
+			 *
+			 * So let's make use of this simplification.
+			 */
 			expect = FDT_PROP;
 			break;
 
-- 
2.39.2




Delivery-date: Wed, 14 Jan 2026 13:03:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzah-001DoM-1h
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:03:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzaf-0008Qu-8j
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:03:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HrxiFhTae78L3jkML6aGHHa60Y3E2Qg5OS+kSClLnGI=; b=eZp9OATlymuK6XKAGzeP2yOsfL
	3Gx5SzcACndWdals/BPeuYGq3g6W8ueeUPe+y0eDzz8ePAgj1O5DxIIqUYmWlxyo0ciiEqyOoRz9C
	qRb3rk8eEQVML+ypfRfQsFroa1M8qqs3/Zyy35zFXD4JZ4dZBnygWljZjSuDYcBLToVGM3HcGJnVB
	nkBZANmsY0I+IFURGmbQqz3f+0+2HvgX+A8WMgG9qPR/+hcDimXafzt1v7YeB18Dm+11xaLZz62bw
	sMTlVQFG3zQi+mstcEwwNU6RQC7xgZefAvHJEMsURfilOc56997kcWxAn3bNVQoRPOvCQRyXYFUqI
	RNNtdvRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfza7-000000094Xd-2kNa;
	Wed, 14 Jan 2026 12:02:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfza4-000000094Vu-2ebO
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:02:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZu-00084a-Tf; Wed, 14 Jan 2026 13:02:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-000a7N-1E;
	Wed, 14 Jan 2026 13:02:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00000003xZ4-1Fin;
	Wed, 14 Jan 2026 13:02:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 13:00:55 +0100
Message-ID: <20260114120221.941836-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040232_694937_17635FF5 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/5] pbl: fdt: fix fdt_fixup_mem error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

fdt_find_or_add_memory() returns >= 0 on success, so the return must be
checked to be < 0. Also fix the following pr_warn() which used the wrong
variable.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Fixes: ae175d4748b1 ("PBL: fdt: add fdt_fixup_mem to fixup memory nodes")
Cc: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 - > v2:
  - split off preparatory patch from
    https://lore.barebox.org/barebox/20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de/T/#t
  - Add Fixes:
---
 pbl/fdt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index c9820112c644..ac377446caea 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -128,9 +128,9 @@ int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[],
 
 		snprintf(name, sizeof(name), "memory@%lx", base);
 		node = fdt_find_or_add_memory(fdt, root, name);
-		if (!node) {
+		if (node < 0) {
 			pr_warn("%s: Failed to get node: %s\n",
-				name, fdt_strerror(err));
+				name, fdt_strerror(node));
 			continue;
 		}
 
-- 
2.47.3




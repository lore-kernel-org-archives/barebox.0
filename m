Delivery-date: Mon, 10 Nov 2025 21:35:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcA-00HVQA-1R
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc6-0002KE-0z
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5MyIVfua/tL9BHKX+1lfPBeS5y1UtKqxkeanZm6QUg0=; b=dXvIHlBNTcJ+XTnabmZo7eynvK
	LSVE6qp3CL8yvTv/sJwEjWeiQ7EFMhQJWs1u1sOewbF02i18f/qwpnFPTYD1BiKw/wNK6BCxGXco1
	vUdCXejyDIalFB1vQJx+T++QMLBrsSAfeDgRNIwZodXwIBExO0K2ogTlVsnMzeWhnCQXNJe6qUOIi
	woPZwwbRTYyTymKkeRHuAU53yf9e1+vZ1+FNEZXNAmWcEVoTklw3gWBvI9GYXgJUB1JRvAoJwr2gB
	xt/iHijtCEqWt46oh9nq9XA1AiwdURCvWwlt37hhHGl4SJx47od3W7yXlsPeH6AmBaLVjmK8UY39b
	RBc5OjHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbF-000000065XK-1mGx;
	Mon, 10 Nov 2025 20:34:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SA-1aJC
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-G7; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-2-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_423136_604CAF37 
X-CRM114-Status: GOOD (  10.70  )
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
Subject: [PATCH 02/23] pbl: fdt: fix fdt_fixup_mem error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

fdt_find_or_add_memory() returns >= 0 on success, so the return must be
checked to be < 0. Also fix the following pr_warn() which used the wrong
variable.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 pbl/fdt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index c9820112c6442b65d4f462c93b6847442097c5ab..ac377446caeafb1beaeb211aa8bdec8767ae21fe 100644
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




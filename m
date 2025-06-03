Delivery-date: Tue, 03 Jun 2025 11:26:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMNuT-003GEC-07
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 11:26:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMNuS-0006Zo-GF
	for lore@pengutronix.de; Tue, 03 Jun 2025 11:26:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rQ2l00LX9I4/aGDRUYp2dGGjYGTRojTWMDZJasVFtWA=; b=v6RvxUuYeyPf+mpK52JBWpq8Cg
	NappcpDfeQtidkM+fJzdinpzU4FPYG15Gy6qEM8da0RtK99QR/GtJ78/CrNGUyl2oKNhwJn2PY52+
	wCYC2wZNGHAwtiAYLT22dx+ZpWMS10tKW+YpO25+VqVXKgMSpH6jp8FDDablr6ScLDmnavq0kOXBk
	Rde7fV4fpeNq1BNuV5Uat5QjkXUlfNJLG5U9r7DeAAQwcUozeedXT/kN5h+cbw+VDyl0u51IoE0az
	2+UzU9QtlmGw5u72ibnY6zDbjegg1oXmgs+gZTNqiSSReZsAXMU/rrgL3XK9Q6O4W/02KazIpHeED
	+YhoGDUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMNtt-0000000AVZx-2ODp;
	Tue, 03 Jun 2025 09:25:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMNpF-0000000AUEk-1FwT
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 09:20:54 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1uMNpC-00038Q-Fx; Tue, 03 Jun 2025 11:20:50 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	rouven.czerwinski@linaro.org,
	Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  3 Jun 2025 11:20:43 +0200
Message-Id: <20250603092044.1464440-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_022053_335111_148FADD1 
X-CRM114-Status: GOOD (  11.53  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: optee-early: drop superfluous sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We expect start_optee_early() to be called with caches disabled, so there
is no point in calling sync_caches_for_execution inside.

Therefore let's verify the assumption that caches are indeed disabled
and drop the useless call.

Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/lib32/optee-early.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 735d829c99..0cda0ab163 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -7,6 +7,7 @@
  */
 #include <asm/cache.h>
 #include <asm/setjmp.h>
+#include <asm/system.h>
 #include <tee/optee.h>
 #include <debug_ll.h>
 #include <string.h>
@@ -24,13 +25,16 @@ int start_optee_early(void *fdt, void *tee)
 	if (ret < 0)
 		return ret;
 
+	/* We expect this function to be called with data caches disabled */
+	if (get_cr() & CR_C)
+		return -ENXIO;
+
 	memcpy((void *)hdr->init_load_addr_lo, tee + sizeof(*hdr), hdr->init_size);
 	tee_start = (void *) hdr->init_load_addr_lo;
 
 	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
 	ret = setjmp(tee_buf);
 	if (ret == 0) {
-		sync_caches_for_execution();
 		tee_start(0, 0, fdt);
 		longjmp(tee_buf, 1);
 	}
-- 
2.39.5




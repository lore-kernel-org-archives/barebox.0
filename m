Delivery-date: Mon, 16 Mar 2026 09:58:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w23mb-001NYy-0T
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 09:58:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w23ma-0008M2-Jg
	for lore@pengutronix.de; Mon, 16 Mar 2026 09:58:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jOw0tLlP1Q6+Zu26aaK7Xf9J17OQbY5gPWXy4lHH8MI=; b=AMHJwh3qywzXHl5HRyVxYM78LL
	4MK1IGjBLw57i5vB4Fnbw7ZuYyPLPZDxBTRbvs/Ex4SRURTcDNzZSARDo/lBKWMSmD+usiDRxPt+6
	LeT+LjkwqB8LHnEbShzBOleFPZOThqCn8O7Wv27P+qYh+9vJ2OnVA4YYVqO0sqGR8Ept8Z/H/uI7y
	v5LHEu/J1LO4SMxtjjbiES0QYuiw5bwTQukb0Et7piNNUmwNa0NqmEvNY/2mgbvHBE29KbIuSss2s
	O9RAhaHgil57+Apj65XfJ0xd1hUaiSYxGtE1ViYe0JbAt3Rr8uNRNvZpRiDu1wQVnI7oWETGHF6kf
	7vcLlDhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w23m8-00000003aTk-3u8M;
	Mon, 16 Mar 2026 08:58:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w23m7-00000003aSW-08qr
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 08:58:12 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w23m4-0008Ce-2c; Mon, 16 Mar 2026 09:58:08 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 16 Mar 2026 09:58:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-v2026-03-0-topic-atf_scatch_fdt-v1-1-33cde8738bc4@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIABrGt2kC/x2NMQqAMAwAvyKZDVQrDn5FRNqYaBaVtohQ/LvV7
 W65yxA5KEcYqgyBL4167EWaugLa3L4y6lIcWtP2xjY9Xh+hsWgwHacSuiRzJJdom2VJaNmSeNe
 J9x5K5Qwsev+HcXqeF6byGi9xAAAA
X-Change-ID: 20260316-v2026-03-0-topic-atf_scatch_fdt-3e3cfba4fbbb
To: Marco Felsch <mfe@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_015811_084895_6CD1C0A0 
X-CRM114-Status: GOOD (  11.06  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: atf: pass scratch fdt if configured
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If a scratch space is configured for fdt on i.MX devices, then there is
a space for OP-TEE to put its overlay fragments if configured with
CFG_GENERATE_DTB_OVERLAY. These fragements can then be applied to the
devicetree in barebox. There is no need to pass the fdt to OP-TEE, if
OP-TEE is already configured correctly for the specific device.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 34893c3a04..745f10a0df 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -68,18 +68,19 @@ static __noreturn void start_bl31_via_bl_params(void *bl31, void *bl32,
 	int error;
 	u8 *buf;
 
-	if (!fdt)
-		bl31_via_bl_params(bl31, bl32, bl33, NULL);
-
 	buf = imx_scratch_get_fdt(&bufsz);
 	if (IS_ERR_OR_NULL(buf)) {
-		if (!buf)
+		if (!buf && fdt)
 			pr_debug("No FDT scratch mem configured, continue without FDT\n");
-		else
+		else if (fdt)
 			pr_warn("Failed to get FDT scratch mem, continue without FDT\n");
 		bl31_via_bl_params(bl31, bl32, bl33, NULL);
 	}
 
+	if (!fdt)
+		bl31_via_bl_params(bl31, bl32, bl33, buf);
+
+
 	error = pbl_load_fdt(fdt, buf, bufsz);
 	if (error) {
 		pr_warn("Failed to load FDT, continue without FDT\n");

---
base-commit: ab82fbd7dcc6c862c7cf281ad515097ffb654499
change-id: 20260316-v2026-03-0-topic-atf_scatch_fdt-3e3cfba4fbbb

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>




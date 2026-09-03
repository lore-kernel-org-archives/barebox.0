Delivery-date: Thu, 03 Sep 2026 18:14:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2A54-00APd8-2N
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:14:27 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DhG2ZxFp;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4CE2C205924
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1GeAWgCapI9vP8e5dAE8bvn0BIoCqh6O74yG8ML0Sdw=; b=DhG2ZxFpyYgooENdZqH3uB4AYG
	56j3yuA8uhB/9OCf4/+ECFF+Z1lKaIYZwdf5VscZjQi2vrOP7ZmWiPZghS9w1yq5fABg0pQFaON6V
	f2YjnK814wDPRxaE7hpu38RY23nY7GcqlXewNGd1AhIXmT/DmU4mBkLQhFYxgtDYljhyZbOrI07zF
	3ZGadFv9BDayXZBJBByMlWJOPJt+tzf8VW+Oxnshe3i/ma3jDi+PzxZ5eDYyhYzPl/SPXamM+HHUW
	zhAx4qptAivBJwOerW4b7Fbn701QQgsf/8d9eqp8jYjB9ilVPpOfJ217LQCGH9gVisqL00Qx3UF6o
	RWQ4Bj+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3b-000000008EG-24ZE;
	Thu, 03 Sep 2026 16:12:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3W-000000008Bx-3VlA
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:12:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 19509205923;
	Thu, 03 Sep 2026 18:12:43 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1x2A3O-004mPK-3C;
	Thu, 03 Sep 2026 18:12:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 03 Sep 2026 18:12:44 +0200
Subject: [PATCH 3/4] arm: socfpga: iossm: refactor register access
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-socfpga-fix-sdram-setup-v1-3-0daa166adbca@pengutronix.de>
References: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
In-Reply-To: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091251_029452_ABE6E81C 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Don't add the base register address when defining the register,
    but add it, when the register is accessed. This is how all other accesses
    to the SOCFPGA_SYSMGR_ADDRESS are made. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- arch/arm/mach-socfpga/iossm_mailbox.c | 10 +++++----- 1 file changed,
    5 insertions(+), 5 deletions(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: whsipby1u314zupkirkjc8g5a8ptg3g9
X-Rspamd-Queue-Id: 4CE2C205924
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

Don't add the base register address when defining the register, but add
it, when the register is accessed. This is how all other accesses to the
SOCFPGA_SYSMGR_ADDRESS are made.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index b66056a91279..28070121ee6b 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -16,11 +16,11 @@
 #include <mach/socfpga/soc64-regs.h>
 #include <mach/socfpga/soc64-system-manager.h>
 
-#define ECC_INTSTATUS_SERR SOCFPGA_SYSMGR_ADDRESS + 0x9C
-#define ECC_INISTATUS_DERR SOCFPGA_SYSMGR_ADDRESS + 0xA0
+#define ECC_INTSTATUS_SERR				0x9C
+#define ECC_INISTATUS_DERR				0xA0
 
-#define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK BIT(16)
-#define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK BIT(17)
+#define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK		BIT(16)
+#define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK		BIT(17)
 #define DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i)		\
 	(i == 0 ?					\
 	 DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK :		\
@@ -57,7 +57,7 @@ static int is_ddr_csr_clkgen_locked(u32 clkgen_mask)
 	int ret;
 	u32 tmp;
 
-	ret = readl_poll_timeout(IOMEM(ECC_INTSTATUS_SERR),
+	ret = readl_poll_timeout(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + ECC_INTSTATUS_SERR,
 				 tmp, tmp & clkgen_mask, 10 * USEC_PER_SEC);
 	if (ret) {
 		pr_debug("%s: ddr csr clkgena locked is timeout\n", __func__);

-- 
2.47.3




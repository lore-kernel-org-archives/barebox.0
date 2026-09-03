Delivery-date: Thu, 03 Sep 2026 18:14:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2A58-00APeE-1A
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:14:31 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q9WfNsDq;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E006A205882
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nafiXiU240jsx+lur+jWwQp2c005bMe2Za+BPvEdL2A=; b=Q9WfNsDqS0sutpETsCody6SIb/
	bCxxtd9UdLlI26lDKEdSG5kZ2xgnHlmFq4aTOIzSNuztHFeWydR0pjajvB9LsOwh8cbjndlhWEER/
	aFlGK0BTwqHSibIRFutiaQBSRmF6kFzjDFyjpyemhh0mY5lzYRE4rx8LWC2HmMZgvxOu56WDgzdmY
	/z7/RlBLV40Po5QxK4uKtCe4nZFyomxBlGKy6tEmnArJPYRXPWXbGSySmN3iAExpTms+TF6swvj3C
	8H36MRV24RH7bHdZ1Vmfacx+txwU7m06cC09OvYHo5UI05xl7CNo7h+ouEhVNhGfdDe/+gUxeZaO+
	NxlngGJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3a-000000008Dp-0ttU;
	Thu, 03 Sep 2026 16:12:54 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3W-000000008Bv-3VbG
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:12:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1109720591C;
	Thu, 03 Sep 2026 18:12:43 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1x2A3O-004mPK-35;
	Thu, 03 Sep 2026 18:12:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 03 Sep 2026 18:12:43 +0200
Subject: [PATCH 2/4] arm: socfpga: iossm: fix macro
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-socfpga-fix-sdram-setup-v1-2-0daa166adbca@pengutronix.de>
References: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
In-Reply-To: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091251_029558_E54FDB8D 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The argument x of the macro is not used, but the macro uses
    i instead, which works, because i is defined, when the macro is used. Fix
    this by using the proper argument names. While at it, simplify the macro
   and fix the formatting. 
 
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
X-Stat-Signature: u4gh7cdej5bc366tdo4bqu843qzh7rxf
X-Rspamd-Queue-Id: E006A205882
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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

The argument x of the macro is not used, but the macro uses i instead,
which works, because i is defined, when the macro is used.

Fix this by using the proper argument names.

While at it, simplify the macro and fix the formatting.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/iossm_mailbox.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index b79ec87b4f46..b66056a91279 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -18,11 +18,14 @@
 
 #define ECC_INTSTATUS_SERR SOCFPGA_SYSMGR_ADDRESS + 0x9C
 #define ECC_INISTATUS_DERR SOCFPGA_SYSMGR_ADDRESS + 0xA0
+
 #define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK BIT(16)
 #define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK BIT(17)
+#define DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i)		\
+	(i == 0 ?					\
+	 DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK :		\
+	 DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK)
 
-#define DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(x)	(i == 0 ? DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK : \
-							DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK)
 #define MAX_RETRY_COUNT 3
 #define NUM_CMD_RESPONSE_DATA 3
 

-- 
2.47.3




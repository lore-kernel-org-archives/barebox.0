Delivery-date: Sun, 16 Aug 2026 19:57:53 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvf7I-003pcY-1L
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 19:57:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 04A80201021
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 19:57:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FLnj56uh;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cly2r/fh7AZFEMjnVJ02NxHrkFHWIUCLPzJ3Vx5zy0c=; b=FLnj56uhLbJ3t+A0pQxrOX9B29
	k0Ol5yAP3ZKART+qlVF6Ep8PrRUKysSTNw2N39+Mqvwr+M9qeMCzydtiYUY11RhHnAHBAdUo1KNyK
	e/goTfan9IW6HqDN/SU7z1J2v9sZ8UGliIzsmQgXl03QViUvDrcxx/sM2qu4dDEZ6BFm4uPWY3V6k
	wZFNvxwpISRoWokNe7WohG3blUYHuH4zEHZqOT/fNZNfNbox+4g8+gwaD5ptaN0X1/43gfQYfGrzJ
	0eugoU2JzpQjHpRuAgEka0guuVaJ6Cx8yVcscwbGrn9UH4CPO+mOEZ1JuhQYI6/tbGb22BYDcJEHm
	JwNFsGaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf64-00000004wea-0o8A;
	Sun, 16 Aug 2026 17:56:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvf5z-00000004wbq-2im9
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 17:56:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 99336201DE4;
	Sun, 16 Aug 2026 19:56:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-001oeV-1F;
	Sun, 16 Aug 2026 19:56:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-12OL;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:28 +0200
Subject: [PATCH 08/27] mtd: nand: nand_mrvl_nfc: honour
 marvell,nand-keep-config
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-8-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=1445;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jMlnyT4vKtcCqMkkT+BPO1CBskTLc6FNFviCNRQkFzI=;
 b=aFzNS/NOE75IlIESoGDab0Lq9O4+NDz0pchw5s6FRTaHvwrIm6Zigc/EaW3kkrZVeAeAU1wLJ
 1K0kmNY/Wd4D3XI0MiNxbFiJc2FDQi+GUKXCRo/ytXCMecMBUjxyZzu
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_105631_858580_9C603C99 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The property was parsed into host->keep_config and then never
    looked at, so the driver always recalculated the timings from the core clock
    rate, even where the device tree explicitly says not to. Honour it. Where
    it is set, the timings the previous stage left behind are known to work,
   and the driver no longer depends on clk_get_rate() returning anything accurate
    for the NAND controller clock. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: yctgb4pwygyeigbikjbfahwy879yxcb9
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 04A80201021

The property was parsed into host->keep_config and then never looked at,
so the driver always recalculated the timings from the core clock rate,
even where the device tree explicitly says not to.

Honour it. Where it is set, the timings the previous stage left behind
are known to work, and the driver no longer depends on clk_get_rate()
returning anything accurate for the NAND controller clock.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_mrvl_nfc.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
index 0e2a2b639a..6f3fb57062 100644
--- a/drivers/mtd/nand/raw/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
@@ -343,11 +343,20 @@ static struct mrvl_nand_timing timings[] = {
 static void mrvl_nand_set_timing(struct mrvl_nand_host *host, bool use_default)
 {
 	struct nand_chip *chip = &host->chip;
-	unsigned long nand_clk = clk_get_rate(host->core_clk);
 	struct mrvl_nand_timing *t;
+	unsigned long nand_clk;
 	uint32_t ndtr0, ndtr1;
 	u16 id;
 
+	/*
+	 * The previous stage has set up timings that are known to work,
+	 * keep them instead of calculating our own.
+	 */
+	if (host->keep_config)
+		return;
+
+	nand_clk = clk_get_rate(host->core_clk);
+
 	if (use_default) {
 		id = 0;
 	} else {

-- 
2.47.3




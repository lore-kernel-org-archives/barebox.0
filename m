Delivery-date: Thu, 03 Sep 2026 18:14:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x2A55-00APdh-28
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 18:14:28 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BLZy4sm4;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2F0E6205927
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 18:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ip1UShwG978aaEnmXqc33FVsVT64PXA8VhEO57NiJBQ=; b=BLZy4sm4HzKrci1VOYwh4eJAFH
	uyd5pvKpjYQDNrt/K5kE4igt2n5XIbUYhNgiVtPgKNoSGZNjHRkXGR4MVQ7+gxhJURKgzVMEPPKrx
	6ajwesf0KwtN6x8zAThy7iKEzF6h7dbFpBuhVmFegTXixWd+XB+2Q5k1WZgUSw9rSxIVqyMijg2+f
	XNU9kczkUmwVGUvdVGy3qu9g/fy4DNjScUQIh75b5pLFOCiiDegr2Xoc1WWv/XT1yemxxKNY7qsmL
	A6T4jq0cHnPa47VeEWdWK1+571XMd3H9JqNfT6LlscIor7IG9+DbRwJc62sGNyp12md1xi18LyZZ2
	IqxmG8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3b-000000008E2-1C9Q;
	Thu, 03 Sep 2026 16:12:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A3W-000000008Bw-3VXH
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 16:12:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 06F82205882;
	Thu, 03 Sep 2026 18:12:43 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1x2A3O-004mPK-2y;
	Thu, 03 Sep 2026 18:12:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 03 Sep 2026 18:12:42 +0200
Subject: [PATCH 1/4] arm: socfpga: iossm: remove unused num_port
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260903-socfpga-fix-sdram-setup-v1-1-0daa166adbca@pengutronix.de>
References: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
In-Reply-To: <20260903-socfpga-fix-sdram-setup-v1-0-0daa166adbca@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_091251_031300_3016A008 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The dualport configuration is read from the handoff table
   and used for configuration, but num_port is never read or used. Remove the
    unused field. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de> ---
    arch/arm/mach-socfpga/agilex5-sdram.c | 5 ----- arch/arm/mach-socfpga/iossm_mailbox.c
    | 5 ++--- arch/arm/mach-socfpga/iossm_mailbox.h | 2 [...] 
 
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
X-Stat-Signature: 7w77jjgmo76quory5rrk7qf3n4fmh371
X-Rspamd-Queue-Id: 2F0E6205927
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
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

The dualport configuration is read from the handoff table and used for
configuration, but num_port is never read or used.

Remove the unused field.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/agilex5-sdram.c | 5 -----
 arch/arm/mach-socfpga/iossm_mailbox.c | 5 ++---
 arch/arm/mach-socfpga/iossm_mailbox.h | 2 --
 3 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-socfpga/agilex5-sdram.c b/arch/arm/mach-socfpga/agilex5-sdram.c
index fa940958d104..4a28713a3588 100644
--- a/arch/arm/mach-socfpga/agilex5-sdram.c
+++ b/arch/arm/mach-socfpga/agilex5-sdram.c
@@ -98,11 +98,6 @@ static int populate_ddr_handoff(struct altera_sdram_plat *plat, struct io96b_inf
 	plat->dualport = FIELD_GET(BIT(0), handoff_table[PORT_EMIF_CONFIG_OFFSET]);
 	pr_debug("%s: dualport from handoff: 0x%x\n", __func__, plat->dualport);
 
-	if (plat->dualport)
-		io96b_ctrl->num_port = 2;
-	else
-		io96b_ctrl->num_port = 1;
-
 	/* Read handoff - dual EMIF */
 	plat->dualemif = FIELD_GET(BIT(1), handoff_table[PORT_EMIF_CONFIG_OFFSET]);
 	pr_debug("%s: dualemif from handoff: 0x%x\n", __func__, plat->dualemif);
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
index 6a9a7a489b75..b79ec87b4f46 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.c
+++ b/arch/arm/mach-socfpga/iossm_mailbox.c
@@ -49,7 +49,7 @@ static const char *ddr_type_list[7] = {
 		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
 };
 
-static int is_ddr_csr_clkgen_locked(u32 clkgen_mask, u8 num_port)
+static int is_ddr_csr_clkgen_locked(u32 clkgen_mask)
 {
 	int ret;
 	u32 tmp;
@@ -289,8 +289,7 @@ void io96b_init_mem_cal(struct io96b_info *io96b_ctrl)
 	count = 0;
 	for (i = 0; i < io96b_ctrl->num_instance; i++) {
 		if (io96b_ctrl->ckgen_lock) {
-			ret = is_ddr_csr_clkgen_locked(DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i),
-						       io96b_ctrl->num_port);
+			ret = is_ddr_csr_clkgen_locked(DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i));
 			if (ret) {
 				pr_err("%s: ckgena_lock iossm IO96B_%d is not locked\n",
 				       __func__, i);
diff --git a/arch/arm/mach-socfpga/iossm_mailbox.h b/arch/arm/mach-socfpga/iossm_mailbox.h
index 0e942a632847..954bfcdf382e 100644
--- a/arch/arm/mach-socfpga/iossm_mailbox.h
+++ b/arch/arm/mach-socfpga/iossm_mailbox.h
@@ -119,7 +119,6 @@ struct io96b_instance {
  * @overall_size:	Total DDR memory size
  * @io96b[]:		IO96B instance specific information
  * @ckgen_lock:		IO96B GEN PLL lock (false = not locked, true = locked)
- * @num_port:		Number of IO96B port.
  */
 struct io96b_info {
 	int			 version;
@@ -131,7 +130,6 @@ struct io96b_info {
 	phys_size_t		 overall_size;
 	struct io96b_instance	 io96b[MAX_IO96B_SUPPORTED];
 	bool			 ckgen_lock;
-	u8			 num_port;
 };
 
 int io96b_mb_req(void __iomem *io96b_csr_addr, u32 ip_type, u32 instance_id,

-- 
2.47.3




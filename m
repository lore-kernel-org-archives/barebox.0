Delivery-date: Sun, 16 Aug 2026 20:02:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBk-003phd-1f
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C401E201BAA
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KGwsEy7O;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CUCvryHsoGkpnZxwp8noOpaxNzPxy7Xp7yGebFYlvUM=; b=KGwsEy7O2Pj0/v0Xt/9PAXkigJ
	WlozEHUAbbTObKECxA+iF9d4CyJrIf8jTMN/1cm70zEqBlfEDVESMQyD+ZHX7zjwjINchunYHvR8/
	YL7LCXsHfFmwsNzNU99n0pRhBKGWdxn4tnn9qQkUR4hEMKVR2dVmtUSiKg46Q98G+etk6Ddq/hIRc
	CqVESiA4EojT/nr1ByWHtSZg3qBw4MdQ0YBNaQolOKhaWbutf64Vl6r2ZGG3vYIy3Y2j1rCGWbSC1
	pSIZ6FYhB6DXSthXtX19/Bi++9JR9EWbcEXNbtVURzBLWJzUJ4hxKyHU6GecExP36JW5IMLeUjsas
	Rxrk4fxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBT-00000004xZw-1MiN;
	Sun, 16 Aug 2026 18:02:11 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xN8-0g3I
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1A501201DE4;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001orj-05;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-13xI;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:30 +0200
Subject: [PATCH 10/27] mtd: nand: mrvl_nfc: keep the ready latch across a
 STATUS command
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-10-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=3726;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=JLK/Mw3lBOeA9Uxa/1il5ztCSKQMKsLeOlZYu9mtCuI=;
 b=+SdjGDDKzyxgpXTxkc3CafPkCRLtjhJvyM+NLpkHWjRWGmWBs5eLL1lA9HDXx1Iqq48cgCr4R
 LfGrMTvhWLoCVSrqdWYC5BUFNprPcaca54VASBFSjq8YTJtHvVp7kdp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110204_418112_8CAE5093 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Every block erase and every page program took 400ms, so writing
    a bootloader image to NAND took minutes. That 400ms is nand_wait()'s timeout,
    hit in full every single time. NDSR's per-chipselect ready bits latch the
    flash's busy-to-ready transition rather than reporting its current level,
    and nand_wait() polls them through mrvl_nand_ready() to find out when an
   erase or a [...] 
 
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
X-Stat-Signature: uoyd6h6cq3orxsccq3oq4pri3kgw49yz
X-Spamd-Result: default: False [-7.64 / 15.00];
	BAYES_HAM(-2.93)[99.72%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
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
X-Rspamd-Queue-Id: C401E201BAA

Every block erase and every page program took 400ms, so writing a
bootloader image to NAND took minutes. That 400ms is nand_wait()'s
timeout, hit in full every single time.

NDSR's per-chipselect ready bits latch the flash's busy-to-ready
transition rather than reporting its current level, and nand_wait()
polls them through mrvl_nand_ready() to find out when an erase or a
program has finished. It issues a STATUS command before it starts
polling, though, and every command clears NDSR on its way through
mrvl_nand_start() - so the transition it was about to wait for was gone
before it ever looked. It never saw a ready chip, ran its timeout out,
and only then fell through to read the status byte. That last read is
correct, which is why this showed up as NAND writes being unusably slow
rather than as an error.

Keep the ready bits across a STATUS command, and go on clearing them for
the commands that make the flash busy in the first place, so what
nand_wait() observes is that command's own completion.

Measured on a Raumfeld speaker (PXA303, 128KiB erase blocks): a block
erase goes from 400ms to under a millisecond and a 128KiB write from
25.6s to 28ms. Reads were never affected.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_mrvl_nfc.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
index ebb1fd81fb..b1532dbf1b 100644
--- a/drivers/mtd/nand/raw/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
@@ -472,8 +472,9 @@ static unsigned int mrvl_datasize(struct mrvl_nand_host *host)
  * We enable all the interrupt at the same time, and
  * let mrvl_nand_irq to handle all logic.
  */
-static void mrvl_nand_start(struct mrvl_nand_host *host)
+static void mrvl_nand_start(struct mrvl_nand_host *host, unsigned command)
 {
+	uint32_t ndsr_clear = NDSR_MASK;
 	uint32_t ndcr;
 
 	if (host->hwflags & HWFLAGS_ECC_BCH) {
@@ -503,9 +504,27 @@ static void mrvl_nand_start(struct mrvl_nand_host *host)
 	ndcr &= ~NDCR_ND_RUN;
 	ndcr |= NDCR_INT_MASK;
 
+	/*
+	 * NDSR's per-chipselect ready bits latch the flash's busy-to-ready
+	 * transition, they do not report its current level. nand_wait() polls
+	 * them through mrvl_nand_ready() to find out when an erase or a page
+	 * program has finished - but it issues a STATUS command first, and
+	 * clearing the latch here would wipe the very transition it is about
+	 * to wait for. It would then never see a ready chip and spend its
+	 * full 400ms timeout on every block erase and every page program
+	 * before falling through to read the status byte, which is why this
+	 * only ever showed up as NAND writes being unusably slow rather than
+	 * as an error.
+	 *
+	 * So leave the latch alone for STATUS, and keep clearing it for the
+	 * commands that make the flash busy in the first place.
+	 */
+	if (command == NAND_CMD_STATUS)
+		ndsr_clear &= ~(NDSR_RDY | NDSR_FLASH_RDY);
+
 	/* clear status bits and run */
 	nand_writel(host, NDCR, ndcr);
-	nand_writel(host, NDSR, NDSR_MASK);
+	nand_writel(host, NDSR, ndsr_clear);
 	nand_writel(host, NDCR, ndcr | NDCR_ND_RUN);
 
 	if (wait_on_timeout(host->chip.legacy.chip_delay * USECOND,
@@ -817,7 +836,7 @@ static void mrvl_nand_cmdfunc(struct nand_chip *chip, unsigned command,
 
 	prepare_start_command(host, command);
 	if (prepare_set_command(host, command, 0, column, page_addr)) {
-		mrvl_nand_start(host);
+		mrvl_nand_start(host, command);
 		mrvl_data_stage(host);
 		mrvl_nand_wait_cmd_done(host, command);
 	}

-- 
2.47.3




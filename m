Delivery-date: Sun, 16 Aug 2026 20:02:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfBp-003pkN-39
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:02:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 93897201D09
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:02:34 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y9auBC3H;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=52vSyTZkJ0SGYEBVeTG1QboOfCabAX7nKGG4juHdNhY=; b=y9auBC3HoB6CYKeGO0WB3qAMb5
	wCQobA9OgqGRPm1wzcaROOxzpjC4O8zx58iToW0uXJKkrqFxIsFI9SDj9ZINwF/fz02AIK4LJ4Wgn
	v4FOupj/dggtSqB/5ig/eDL9GIojzvV6mLtAy7+eLAJYo0SpDs+F2vW44/dmlP//lV2Ccer/mW3q9
	sipDsbVL7M7Ujd2s7l18wZbFsJiauIg3PacLNSRkPoSYPEtm2vRvZ8B+vKfVgkG7+B5vJcu7V2GjS
	dtUpoiUCAH3beGNo7pf4wnYe60fw62Ci3+OIIKS1XKXZKsKQWVlt3Scv2tJbuHegs28EBVCwgVZF7
	/gm/VLFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xY4-2e14;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBM-00000004xNQ-3Iir
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 72A3B201B02;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001orz-1F;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-14Qv;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:31 +0200
Subject: [PATCH 11/27] mtd: nand: mrvl_nfc: do not report a command timeout
 as an error
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-11-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=1776;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9M7RXhSl7bZF6GZ9Jq1wU04dceTLnwUZAE3oH4TiRpk=;
 b=pSHmI/PsDFkYuGBeEFsCiOM4fKQ2sTKBW8cdW56EzKdbDFqI2w9L/EXvt6dC+Z0McSIGbIl6h
 zzU/BPstNQ2D1M1DNXRgONFrT3/FufFbQtkAYNe5mQv0W3UqIb7tNWh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110205_013363_9CB77B95 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Identifying the chip prints mrvl_nand ...: Waiting end of
   command 0th 236 timeout, \ ndsr=0x00000800 ndcr=0x10041fff once on every boot.
    Command 236 is 0xEC, NAND_CMD_PARAM: the nand layer asks for the ONFI parameter
    page to find out whether the chip is ONFI at all, the controller never raises
    CS0_CMDD for it - NDSR [...] 
 
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
X-Stat-Signature: nfycwrxzwe4wwmrqbegaxajfzpcn5ir3
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
X-Rspamd-Queue-Id: 93897201D09

Identifying the chip prints

  mrvl_nand ...: Waiting end of command 0th 236 timeout, \
      ndsr=0x00000800 ndcr=0x10041fff

once on every boot. Command 236 is 0xEC, NAND_CMD_PARAM: the nand layer
asks for the ONFI parameter page to find out whether the chip is ONFI at
all, the controller never raises CS0_CMDD for it - NDSR reads back
FLASH_RDY alone - and the wait times out. The layer above then finds no
parameter page, falls back to identifying the chip from its id bytes,
and everything from there on works.

So this is a capability probe coming back negative, not a failure.
Nothing acts on it either: mrvl_nand_wait_cmd_done() has no return
value. Print it as a debug message.

Whether NAND_CMD_PARAM can be made to complete on this controller is a
separate question; this only stops the answer from looking like a fault.

Assisted-by: Claude Opus 5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/nand_mrvl_nfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_mrvl_nfc.c b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
index b1532dbf1b..a5e30db669 100644
--- a/drivers/mtd/nand/raw/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/raw/nand_mrvl_nfc.c
@@ -813,7 +813,7 @@ static void mrvl_nand_wait_cmd_done(struct mrvl_nand_host *host,
 	wait_on_timeout(host->chip.legacy.chip_delay * USECOND,
 			(nand_readl(host, NDSR) & mask) == mask);
 	if ((nand_readl(host, NDSR) & mask) != mask) {
-		dev_err(host->dev, "Waiting end of command %dth %d timeout, ndsr=0x%08x ndcr=0x%08x\n",
+		dev_dbg(host->dev, "Waiting end of command %dth %d timeout, ndsr=0x%08x ndcr=0x%08x\n",
 			nb_done++, command, nand_readl(host, NDSR),
 			nand_readl(host, NDCR));
 	}

-- 
2.47.3




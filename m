Delivery-date: Thu, 02 Apr 2026 09:21:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNI-007lha-2k
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:21:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNI-0008Sd-9q
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:21:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2eh0Z210BkhlqHTzEj0M+Wz7aFg7zzeLVZ3OgsS/gIk=; b=TMRCk+qGyt47ezbKyBMlrcZzJG
	+/vo5oj6Y+JgeNhBPuHG2d2xq7YL5TlTSaKGTvPhagEfG9lQwhwcfDs2FLgySjixoI70IyzV6BACz
	76khCTB/2ojBdGbjKU1+10NPgCyPp/6GmO7MFBMNAORk4NqMgTSS7bkB0OF9X0pQCmcbYhCIbGwNx
	gTec0ND4HnrYus90DPe05JsDRDwPUz5rx8rrQde6xCd7M+5gboy9zt+EZRa+XOoGvSPRxpzY/ls/W
	zUo6t4QmFwV+/NEukdEex+EfkyC6nGwzjvy5rhHRhdcjsY0H3TdQEiY3SDwgtsoZhNpJdaA8OXA8a
	BEiJxabQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMv-0000000H2LP-1wsN;
	Thu, 02 Apr 2026 07:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMt-0000000H2IT-0zkj
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:21:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-0008De-Pt; Thu, 02 Apr 2026 09:21:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-003Kwf-1i;
	Thu, 02 Apr 2026 09:21:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-00000003PEH-1p07;
	Thu, 02 Apr 2026 09:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:21:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260402-net-tftp-buffer-overflows-v1-2-0a18aa8ea19e@pengutronix.de>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775114481; l=1360;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YDOZzRonDR2CSma/d08pFSvqQRQooSi3CGzoCArUY68=;
 b=0thNPCN42IKspYXUr7kRjx+UH9cqrmy7yjTQ3tpjhBVj4VYkSDAi+g9iVm9VVZiAnhxsg1Orz
 3LH5eZWK8zTABxaalfKVv1TvgFiA9PvAxZd3M4ou/5JVMswOUccAxKk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_002131_283992_6D22F877 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] fs: tftp: fix OACK option parsing bounds check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bounds check in tftp_parse_oack() uses 'val > s + len' to detect
when the value pointer exceeds the packet. Since 's' advances through
the buffer while 'len' stays constant, 's + len' always points past
'pkt + len', making the check always false — it is dead code.

The forced null at pkt[len - 1] provides partial protection, but when
the last option key ends exactly at pkt[len - 1], val equals pkt + len
and the subsequent strlen(val) reads past the packet boundary into
uninitialized packet buffer data.

Fix by checking 'val >= pkt + len' instead, which correctly bounds val
against the actual end of the packet data. Using >= because when val
equals pkt + len there is no room for a value string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 1b15bc18e7..03e9d552aa 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -370,7 +370,7 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 	while (s < pkt + len) {
 		opt = s;
 		val = s + strlen(s) + 1;
-		if (val > s + len)
+		if (val >= pkt + len)
 			break;
 		if (!strcmp(opt, "tsize"))
 			priv->filesize = simple_strtoull(val, NULL, 10);

-- 
2.47.3




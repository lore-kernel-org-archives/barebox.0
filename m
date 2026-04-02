Delivery-date: Thu, 02 Apr 2026 09:21:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNJ-007lhw-1f
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNI-0008T1-UF
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EjBtrjcwDjPbmC8X7EBCgdm/91y/glJXqo0YoUwf+v8=; b=toiREDoOZTj393sqUAJrS2bw19
	+M3MOGAu9OIIbTVIRtpKINxXErt4eeUFSjMvojGDvAF/lcHrs+jZZgzXK+h/2eammtNkNQonyZTzp
	59R37sfe9kz+j2MPsQuwHC188FGGGUbZ3yiIioN9fi1Ptw6P4CY7hgUJs3wuhfxn8DZoDTMx11zX6
	0vKh5SqhqJ68VQ2Gv+UKvqrzDCG2GFZ5nLTa+1yUcANk0aEg3LLBlFIaWpqeBUCLaQ/Yg5WbNiEuf
	AyxDy9SjMmlSISit8brUCeIu14RkEHV4LfEH3183CaR2LflQoyK/BHNdVRUh9a79ogIhH4W9hmPNK
	+x9AF2tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMv-0000000H2L3-0kKw;
	Thu, 02 Apr 2026 07:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMt-0000000H2IS-0nQJ
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:21:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-0008Dd-PA; Thu, 02 Apr 2026 09:21:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-003Kwg-1k;
	Thu, 02 Apr 2026 09:21:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-00000003PEH-1q6A;
	Thu, 02 Apr 2026 09:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:21:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-tftp-buffer-overflows-v1-3-0a18aa8ea19e@pengutronix.de>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775114481; l=1195;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IL92QsX57h9sKvcWSRGxpZdRQKVUtXfam+3h6VvIcwc=;
 b=sh85Jyc3qZyp/KHdwLVwcd2lU1jq/BrrR/b8+N06VHTv6yThjspVEXKNNdIBcXFmBv5ePwB4g
 UiW3DEBvX2PAxzYxrNasxD7pg7t/nx3gDKy0aJPT1Kvj82k66o4K26B
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_002131_242388_C9195E99 
X-CRM114-Status: GOOD (  11.08  )
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
Subject: [PATCH 3/4] fs: tftp: reject OACK with blocksize of zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tftp_parse_oack() validates that windowsize is non-zero but does not
check blocksize. A malicious TFTP server sending 'blksize\0000\0' in
the OACK sets priv->blocksize to 0, which causes:

  - kfifo_alloc(0 * ...) allocating a zero-sized fifo
  - tftp_write() entering an infinite loop on
    'while (kfifo_len(fifo) >= 0)', spinning on kfifo_get with size 0
  - tftp_put_data() rejecting all data packets as oversized

Add blocksize == 0 to the existing OACK validation check.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/tftp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 03e9d552aa..6dd4829184 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -382,7 +382,8 @@ static int tftp_parse_oack(struct file_priv *priv, unsigned char *pkt, int len)
 		s = val + strlen(val) + 1;
 	}
 
-	if (priv->blocksize > TFTP_MTU_SIZE ||
+	if (priv->blocksize == 0 ||
+	    priv->blocksize > TFTP_MTU_SIZE ||
 	    priv->windowsize > TFTP_MAX_WINDOW_SIZE ||
 	    priv->windowsize == 0) {
 		pr_warn("tftp: invalid oack response\n");

-- 
2.47.3




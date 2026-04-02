Delivery-date: Thu, 02 Apr 2026 09:21:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNJ-007lhv-1e
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:21:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNI-0008T0-TC
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:21:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9j/heIQSvXlQjN5T4Tm19n8MJNy2VEW/6PUMcu7XlNg=; b=3G6Ndf9yE0WrJeOMVGmqMJQOWp
	Q861ts9hyNzsRC3h140Qbl41Nba637DbH2GjeeUbf1MP9aDtp8J4M2zOCn/q0zB9OuNPx1fiui419
	+ly89EqInVBCA6C1wbCrJi1Zo2oq6QaMxQXgiFhaxv+POiAyIRxybRTnW4Qb8OIpKDxZil/7vQxj3
	XawS4ehOeK78sik5vh9kgmd0CMddkuoVUUUsxoUTcWHasYe5AhaRvvIk4VaDCd5pB0Vd0cwyKC8wL
	TdjTCj0by2nq5Ky2q1479LriRojzS2HSGYb3MQjXfJ2UQ90rrpMElyRR7DLA07Z7sd7R5BxntjQ/d
	MQYqfJ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMq-0000000H2Hp-2aNo;
	Thu, 02 Apr 2026 07:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMl-0000000H2FU-1kfD
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-0008Dc-Pa; Thu, 02 Apr 2026 09:21:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-003Kwh-1e;
	Thu, 02 Apr 2026 09:21:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-00000003PEH-1r9w;
	Thu, 02 Apr 2026 09:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:21:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-tftp-buffer-overflows-v1-4-0a18aa8ea19e@pengutronix.de>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775114481; l=1032;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RRmykAGjV/3F+3y/UN/eKE8tjjFrxVKxS4oeGvwhMwE=;
 b=EB88J7cOce1xTZttEfSiLHxX7eHimOT1SCh2ORmChPAnc9Jybg7kWh+Ndc4bgMvhFe/8/1vCZ
 dLJUWGdiym2DmhFKu/1bPesMeNL5UYjLVxTSiVK1rd97BwrIZ95R7+I
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_002123_600154_06CDB715 
X-CRM114-Status: GOOD (  10.36  )
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
Subject: [PATCH 4/4] fs: tftp: use bounded format for TFTP error message
 debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pr_debug for TFTP_ERROR uses %s to print the server's error
message, but the message may not be null-terminated. This causes
pr_debug to read past the packet data into uninitialized buffer
memory.

Use %.*s with the remaining packet length to bound the read. This
is only relevant in debug builds but is still worth fixing for
correctness.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/tftp.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 6dd4829184..8f01754fc0 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -631,7 +631,9 @@ static void tftp_recv(struct file_priv *priv,
 		break;
 
 	case TFTP_ERROR:
-		pr_debug("error: '%s' (%d)\n", pkt + 2, ntohs(*(uint16_t *)pkt));
+		pr_debug("error: '%.*s' (%d)\n",
+			 len > 2 ? len - 2 : 0, pkt + 2,
+			 ntohs(*(uint16_t *)pkt));
 		switch (ntohs(*(uint16_t *)pkt)) {
 		case 1:
 			priv->err = -ENOENT;

-- 
2.47.3




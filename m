Delivery-date: Mon, 13 Jan 2025 12:29:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdG-000ZsA-2A
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdF-0006FR-7n
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YqM8pBkizgTvYIoYoMvrKZLsd+D5MegjNiMBqZcZvw=; b=n3sxXKM6DB28WeP0eZfIHkSVio
	6gWjAKnClC9pjeXt7lL7hHsegGTst2GLvcMQRw/tKrWcGZiXRCMEYhmBEc87zxCeni2pLiNkd52lB
	YfG9/c9kofxuv/JC9GzKlIOzHOhmCmK9y+Oc/1sxxj/j5rPqHCAebMFIep1g6cVXyRoBvALclH7YY
	9OcvnzLsmKxSFPAg5+MyDkpMDCWgYfFl5rwtrpJwQ5K7gXz66u9l4jqK00hqIec+QrxIaJHXQxcnU
	y4LnCSKjK45oCGTMW6mlpnKIGY0ZDU+GISd66jc7KwNZFFbL5ryEcfTWZWhL9MiYkS1jcJ0n05fXL
	Y5fI4w1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIck-00000004uUv-0iWP;
	Mon, 13 Jan 2025 11:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIb1-00000004tuw-03tQ
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005ec-Qa; Mon, 13 Jan 2025 12:26:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIaq-000FRB-3D;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1Q;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-2-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767610; l=533;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lS8VQCgPL7Ogq16+eYjZPpZT/eVrWtgS4IZxRp1vHZ4=;
 b=haGv/x6g5zeH9a+I8tDcb+lXL1u+SxDbFdZFsOU19ebxGALIKKMUdhq766drPOukztc5ipqFy
 /4O95Ae9jEFDRXoH32hJ37RPQAlbcxl6WsFFZPfHkSVwb6Af7X3DLyp
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032703_055457_7925BDEA 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/23] lib/rationale: compile for pbl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upcoming K3 PLL support needs rational_best_approximation() in PBL, so
enable it for PBL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/math/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/math/Makefile b/lib/math/Makefile
index 197f92a097..3a31567c58 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -2,6 +2,6 @@
 
 obj-y += div64.o
 pbl-y += div64.o
-obj-y += rational.o
+obj-pbl-y += rational.o
 obj-y += int_pow.o
 obj-y += int_sqrt.o

-- 
2.39.5




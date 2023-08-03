Delivery-date: Thu, 03 Aug 2023 09:19:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRScR-004idN-CY
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 09:19:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRScP-0001kL-KP
	for lore@pengutronix.de; Thu, 03 Aug 2023 09:19:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ezFiItWPq7xMqAPkGo1la58bn9waX0fnJk9vMUZCIAw=; b=pO0SndDiZcLYRBCqYsxqrQB0BB
	YMx7M5UT8GY6na42kLLFwJWyQkEvuJjSNPv5Qw5BtW1D1DB5xwXN9luUaKvsPpe1BEEPQ9FoXBRTK
	//sJGvKUYKu0yvTOQ4Mh+67PBzCgFoRm1BLNRjECTySy8eoebPuAQU5cnhEOQyHyTNSnk4aNSTDyJ
	MOBCK5ZQp73ZryeOPZIAAN55wiYB5T7uBKZ8sy8eaCx2vWBbFCmk+iZtV86U7gyX2H4spOTm9RpjL
	YmBAExmdrn6vO9yzUgvf0pezgXvFt2nW2MUklGjrRzynwOdVUb4GCcgMROxRLY2d4ODbZnUw0yPKh
	dXdQGh4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSbN-006r04-0g;
	Thu, 03 Aug 2023 07:18:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSbK-006qzD-2Y
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 07:18:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSbJ-0001Qq-Bt; Thu, 03 Aug 2023 09:18:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSbI-000mxq-NS; Thu, 03 Aug 2023 09:18:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSbI-00G9gA-0a; Thu, 03 Aug 2023 09:18:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 09:18:23 +0200
Message-Id: <20230803071823.3850446-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_001826_834031_BAEF4828 
X-CRM114-Status: GOOD (  10.35  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: bcm2835: Fix grammar
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

s/barebox supports has support for/barebox has support for/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index f6df3e9e80..cfd3bb2edb 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -4,10 +4,10 @@ Broadcom BCM283x
 Raspberry Pi
 ------------
 
-barebox supports has support for BCM283x-based Raspberry Pi single board
-computers. Support is most extensive for BCM283[567]. For the newer BCM2711
-used in the Raspberry Pi 4, only basic support is currently available
-(Serial Port, Pinctrl/GPIO, SD-Card).
+barebox has support for BCM283x-based Raspberry Pi single board computers.
+Support is most extensive for BCM283[567]. For the newer BCM2711 used in the
+Raspberry Pi 4, only basic support is currently available (Serial Port,
+Pinctrl/GPIO, SD-Card).
 
   1. Prepare an SD or microSD card with a FAT filesystem of at least 30 MB in size.
 
-- 
2.39.2




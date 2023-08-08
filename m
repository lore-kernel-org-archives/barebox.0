Delivery-date: Tue, 08 Aug 2023 11:27:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0M-00CDr5-9H
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:27:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0K-0002hq-Hs
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:27:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=m/IRTuTQguq/d5EKR+i1J3keOsDda25yINvwT0GG1Jw=; b=sPDGQwTzZi1w7HQRbQXyaOf2uU
	XvxPcvYYlfSdmCERHpF8CMu8TdrgOjEay1+qCjHmSxd150aSDiGVjWl9Z6QHjNNmIh88+IcIHnXQd
	sVJz+Q88LgifxTIrZzyh40J4iuv61ir7AvT0kZmWabazzg2Nir66itXqj6uYKiMdcOU+IMW5k4sXM
	KER3JcYtW2lGw7+kSaXPJn3OZ00gaBtzdslNVwoGPS6hjkBrYC4sCkbLFQk2zec4UdnkYWQSB0BYP
	XwoVGkeq+hiZy+NumpQ2gOXxvBMPBvN1hKfHdrgLGBXKyABYHHY9Q1340TYBb/tQw2MTRB7fM61dS
	Gd3b74eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIz1-0028Na-2D;
	Tue, 08 Aug 2023 09:26:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIyw-0028LX-2w
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:26:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyq-0002VW-Cs; Tue, 08 Aug 2023 11:26:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-001wyx-Qd; Tue, 08 Aug 2023 11:26:19 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyo-008YLZ-2D;
	Tue, 08 Aug 2023 11:26:18 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Tue,  8 Aug 2023 11:26:14 +0200
Message-Id: <20230808092617.2037996-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_022626_952592_F648EE73 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] doc: dt-bindings: barebox,environment: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Roland Hieber <rhi@pengutronix.de>

---
 .../devicetree/bindings/barebox/barebox,environment.rst         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index 40239f424ac0..67d1173b2fdc 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -23,7 +23,7 @@ the path to the environment. Supported values for <type>:
   be the label for MTD partitions, the number for DOS
   partitions (beginning with 0) or the name for GPT partitions.
 
-If the *environmnet* is located in a GPT partition, use
+If the *environment* is located in a GPT partition, use
 ``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
 
 The file-path is the name of a file located in a FAT filesystem on the
-- 
2.39.2




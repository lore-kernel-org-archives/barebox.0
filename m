Delivery-date: Fri, 22 Nov 2024 17:06:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWB7-0054gq-2C
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 17:06:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEWB7-0001Zx-50
	for lore@pengutronix.de; Fri, 22 Nov 2024 17:06:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R29Pl9EotTuSqZl/+87qCKJHFBASKoHElJkdFIFDGiw=; b=C9uPewg7lRVDHXS3oZPiF3Fdva
	lLn2sKLzwYqqghmuYkr0iefIc4G80V54G4EfmHWH2UEpVdXI/LCdfkvrn6hpNvAwKrEsT5ZS7eICW
	jL9lH/6N4U3cVmlirrPtCxX0VDxm5BVc4fM3J71K63Ym6/0Gqf00iP8Uut51wy4FKIuJ8OZ3LkKKx
	IW1p7A1umGIR3lJ5weE+F08FtzCyh9L9Bf6yeKZ2vSj3c98JuCDB8ON3Sr5GcN+eChrkXYb8T1Bg6
	DMu+o3FfjbpTrIzC2FgbPdH2VWInP1rhwr/dm5vtfeIVNHosF2O+BmEstWO6w2Hanlfo3zy1lRXJP
	IzrJ4X4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWAU-00000002mqs-3j5d;
	Fri, 22 Nov 2024 16:06:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEWAR-00000002mq2-1OMx
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 16:06:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-0001SE-SO; Fri, 22 Nov 2024 17:05:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-00261r-2C;
	Fri, 22 Nov 2024 17:05:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tEWAO-00GK8G-1v;
	Fri, 22 Nov 2024 17:05:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 Nov 2024 17:05:54 +0100
Message-Id: <20241122160555.3890597-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_080559_368453_D51F3E92 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] sandbox: noshell_defconfig: set CONFIG_CONSOLE_DISABLE_INPUT=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are currently disabling CONFIG_DISABLE_INPUT, which is non-existent
option. It makes sense to _enable_ the option though after fixing the
typo, to get more coverage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/configs/noshell.config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boards/configs/noshell.config b/common/boards/configs/noshell.config
index 4696a1b3f971..3a91187f9188 100644
--- a/common/boards/configs/noshell.config
+++ b/common/boards/configs/noshell.config
@@ -1,2 +1,2 @@
 CONFIG_SHELL_NONE=y
-# CONFIG_DISABLE_INPUT is not set
+CONFIG_CONSOLE_DISABLE_INPUT=y
-- 
2.39.5




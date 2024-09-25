Delivery-date: Wed, 25 Sep 2024 16:36:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT89-002d5U-08
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:36:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT89-0000r4-5t
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=koMTeI2lr7FCUIEnSPeUIAEpHebiEUf+gXo0elSR9Qo=; b=r1qQQCp3cWNP4AhWYMV0kERHJi
	6lDCHdVJx1f2rNT5SUe/WuGNaZEOJvgcV3MiVoSdbiSZeBMjOotpp7AeDsw2PqiMDlxQqRPw+4paI
	UJ+uy8NeLFbiKLqCJHq8ZVLRZuVsVJ6WXsR2uxnzxq9F51UgVSH31ZFnQZasLtGj9duLeRsa+rcHZ
	IlkbY1wISdHFPbgi3vZoE3yp5K5oBQmWgCSw1+yY9ecl/SxMYHr1+VgN2EgaKHEgyr4vysxacNCSD
	WUTxP9XxyZUWrmsAkPnv2ilvpwTuX8xzKLAH+eIcJtMPNT6mXMMwO55U3I1cgxUjn5hz5aRdW2G0n
	espBo5Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stT7f-00000005exE-0BCK;
	Wed, 25 Sep 2024 14:36:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stT6S-00000005ea5-2gfq
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:34:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-0000If-BJ; Wed, 25 Sep 2024 16:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6Q-001TDS-Td; Wed, 25 Sep 2024 16:34:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-00DPQo-0y;
	Wed, 25 Sep 2024 16:34:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:34:48 +0200
Message-Id: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIgf9GYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyNT3fSixIKMzORiXTPzJCMjE5NkS6OkJCWg8oKi1LTMCrBR0bG1tQB
 hRa4pWgAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727274890; l=815;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mGp6i/gF3mTSJHAs6PCALAWfJdgIhuyzCOVeVejwGPI=;
 b=Nt4q5AA1b5Co/lMQ+/8cAvsbTuR+JXJb1cTt5/uM76Eu+jn28DlejsNkBDHMpou5rqcJesj4r
 qI1YwUpTD7dDtWY3/3nDQfN79nXOa127FEB6ektZ8r7zsbJd13mzrB8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_073452_722589_762A0222 
X-CRM114-Status: UNSURE (   6.88  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] graphics updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series fixes some bugs and oddities in the graphics routines I came
across when testing the upcoming Rockchip VOP2 driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (5):
      graphic_utils: Clip to screen boundaries
      commands: splash: honour line_length
      gui: fix alpha blend
      fbconsole: make background pixels transparent
      fbconsole: actually store rows/cols

 commands/splash.c         | 10 +++++++---
 drivers/video/fbconsole.c | 26 +++++++++++++-------------
 lib/gui/graphic_utils.c   | 32 ++++++++++++++++++--------------
 3 files changed, 38 insertions(+), 30 deletions(-)
---
base-commit: 419ea9350aa083d4a2806a70132129a49a5ecf95
change-id: 20240925-graphics-67b2244c92bb

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




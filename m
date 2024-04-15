Delivery-date: Mon, 15 Apr 2024 11:17:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwIT4-001lJR-34
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 11:17:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwIT4-0004cv-D7
	for lore@pengutronix.de; Mon, 15 Apr 2024 11:17:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NYKm7Sz2uiV/bSZIVXLh0lCy2caFxzBZkebyM6SmLpM=; b=ljCv8xqcA1XHjv1w5DR/TvmS1a
	AAKCs8MfahQ5+rJVgoZMr2uRnWHUu8X5MTHoh2tBOoenP6YyPbyCvx6LLOC3Bz5zYHplPvx3N2fPJ
	6vqzdDrJ67VJ/Br8Jv9ACofY/UmLpbsnoseeSMjevyY8dk51tZ/rEn04TUn1S9hQl4wVS9M+Av5AQ
	M5tqoHdrjZzxfQiRfgJOG0xG3jaiRABS2I04O/NcnOx3nGp50b3WAAr3mPthDpH98se+yhwmTHVs3
	hzuKSXDQW94aEtlioYanzrBY+M65vPpDOqm/fBwFfFprl4pcPr4wMnaAV2Ij0+f6Afkn4odcG6//u
	R/2svSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwISf-00000007fr0-24eB;
	Mon, 15 Apr 2024 09:17:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwISb-00000007fqF-3ofS
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 09:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwISa-00041t-No; Mon, 15 Apr 2024 11:17:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwISa-00COj9-BW; Mon, 15 Apr 2024 11:17:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwISa-00G364-0r;
	Mon, 15 Apr 2024 11:17:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 11:17:07 +0200
Message-Id: <20240415091707.3825140-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_021709_966755_ECF0B4F9 
X-CRM114-Status: UNSURE (   9.89  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] Documentation: devel: project-ideas: remove outdated info on MMC speed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is now doubly outdated. We have support for DDR in a number of
drivers and HS200 for one SoC (ZynqMP) and more is likely to come with
time, so remove that outdate info.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/project-ideas.rst | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index da146c3e520e..4127b2556b55 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -156,8 +156,6 @@ on top of a block device which caches blocks previously read from the
 hardware driver, often by means of DMA. There are a number of improvements
 possible to increase throughput of barebox I/O:
 
-    - Support for higher MMC speed modes: The maximum currently supported
-      is 50/52 MHz and no DDR.
     - More efficient erase: Communication protocols like Android Fastboot
       encode large blocks of zeros specially. MMCs with erase-to-zero
       capability could perform such erases in the background instead
-- 
2.39.2




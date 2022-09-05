Delivery-date: Mon, 05 Sep 2022 09:43:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6lS-007Epo-Na
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 09:43:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6lT-0008GG-5w
	for lore@pengutronix.de; Mon, 05 Sep 2022 09:43:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J7vuzUBov4KLtb0x/ugE3rV/hQCDANNRJJsCtT0GLiM=; b=Nm/LF8bOhSWYVWY8j6v9lUHKgp
	Dan2zAf1jcrK18VQrW2l9RarGP6eSkH4xAvtdRFsG45IlNqrzyx/5vtWzfaBNBP6nd19mry5AVA1f
	JV369VMwi8cbUt12Cn8HK/Ebm3pILDdjUZGWQIIpAyW6oM2GdmtqCPsrK/GT5G16q9IoqmANrFEor
	Y1TAuMlegT6flhOdnE4wurudFlA1woIPPDpMhI9GPh0zVRHSLPzK9EML8NyMy6MaiR4w9EnNeUiFE
	PH/Vs2zJdWa8Gg45wgQmjnZ5heaRIrfaSq4k6TduZP5+KoBwMKKdY5Dt1sQEEMhBYdnLCGo9dQeR/
	x5fXE1tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6jd-00DVW6-Oc; Mon, 05 Sep 2022 07:41:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV67X-00Cp7O-L1
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 07:02:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV67W-0002FS-9f; Mon, 05 Sep 2022 09:02:10 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV67T-0040pw-Nl; Mon, 05 Sep 2022 09:02:09 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV67U-002FyS-Uz; Mon, 05 Sep 2022 09:02:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 09:02:08 +0200
Message-Id: <20220905070208.538012-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_000212_706567_433E63C7 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: of_probe: create board's machine device at the earliest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently create devices for matching reserved memory entries and
firmware before creating the machine device. In a deep probe system, the
machine driver would be probed directly at registration and as such
needs to be probed before other devices are created, so it can disable
other devices if needed. Move the machine device registration to the
top, so board drivers can disabled reserved memory entries and firmware
if they need to.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 52e6a9294e11..6a51dd71793d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2503,6 +2503,12 @@ int of_probe(void)
 	if(!root_node)
 		return -ENODEV;
 
+	/*
+	 * We do this first thing, so board drivers can patch the device
+	 * tree prior to device creation if needed.
+	 */
+	of_platform_device_create_root(root_node);
+
 	/*
 	 * Handle certain compatibles explicitly, since we don't want to create
 	 * platform_devices for every node in /reserved-memory with a
@@ -2515,8 +2521,6 @@ int of_probe(void)
 	if (node)
 		of_platform_populate(node, NULL, NULL);
 
-	of_platform_device_create_root(root_node);
-
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
 	return 0;
-- 
2.30.2




Delivery-date: Fri, 09 Sep 2022 09:46:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYiN-00Be7A-KY
	for lore@lore.pengutronix.de; Fri, 09 Sep 2022 09:46:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWYiM-0005fH-8h
	for lore@pengutronix.de; Fri, 09 Sep 2022 09:46:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tAtbLvO6lnViwjccDEUGSX7Dg9Qdhkr8WMCfgadnkmk=; b=pCYqw7gFw6z7ADldjSbZNwouhm
	43lq+1NY23vg0OEa1NsWZYo92QTK5FbARnHxx+61RvIliuWcgB5vZB/D4ar42cYpRlqvH2tLBt448
	SZOVPuZFVKrX/U+ObwyW/vHTsoUjzr7G6NVX+x9Gz/Nn5K0O0CBTDlyBUbtQrDy+PRl9djx4uNinw
	ug44jROFVHy58n6bNqxhCsQwaFbJVWvk1A8dfLWctsFQdPvGGMT+VqGhbwDj8LPRj88dH1dncv3Ui
	fQPzGPJeJ5BhOZuGWMGptcovacLUjUok1PFhIJrwmKsrIjPEYPCaslKws5fb+Z0vlmBeO/X5aRYHr
	C5FzRA2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYgp-00E5Lt-Gq; Fri, 09 Sep 2022 07:44:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWYaI-00E1KM-BP
	for barebox@lists.infradead.org; Fri, 09 Sep 2022 07:37:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaG-0004Ei-KY; Fri, 09 Sep 2022 09:37:52 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaE-004mC6-2H; Fri, 09 Sep 2022 09:37:51 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oWYaF-00DgEP-4q; Fri, 09 Sep 2022 09:37:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  9 Sep 2022 09:37:49 +0200
Message-Id: <20220909073749.3260556-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909073749.3260556-1-s.hauer@pengutronix.de>
References: <20220909073749.3260556-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_003754_434652_EA423A44 
X-CRM114-Status: UNSURE (   8.65  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: rpi: enable bcmgenet driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rpi_v8a_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index e218311a72..75f62ddb65 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -79,6 +79,7 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_BCMGENET=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_I2C=y
-- 
2.30.2




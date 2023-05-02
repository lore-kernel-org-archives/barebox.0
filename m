Delivery-date: Tue, 02 May 2023 11:15:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6q-002Aew-WE
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6o-0002II-Dm
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLgny7wIFAuKheaRqLr3ZbnoNyxOUVz6+4sfOXqF4ss=; b=imND9xjsX73e2qu33JDTYZ7itY
	AxUWCKU/TrK28slIfzxZp47FmKEhmdvoutF/X5nw1SOzRGga3CnvhEHSomU1Z0VzMZPZd+AVlcN7B
	JN+pvmIQoMH5BMnKe8+nyxRkuGAQRZb33EUf1UcimLJ4hZWtLZHA7a1tfwHI8ItUUjRTBRnM7ZY9b
	p4KKHvZkq5BDZZODgqT/CpKYu1pzkOkcoKm5inZ0m1iLWybRIu1NYCuUNd1AxZRmd4ZtBMslFBCxj
	lf9J4p/Jq9r3/wSyNYuxwkwmeOajsRK0T732GMol7BOf5fk4dJy2O4opxgNugeC+I0eXkn3nLCdpz
	rT1DniLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5Z-000jKB-2K;
	Tue, 02 May 2023 09:14:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGe-1h
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5V-00019e-Ak; Tue, 02 May 2023 11:14:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-000YjI-Nw; Tue, 02 May 2023 11:14:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqyq-3l; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:08 +0200
Message-Id: <20230502091419.2551228-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_568639_58F25D5E 
X-CRM114-Status: UNSURE (   9.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	TVD_SPACE_RATIO,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/12] ARM: versatile: Enable CONFIG_RELOCATABLE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/versatilepb_arm1176_defconfig | 1 +
 arch/arm/configs/versatilepb_defconfig         | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index d6b0ec898e..7a123a0bae 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -5,6 +5,7 @@ CONFIG_PBL_IMAGE=y
 CONFIG_PBL_RELOCATABLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0xa00000
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="versatilepb> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 2165dd37cb..b4970083cf 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -3,6 +3,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_PBL_RELOCATABLE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="versatilepb> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
-- 
2.39.2




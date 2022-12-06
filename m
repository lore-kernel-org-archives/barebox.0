Delivery-date: Tue, 06 Dec 2022 12:29:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2W8p-00CUS8-B6
	for lore@lore.pengutronix.de; Tue, 06 Dec 2022 12:29:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2W8o-00030q-Qw
	for lore@pengutronix.de; Tue, 06 Dec 2022 12:29:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WgQQ/x52eOY6i6Wz1NXyGrmHv6MGFDqRSyl7sbAhGos=; b=byrhnpWaH9BcjYiFL71/C7uwKw
	p9+Cf0F3ytuboq44kPwiATPmIH2kxBjvMO39XV4Iy8cCRSXn/dM42bAIJlpsfDDV3uhr2FuA9domA
	Q9YMgpxqzW+jbEI3XurraVBvPMHqhVk/7QKANLJNeea2xYLhO/UKQFksqk2/EA2MBaU9TVBN5qlmG
	OjQ/gGc44GhegIzBW+PhoHiFmxL4flwTIk/5cac2yJ2K8gGae9XEn/Z55JmPed3XYmm8VEgLyCt5o
	HUIzW1hqdDDIMQiPiO7nB3DymEXAqbzbMjqz3KlV336PmkBnXGOsDwi2AB5NgmJK8z5phCYDfxuvv
	ZOoGawxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2W74-008RQL-GY; Tue, 06 Dec 2022 11:27:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2W5f-008QPX-Vy
	for barebox@lists.infradead.org; Tue, 06 Dec 2022 11:26:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p2W5c-0002Us-Ga; Tue, 06 Dec 2022 12:26:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1p2W5b-002gTi-2W; Tue, 06 Dec 2022 12:26:19 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1p2W5b-00AxX3-5m; Tue, 06 Dec 2022 12:26:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: afa@pengutronix.de,
	ejo@pengutronix.de,
	barebox@lists.infradead.org
Date: Tue,  6 Dec 2022 12:26:14 +0100
Message-Id: <20221206112614.2612071-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_032624_067366_1A26E8ED 
X-CRM114-Status: UNSURE (   9.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pbl: set IMAGE_COMPRESSION per default to lz4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LZO compression hasn't been updated since 2017 and embedded build
tools like Yocto dropping the support for it [1]. So switch to LZ4 as
default since this seems to be the most comparable compression standard
according Ahmads measurements [2] and the kernel suggestion [3].

[1] https://lore.kernel.org/all/20220524152401.1663317-9-ross.burton@arm.com/
[2] https://lore.barebox.org/barebox/20220713100922.1880282-1-a.fatoum@pengutronix.de/
[3] https://lkml.org/lkml/2020/7/1/848

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index ba809af2d5..91970c19bc 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -63,7 +63,7 @@ if IMAGE_COMPRESSION
 
 choice
 	prompt "Compression"
-	default IMAGE_COMPRESSION_LZO
+	default IMAGE_COMPRESSION_LZ4
 
 config IMAGE_COMPRESSION_LZ4
 	bool "lz4"
-- 
2.30.2




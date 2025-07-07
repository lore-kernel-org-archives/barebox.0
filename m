Delivery-date: Mon, 07 Jul 2025 11:35:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYiG1-00Eyxu-1D
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 11:35:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYiG0-0003AC-RP
	for lore@pengutronix.de; Mon, 07 Jul 2025 11:35:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UMSU8MR09s1nJoHU2kjbbfpxXkYYvlAhevB/35eYBfw=; b=UVHCA7nEO/b1W+Zd8yFBqQVaXZ
	/26uzTjd72Xs42RbSI2JoWyGH9k0owy1fpEHGXPgyMhVr+sO2hqM9/YRGKIC7gBKDHFm4BHjGcVUJ
	FHdz0tkyvhMDl5ROmZTedijLOIqABtsIR3vWuXBTKAMMoaxAhY56BCHpesEz9vPEadbpDw2WDuHSt
	Wn3kGjV0nst+XldgDnT3V1X8RfM3hf2BL14g7ODEf6vtgLirQrYpWbbCZnzUARfJnZklnSBdg90PU
	6IaokKLaLv1jxExNBUl+WJ4ZVUPeWqcRQVMttv5IcIR47kxUSa3ue6ftTvx14yQULRzAO2EnQBwlp
	6+Hdq+Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYiFN-00000001zsA-1EOE;
	Mon, 07 Jul 2025 09:34:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYheT-00000001uFL-0Tj8
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 08:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uYheP-0007ho-CO; Mon, 07 Jul 2025 10:56:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uYheP-007DfH-0c;
	Mon, 07 Jul 2025 10:56:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uYheO-00Grbl-1r;
	Mon, 07 Jul 2025 10:56:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Jul 2025 10:56:36 +0200
Message-Id: <20250707085636.4019256-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_015641_147030_3FF399B1 
X-CRM114-Status: GOOD (  10.47  )
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
Subject: [PATCH] Documentation: boards: k3: fix typo in build instructions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file starts with defining and exporting CROSS_COMPILE_32 and
CROSS_COMPILE_64 environment variables, which are used for building the
individual components of the boot chain.

CROSS_COMPILE should be set to the $variable, so it expands correctly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Reported by a user on IRC.
---
 Documentation/boards/ti-k3-am62x.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/ti-k3-am62x.rst b/Documentation/boards/ti-k3-am62x.rst
index a78fffdb7f4b..8fa7bfae7a1d 100644
--- a/Documentation/boards/ti-k3-am62x.rst
+++ b/Documentation/boards/ti-k3-am62x.rst
@@ -37,7 +37,7 @@ Building barebox for the Cortex-A53 processors
 
 The BeaglePlay image is built as part of the ``multi_v8_defconfig``::
 
-  export ARCH=arm CROSS_COMPILE=CROSS_COMPILE_64
+  export ARCH=arm CROSS_COMPILE=$CROSS_COMPILE_64
   make multi_v8_defconfig
   make
   cp images/barebox-beagleplay.img $TI_BOOT/barebox.bin
-- 
2.39.5




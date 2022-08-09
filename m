Delivery-date: Tue, 09 Aug 2022 08:31:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIls-00H0Az-8b
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:31:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIlt-0007k8-3t
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:31:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xBpdV1lIElE8OWlXk1Qbm0JdxsovQ1E85SITzCDgyog=; b=MuSPmbQe7xodoGJ+G31098KjQm
	hQRLoRnNHdD6LU2ETovlupwrj5GnjZhL/Crna6KPh0Hn2qcxD4xLRLUCsJbfmMqgXQ+aLmF4dNJY0
	EllC99OxsYiM1fY90VCfQ4DPp6FN+bmhzsfSW1Q4Vwh+Y6MlAzIzbNSW86kKyRjM2iOaVc2HS2EsU
	xhnUflw0hGyThaUtOFSrPueYZimPplCcWIVEt9J7fGTJCkXPGymSY89J4LytxTYN/8lyU0Ri+jXZ3
	vYHtB9f761EXbWkzjcHNLOIe3sAdDOHMJc6XOaM2qlsktEjuCP6xKaJ93dalyClwVqHryteAYCIfb
	gc1kECgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkX-001xAr-1h; Tue, 09 Aug 2022 06:29:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkK-001x4t-5w
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:29:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkI-0007EQ-IW; Tue, 09 Aug 2022 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkF-002eZd-Ii; Tue, 09 Aug 2022 08:29:41 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkH-007LNS-1W; Tue, 09 Aug 2022 08:29:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:29:38 +0200
Message-Id: <20220809062938.1750369-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232944_336394_2BCAC469 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] ARM: dts: stm32mp: add bootrom serial (DFU) reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The same register we use for the reboot mode communication between Linux
and barebox is also sampled by the bootrom. If the lowest 16 bits of it
are 0x00FF, the bootrom will enter DFU mode. Add the appropriate
reboot-mode, but with a barebox, prefix, so Linux doesn't automatically
provide it to userspace along with the existing loader and recovery
modes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index ed7cf6192bea..ac6536a556a9 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -41,9 +41,10 @@
 	reboot_mode_tamp: reboot-mode {
 		compatible = "syscon-reboot-mode";
 		offset = <0x150>; /* reg20 */
-		mask = <0xff>;
+		mask = <0xffff>;
 		mode-normal = <0>;
 		mode-loader = <0xBB>;
 		mode-recovery = <0xBC>;
+		barebox,mode-serial = <0xFF>;
 	};
 };
-- 
2.30.2




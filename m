Delivery-date: Fri, 07 Apr 2023 20:46:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkr6G-00DRXk-SJ
	for lore@lore.pengutronix.de; Fri, 07 Apr 2023 20:46:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkr6G-0000wz-MZ
	for lore@pengutronix.de; Fri, 07 Apr 2023 20:46:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YVMbQuFaF2RFNQ+l/PInxHVgkqTtB+6S8b2PmT0UR5g=; b=gTwf5EaKZ4zUyqIgeOcnx0cHVQ
	UgaHPtaMG0STX0RO+SnYp0/voprM1kBh29GBaRJJZxDNDWBp270SxmATrTYECZJe/yAgWh3JY6ksV
	IpMkxEt9dMImkJL0MaoiWXtFXzulqgQ5JxxXsog8qP77Laxgop2zJFQ3nW2uSYQH0HG6R1d0RaxcO
	DXWpLDM04+Ce16ptNd8U5c7FQOxTBcxzJbdBZBamu9udY93vTfAV3YjEdOzmer2GUt1OlGnp/oKX0
	1xKGeB5dUZ15xce/hQoqgq5CMPFEqE+anUPi+ZDxUu3Gca49yoHabcMAO+qgnwRQK/Il3RG2IGtO0
	vsZ+V52Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr58-00AuhT-1X;
	Fri, 07 Apr 2023 18:45:06 +0000
Received: from mailrelay5-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:404::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr55-00Augx-0F
	for barebox@lists.infradead.org;
	Fri, 07 Apr 2023 18:45:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=content-type:mime-version:message-id:subject:to:from:date:from;
	bh=YVMbQuFaF2RFNQ+l/PInxHVgkqTtB+6S8b2PmT0UR5g=;
	b=CcKvp7PqLV0kXjybUH4xYAUwzrhNgKqWh61OcUV3Kkjv7LBkf+doHUD6ORZhemAg7DZVBnjW9OobF
	 zwKBF1GAaL5BxvTmPGLBz1YZL+IFpnsxBDP3zqg8ceB/EIe69RFTFo3SW5XZhwrBMy4sK/chM33WAp
	 nBtg+tNFqFL6P+Vw4B++mQ+V0tbbpE3/GZJ9jvQyFSGHbgujumrMLwJW+SotgsG2nTqaMGK3sp/5Lq
	 fssRQ8Y0uVY/RXmZLc+GxiWq2Hbb6er/vdX1V2eLGeDL2wCXaLADBNxXBwhrp7X23RgF8coLpPex0D
	 sBjmD/YMRWAyvF69zr+BCDA4SkJ1bBw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=content-type:mime-version:message-id:subject:to:from:date:from;
	bh=YVMbQuFaF2RFNQ+l/PInxHVgkqTtB+6S8b2PmT0UR5g=;
	b=n7SkoycEyjH5/HllGxsp122k8a//WQsoCnYyBe+zaq7DrWWU/XlAlLeZ5TNYbIaQtrWnyZ/KHYAOl
	 f+IZpnECA==
X-HalOne-ID: 4ce011ee-d574-11ed-8b82-231b2edd0ed2
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay5 (Halon) with ESMTPSA
	id 4ce011ee-d574-11ed-8b82-231b2edd0ed2;
	Fri, 07 Apr 2023 18:45:01 +0000 (UTC)
Date: Fri, 7 Apr 2023 20:45:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230407184500.GB1648837@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_114503_264049_B5D2A72B 
X-CRM114-Status: UNSURE (   8.08  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] ARM: add sama5d4_wifx to at91_multi_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With this change we have more chances to catch build issues during
refactoring.
The board is added to get build coverage, it is not verified if it
actually boots with this config.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/configs/at91_multi_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 6cbe013162..151f9a7069 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -7,6 +7,7 @@ CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
 CONFIG_MACH_SAMA5D3_XPLAINED=y
 CONFIG_MACH_SAMA5D27_SOM1=y
 CONFIG_MACH_SAMA5D27_GIANTBOARD=y
+CONFIG_MACH_SAMA5D4_WIFX=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-- 
2.34.1




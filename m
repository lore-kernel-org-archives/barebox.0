Delivery-date: Fri, 19 Jan 2024 17:27:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriN-007Gj9-32
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriO-0003x6-IS
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ftyn/ThCm3kAuSMiDPLZQT2Vs5C+Uoeq9PFPGIvKEvU=; b=FPfb3295yDyBiEmsbZeVCMcfG1
	y8m+x+Vjy5XUJDS0hPNEEI1YosrRgNRVk2rehbnPSmcpk0hglPnv4Rchn4pDokcWFAmSovR3JfAdP
	lm8FzP1esveS3NOgG7mFEScQL7vfVUqZir3IPiJr//wb8kk9gTwvRov/rxDawvqwgM0tBYt92yR35
	Qtn+NZUo/GqwTe4BcyYP1gPtLNwP4/Gy/ahznHNTHYjgBEfS7SlpvjK6g2B5ZTClycXwdOcoYF81a
	FmBMWCMIMjGeYza5WboqREA3/J4+mKhKzuQ7yA9h7YER09rSRfWwXD4xPvhHlXDHuIeHF49TYqMFE
	5nq8UJ0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhL-0066jJ-0s;
	Fri, 19 Jan 2024 16:26:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cP-1r
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh9-0003S6-2d; Fri, 19 Jan 2024 17:26:15 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTp-JT; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-1e;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:00 +0100
Message-Id: <20240119162610.1014870-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_750159_C833D802 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/19] pmdomain: imx: gpcv2: enable COMPILE_TEST build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While the driver is only useful for i.MX7 and 8M, it can be compiled for
other platforms as well, so add COMPILE_TEST as alternative dependency.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pmdomain/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/imx/Kconfig b/drivers/pmdomain/imx/Kconfig
index ba5fffd274fa..c0d767eb8f3c 100644
--- a/drivers/pmdomain/imx/Kconfig
+++ b/drivers/pmdomain/imx/Kconfig
@@ -3,7 +3,7 @@ menu "i.MX PM Domains"
 
 config IMX_GPCV2_PM_DOMAINS
 	bool "i.MX GPCv2 PM domains"
-	depends on ARCH_IMX7 || ARCH_IMX8M
+	depends on ARCH_IMX7 || ARCH_IMX8M || COMPILE_TEST
 	select PM_GENERIC_DOMAINS
 	default y if ARCH_IMX7 || ARCH_IMX8M
 
-- 
2.39.2




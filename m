Delivery-date: Thu, 11 Dec 2025 21:25:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDv-00AQ2q-2K
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:25:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnDv-0005cJ-72
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:25:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q/G262rcCgSpFLgRMUPQV7BDmcap55nSiSsMzoZpPq4=; b=07SoXqP+nsiTbRb2nr/THizpxL
	xoqCCnnTQhh4/Mc38bOxmTfWQp+/hhv6vLKUFSsumDqWcNlOAVLe+Uzb7pxUXta/CMiqKScYsR71k
	GMDnh+i61G+8uL1ML9HajOcDrp/jEqSf21rH8g0ZNs8fIkoJOGtU2KDzpe6Fn2sLVTczG92VQ4yyK
	tjcbAp24GNGArWYGOOiiqk9GbXaU5xmfBNWszYxJb873YlCqJ+wQlcJQgHbofOB3M8tr1lEIhjOFy
	Ia5BjsGB+Rtb/0Jvtd4jn7xLJgpZ6MJJgiVRDpovtsQba4gjpT4flfjvVCTdBubC+7Rd+3t4evsxY
	HEPmgilA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDO-0000000HDXI-0cbj;
	Thu, 11 Dec 2025 20:24:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnDK-0000000HDW4-3Ely
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:24:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-0005RO-Jr; Thu, 11 Dec 2025 21:24:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-005BQI-1L;
	Thu, 11 Dec 2025 21:24:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnDI-00000006rPs-1LPG;
	Thu, 11 Dec 2025 21:24:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:24:29 +0100
Message-ID: <20251211202435.1626910-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
References: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_122438_808902_5F25CF95 
X-CRM114-Status: GOOD (  10.40  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] efi: payload: enable build for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For some extra coverage, let's allow building the EFI payload code as
part of the allyesconfig build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rebase on next instead of basing on non-upstream patch
---
 efi/payload/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 2c47e6cb1805..275e053ca868 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -5,7 +5,7 @@ config HAVE_EFI_PAYLOAD
 
 config EFI_PAYLOAD
 	bool "Build as EFI payload"
-	depends on HAVE_EFI_PAYLOAD
+	depends on HAVE_EFI_PAYLOAD || COMPILE_TEST
 	select PBL_FULLY_PIC if ARM64
 	select EFI
 	select EFI_GUID
-- 
2.47.3




Delivery-date: Tue, 20 May 2025 14:18:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHLvQ-000pbv-2U
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 14:18:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHLvQ-0006zF-8T
	for lore@pengutronix.de; Tue, 20 May 2025 14:18:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z8A3Brk5blOFBz/NSvlJlVQa6JIZpcvmEUflJKGUMGM=; b=ZDh7Gez659GUrVL0xJ20SNxiT8
	5oz8wryQo/l2FBSgqac1DC+U++ULuotlsxFpwYnlXgUPXpW1/wvzr01YCEXlMF28S2gvGuOf4otZ9
	rJ9yc0BQozR5kS9c322D00wzvTOqL6s01yzML4/Xdk5Y8rik013bDoeOIt4R/38eZGDp0a8JeO1pF
	gYjDnU55fFTmF5a8TElCM3qYc8R0l5e6SlBkk7Kh9qrkf9lQdtP/0BY3Vn9zLCv2xOj+g2qULg3uv
	AEYsbrkk4hoqJN3wcChd52Cm77QYl+Kkz1STSassif1wnxYLUkjoSha2FoVoCGagToZiz3OHQhAzS
	biA1hK7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLui-0000000CpqA-1ItJ;
	Tue, 20 May 2025 12:17:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLuf-0000000CppS-05oz
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 12:17:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-0006ka-MQ; Tue, 20 May 2025 14:17:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-000PLY-1f;
	Tue, 20 May 2025 14:17:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-000BMc-2t;
	Tue, 20 May 2025 14:17:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 May 2025 14:17:37 +0200
Message-Id: <20250520121738.42686-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_051741_058848_22B4D851 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] ARM: i.MX: fix cpu_is_imx on CONFIG_ARM_MULTIARCH configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_BOARD_ARM_GENERIC_DT is not the only way an i.MX initcall could
run on a non-i.MX SoC. Since the addition of the multiarch (really
multiplatform) support, this can also happen with native images.

Therefore check for both config options.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/imx/generic.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index 04086a2ea88d..a0f65391686b 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -293,7 +293,7 @@ static __always_inline void imx_set_cpu_type(unsigned int cpu_type)
 # define cpu_is_vf610()		(0)
 #endif
 
-#ifdef CONFIG_BOARD_ARM_GENERIC_DT
+#if defined(CONFIG_ARCH_MULTIARCH) || defined(CONFIG_BOARD_ARM_GENERIC_DT)
 # ifdef imx_cpu_type
 #  undef imx_cpu_type
 #  define imx_cpu_type __imx_cpu_type
-- 
2.39.5




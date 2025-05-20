Delivery-date: Tue, 20 May 2025 14:18:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHLvL-000pbZ-2d
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 14:18:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHLvL-0006y8-7U
	for lore@pengutronix.de; Tue, 20 May 2025 14:18:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kFBMTuG9xRgUEDEpzFdkqjCYbEC8o92OGgtZBsrh+Wk=; b=g2UE+cHttGet8G924xaAjYYVsW
	tkW+WSnGQoDE+ZrRGEUOSNkuj7OzEZ5iW9hmW3uRO1XA06Fbnsy4WgO/y8OugvB/SD8ak7R31uZUy
	wUmb5nm+n2VYUCNf/dNq5hz3ki/7W5NVK4QerankR1lRahriqnRXzDxHFc5xA22yeQ8xIfL8c1Zou
	oH0GiEDzo+xmm70zsIkCZl1AVsbWGOAruF74EEZM0zcXSlCitnfZYy4rc2FgvQsj3NoLHZqocOQ1U
	iduNdPP0SXqFhAqGQBlntoa52gKEBEtqVRZRtUGpRYWf0QJ0iUDtcup7eos3rO98wa+fceuJLHZLC
	G/TUv7ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLui-0000000CpqI-3ELC;
	Tue, 20 May 2025 12:17:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHLuf-0000000CppR-05ug
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 12:17:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-0006kb-OJ; Tue, 20 May 2025 14:17:39 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-000PLZ-1p;
	Tue, 20 May 2025 14:17:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHLud-000BMc-32;
	Tue, 20 May 2025 14:17:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 May 2025 14:17:38 +0200
Message-Id: <20250520121738.42686-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250520121738.42686-1-a.fatoum@pengutronix.de>
References: <20250520121738.42686-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_051741_059244_6358524D 
X-CRM114-Status: UNSURE (   9.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] ARM: omap: fix cpu_is_omap on CONFIG_ARM_MULTIARCH configurations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Normally, <mach/omap/generic.h> would only be included if we are running
on some OMAP SoC. This doesn't hold true anymore with CONFIG_ARM_MULTIARCH
or CONFIG_BOARD_ARM_GENERIC_DT, because we could have CONFIG_ARCH_AM33XX
enabled, but running on some other SoC, which the header doesn't know about.

This cpu_type scheme is only used on one other SoC and that's the i.MX
and there, there is a final #ifdef clause to fix this, so follow suit.

Reported-by: Roland Hieber <r.hieber@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/omap/generic.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/mach/omap/generic.h b/include/mach/omap/generic.h
index 2961c530bc93..9802087bf295 100644
--- a/include/mach/omap/generic.h
+++ b/include/mach/omap/generic.h
@@ -56,6 +56,15 @@ extern unsigned int __omap_cpu_type;
 # define cpu_is_am33xx()	(0)
 #endif
 
+#if defined(CONFIG_ARCH_MULTIARCH) || defined(CONFIG_BOARD_ARM_GENERIC_DT)
+# ifdef omap_cpu_type
+#  undef omap_cpu_type
+#  define omap_cpu_type __omap_cpu_type
+# else
+#  define omap_cpu_type 0
+# endif
+#endif
+
 #ifdef omap_cpu_type
 #define cpu_is_omap()			(omap_cpu_type > 0)
 #else
-- 
2.39.5




Delivery-date: Tue, 01 Nov 2022 07:26:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkit-00APKP-Pj
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 07:26:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opkis-0001dR-MM
	for lore@pengutronix.de; Tue, 01 Nov 2022 07:26:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f/Vh9tdR9fxL4s96q3Ap3IP0PQhTy6O7LWnju+M3z60=; b=iQvvLQ+GO4JOCQY57ow+BURK3m
	zfDufE2Gfw7wTRgE8zOL0F25poJ6JwjAW0uR7oeMCdcjR45Gnp0Yy/+hU/OymVbmnbb4Glf2sJbAy
	v077I4o1VgsZKh+YL9ATeL7T0Tb8ggJ24Phn7MYJWU4DfgILqz7rMdA3ZqLJ6Qt090XcRAO0FE3Qo
	nq5/9mjt6LHPDoZyl5YUKuTNaycWd1PnZlc4aHnXfWKo1iVVhtMsdA8Dxur6KJNxy1lZF3UbW4/GN
	WjaxW5wy5PihBz/mnMir9TEzPJGAN/K//iyfgk4cLhDZo12/o8AG6tjqh33pBVPiI7y6bb0WmXW46
	qEIiivxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkh5-002PSZ-L9; Tue, 01 Nov 2022 06:24:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opkh1-002PQC-6D
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 06:24:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opkgj-0001Iw-IC; Tue, 01 Nov 2022 07:23:53 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkgj-001chp-QV; Tue, 01 Nov 2022 07:23:52 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opkgi-00DSGs-9V; Tue, 01 Nov 2022 07:23:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 07:23:50 +0100
Message-Id: <20221101062350.3206890-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_232411_263340_EE12A7D4 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: start: print debugging info when CONFIG_DEBUG_INITCALLS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like we now do during PBL, have CONFIG_DEBUG_INITCALLS also activate
the early barebox start debug logging just prior to initcall execution.

This is useful when debugging early hands and will only be visible if
CONFIG_DEBUG_LL is enabled and configured appropriately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/start.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index f9b617aa855a..be303514c23d 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -3,6 +3,10 @@
 
 #define pr_fmt(fmt) "start.c: " fmt
 
+#ifdef CONFIG_DEBUG_INITCALLS
+#define DEBUG
+#endif
+
 #include <common.h>
 #include <init.h>
 #include <linux/sizes.h>
-- 
2.30.2




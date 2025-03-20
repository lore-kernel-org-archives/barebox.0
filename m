Delivery-date: Thu, 20 Mar 2025 12:06:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvDjb-001rQs-35
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 12:06:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvDjZ-0000IM-9z
	for lore@pengutronix.de; Thu, 20 Mar 2025 12:06:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=upl3wp/lmPQcnSzI4SdVtJdAQBxYlnHDDemNzcEuPy0=; b=OwQtSCL1VV4XDdbeXIrOnPRq2D
	AUVAlb7U3KGhz8vxnVOJsRJBz1rYq2jJ5EtkC5ijvc1QnXq2IEJaP9hFXYGb1omYdA1x16fjZSs1p
	8ccTFmmFy2F5dDMqkozkZTWLScR4lCH8AaHFddBEWR9gS+gG3JmHzs8prkV6pILLE2QE1bDGrbbrX
	POnIopupesf1MZ5P58IU1rW3pmvL5VelXKEN7ydS5M0GiJFxgPvXpkJRHFXf/5485A4aIBC3lQ4ar
	sqfIvGBijn8JS6o9oJ+j5n4Dfho3uGi3YJndOUKq0QlnbADCdqd9Zvc8gdb4NHqpb00iMHVg6GC2t
	uo8P86JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvDix-0000000BuE1-1l7U;
	Thu, 20 Mar 2025 11:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvDiH-0000000Bu85-1RGh
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 11:05:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvDiE-0008Q2-Ir; Thu, 20 Mar 2025 12:05:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvDiD-000kHY-39;
	Thu, 20 Mar 2025 12:05:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tvDiE-000nfw-0v;
	Thu, 20 Mar 2025 12:05:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Mar 2025 12:05:21 +0100
Message-Id: <20250320110521.190945-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_040525_376910_B2D43331 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] linux/printk.h: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix typos in dev_*_once macros to make them usable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/printk.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 469ca879c7..67bdd2dc15 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -92,15 +92,15 @@ static inline int pr_print(int level, const char *format, ...)
 #define dev_crit_once(dev, format, arg...)		\
 	__dev_printf_once(2, (dev) , format , ## arg)
 #define dev_err_once(dev, format, arg...)		\
-	__dev_prin_oncetf(3, (dev) , format , ## arg)
+	__dev_printf_once(3, (dev) , format , ## arg)
 #define dev_warn_once(dev, format, arg...)		\
 	__dev_printf_once(4, (dev) , format , ## arg)
 #define dev_notice_once(dev, format, arg...)		\
-	__dev_printf(_once5, (dev) , format , ## arg)
+	__dev_printf_once(5, (dev) , format , ## arg)
 #define dev_info_once(dev, format, arg...)		\
 	__dev_printf_once(6, (dev) , format , ## arg)
 #define dev_dbg_once(dev, format, arg...)		\
-	__dev_prin_oncetf(7, (dev) , format , ## arg)
+	__dev_printf_once(7, (dev) , format , ## arg)
 #define dev_vdbg_once(dev, format, arg...)		\
 	__dev_printf_once(8, (dev) , format , ## arg)
 
-- 
2.39.5




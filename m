Delivery-date: Thu, 09 Nov 2023 13:02:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13jT-0049U0-1R
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 13:02:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13jT-0006KF-Gj
	for lore@pengutronix.de; Thu, 09 Nov 2023 13:01:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0rAdQRTtE8bp6Fs1Z+tlvayFjhtluuzU8Xcas+AyChg=; b=RRPF6yZsXU0ET0Q/eIReem7N8O
	11u0Xp87NOA8KTO5MSz1jcoUq7MgkzPzThEuyv2WDf0/bP2jXPFoYXrG3aOjJiKUtjcnPrUhU/ms0
	KeF8xmA7vfv51P/3NAbUQhD0Gzc4akSePFnT/bK2vuTyA+pqtH3EFYf5S6UV0smDuBo1Mh+tV8RKA
	fbWvUaRMcaXz1T0w6O+FLxR+RGiBBmBip87E3hxDWR2Vsrcu+vQopC6OJcAMFxuc0Vv9vkA14piDp
	I2EDAH5POguKQ1n7yrawKAh0MvJjsCp2PY9v0AYwua5BNfveJhnrmT/oNYkdkF3DFn9TUWi/ZX16x
	bjBtLEYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13iN-006H6e-2U;
	Thu, 09 Nov 2023 12:00:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13iK-006H6G-2E
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 12:00:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13iJ-0005yB-7n; Thu, 09 Nov 2023 13:00:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13iI-007ley-R7; Thu, 09 Nov 2023 13:00:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13iI-005zPv-2O;
	Thu, 09 Nov 2023 13:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 13:00:45 +0100
Message-Id: <20231109120045.1427680-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_040048_727734_4D4A9A54 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] barebox-wrapper: define stub for MODULE_VERSION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already stub out a number of MODULE_* macros to save porters the
hassle of deleting them. Let's add MODULE_VERSION to the list as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/barebox-wrapper.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index ed237877fc75..5d311e1d70f4 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -19,6 +19,7 @@ static inline void vfree(const void *addr)
 #define MODULE_AUTHOR(x)
 #define MODULE_DESCRIPTION(x)
 #define MODULE_LICENSE(x)
+#define MODULE_VERSION(x)
 #define MODULE_ALIAS(x)
 #define MODULE_DEVICE_TABLE(bus, table)
 #define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
-- 
2.39.2




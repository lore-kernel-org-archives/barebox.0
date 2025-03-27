Delivery-date: Thu, 27 Mar 2025 12:40:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txlao-004r7x-1S
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 12:40:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txlan-0007pe-CJ
	for lore@pengutronix.de; Thu, 27 Mar 2025 12:40:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pgV+NnZpRE85AzojQomMJ5JO1HJ06d2mgpLcOE0eBS8=; b=W8n8B3W/UOnDvjhfrKdh2uWgfC
	limhwFFM1myQeYf8U8SmNWjh66lEWQBRndyn7rU9RMqg+ei52+XbTjgk1rcBItJz3LrPkI8rgbd8z
	MSDqw6nTPjTWmDqyGtuR+CQxTMvv26YgizFbS5E73T+7RBZfCSWCnIztPd0F1ZY4gqdChF4kJnAdS
	5HrffAVSJtv8c9XmxcPBDYKcpTdnzHSa8gA3OdtURzldERXZMD9AebXnykDRQVD3IhC296EjEJoIp
	yXRRAers8YaiAhoP3LvMe+AHAFybgnyjN7vjgmZIEEK3bYB0glyz1Xa4fK0o+FC4mDuJb9QO5GE62
	ywNHFoug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txlaB-0000000AqR2-30ZM;
	Thu, 27 Mar 2025 11:39:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txlYa-0000000AqBT-0mX6
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 11:37:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txlYY-0007Ie-LT; Thu, 27 Mar 2025 12:37:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txlYY-001vD3-1M;
	Thu, 27 Mar 2025 12:37:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txlYY-001W6b-13;
	Thu, 27 Mar 2025 12:37:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 12:37:53 +0100
Message-Id: <20250327113753.361094-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_043756_223246_51A96207 
X-CRM114-Status: UNSURE (   7.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: make TLSF the default allocator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going by the most used defconfigs (multi_*_defconfig), TLSF is the most
used allocator and it supports features absent in dlmalloc like
multiple pools (used on ARMv7-R) and has KASAN integration, so there's
even less reason to use dlmalloc nowadays.

In preparation for possible removal of dlmalloc in future, switch the
default away from dlmalloc.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index ddc76b2033b2..f0cd2f0729a4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -312,6 +312,7 @@ config EXPERIMENTAL
 
 choice
 	prompt "malloc implementation"
+	default MALLOC_TLSF
 
 config MALLOC_DLMALLOC
 	bool "dlmalloc"
-- 
2.39.5




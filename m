Delivery-date: Thu, 14 Aug 2025 22:28:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeZ0-000chE-1o
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 22:28:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umeYz-0001b4-Do
	for lore@pengutronix.de; Thu, 14 Aug 2025 22:28:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVZR0XNo1YvCr4YV1qA+qOVk6Av9qtVbcryWTAgn6bs=; b=L9bAu81vQvVNRV9OnznluowQ9n
	uRt3lrf1E7/nC5dNKaWybzQAOgeEW+URp9bf31Jf8+3ETmJILuiHLKoBCYgNyfD0fISQtpo8iPtCM
	urNtcV2i2Ei9wYlQOSvRM/GhP2sBEZJyuvua8PwZ903GlLgMhslbchIU3LRgsOh7ESlxqZoXA4qR7
	8t2dceMDR1rKfi0fLn67OqtbnMdNR6wPZcm5kdIh7G++d/xjDobaYq8TDNAy06sRy2PYDP+8BmreK
	TnFrsgYJIhkcD0UZ1LQbZ+S55pEF5r5Zy9Zv37MuCK6PoIwdzf1t2hdvsg/NTfGexn/AwVOgeUU16
	MwtIgGRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYZ-00000000VEa-0sWb;
	Thu, 14 Aug 2025 20:28:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umeYT-00000000V8l-0EBd
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 20:28:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umeYR-00019L-Pm; Thu, 14 Aug 2025 22:28:07 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 22:28:05 +0200
Message-Id: <20250814202805.354827-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814202805.354827-1-a.fatoum@barebox.org>
References: <20250814202805.354827-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_132809_106259_BF8C9F87 
X-CRM114-Status: GOOD (  10.80  )
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
Subject: [PATCH 8/8] poller: allow suppressing overtime warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In emulation and especially the web demo, pollers may be delayed because
the virtual machine does not have exclusive usage of the CPU.

Warning about delayed pollers in that case is not useful, so allow
disabling the warning. The poller command can still be used to check
overtime.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
The irony of me sending this out after hours is not lost on me.
---
 common/Kconfig  | 9 +++++++++
 common/poller.c | 3 ++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index b32a7cb2960b..ad211d1fa519 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1115,6 +1115,15 @@ config POLLER
 	bool "generic polling infrastructure"
 	select HAS_SCHED
 
+config POLLER_WARN_OVERTIME
+	bool "warn on poller overtime"
+	depends on POLLER
+	default y
+	help
+	  Pollers are meant to poll and quickly execute actions.
+	  exceeding the maximum runtime of POLLER_MAX_RUNTIME_MS
+	  will trigger a one-time warning.
+
 config BTHREAD
 	bool "barebox co-operative (green) thread infrastructure"
 	select HAS_SCHED
diff --git a/common/poller.c b/common/poller.c
index 18bd9c80f4b3..5dc2be97211d 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -134,7 +134,8 @@ void poller_call(void)
 
 		duration_ms = ktime_ms_delta(ktime_get(), start);
 		if (duration_ms > POLLER_MAX_RUNTIME_MS) {
-			if (!poller->overtime)
+			if (IS_ENABLED(CONFIG_POLLER_WARN_OVERTIME) &&
+			    !poller->overtime)
 				pr_warn("'%s' took unexpectedly long: %llums\n",
 					poller->name, duration_ms);
 
-- 
2.39.5




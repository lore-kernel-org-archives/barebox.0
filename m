Delivery-date: Mon, 14 Oct 2024 15:27:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L73-004Gs3-28
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L73-0002Qw-2v
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyfeWsgXukGKn2frF65zzVlfQyKRN57lyOjYFffUXvc=; b=X8fVZjUc1tlO4nuR9+Dwk34UOq
	m+bF8xWNFNQNPhcwDHIrlzTrf97Kx1BvJy0L88yZQYEL0ep6lgsj09YigYHENklQ3mr06yaOBa0RH
	ddnV9vMxmuJBGR0G4QPUsMlp5835h90HKBeyl0p5HZQ5rF4O5vzEVzXwUSdEeu2S+wSkRHnjoG5iM
	3ubiq63bQoGDdNrKF++9dATtO5xd34VmCX0mmYf1msI1p+J/HJoC8Kfvj4yfV9ZW/mKC0DK1b6IBO
	ukUas2yYNlxxl/QT7BbIPoxpa0S/X07QMKzAx/bM6cRJVXjOsu/P9Lo81PJ7kF4cwu4R+/c6lv5yo
	uM9hUlyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6W-00000005GcN-0Y8z;
	Mon, 14 Oct 2024 13:27:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JQ3-00000004xid-0HH9
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OyfeWsgXukGKn2frF65zzVlfQyKRN57lyOjYFffUXvc=; b=j3VPQnk66/nkTs3MoG6t/rg1QP
	Isk3NMlZ18xLD75O1RIol1PURk0gvNCuF5vwpW8430/cDuHNNQHqx6zgx/+pDEdMRu5EThtsHVCI/
	5AiZoSCwrEpZ8HdfXgqrIT3CwDyuE5e+GIofzFFLUkajy3m/+cb84/yO3SVmu0okQ2FmxPzWytx31
	4UUC57i2vSyT9hdHwegSXJjONvAirZRnv08+/7d2NPYZll48OTrcAz05Wnp4Wbq4WAUkO/5iuSSjp
	gWdJe3aEQGY3OYf2kJcBoRaUY+RP1+qfhH8ZsDMFqIVK3bhS6qLjejWt0C70QJzYThoIxRm1hb9t1
	sBJnSE0g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPy-00000006KQD-1dtu
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000gg-FP; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-001mS3-1H; Mon, 14 Oct 2024 13:39:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-00BrES-34;
	Mon, 14 Oct 2024 13:39:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:05 +0200
Message-Id: <20241014113912.2826190-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_123918_745242_A9C18815 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 06/13] PWM: rockchip: fix compile testing with CONFIG_SANDBOX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

basprintf isn't defined, so include the relevant header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/pwm-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index 960867c52066..b302a84d5f3f 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -9,6 +9,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <module.h>
+#include <stdio.h>
 #include <of.h>
 #include <linux/device.h>
 #include <pwm.h>
-- 
2.39.5




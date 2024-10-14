Delivery-date: Mon, 14 Oct 2024 15:27:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L73-004Gs2-10
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L72-0002QH-LJ
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8Ql6EQ3l8XyZDvnPCosonlf868a47LBj1KSv00SMj/Q=; b=OX9vmwu/3SLLVmRVJ+I4tI8ywJ
	QoKYnVmh904/SIDekVOzqRUFX+yoOvOQqDYMZGFdKkjg9m25Bo57GmydYKmbAo/1UzQDdqDFgtza7
	a+iy9zoeM5+nYmKp+cRhjjmh+Ax8bPCjhP2KbCxcRZAyF+s3MsWZQHI6I+MbLcLtT+YgGz+wC0uOA
	+C+d3MDSh9/+3SzRi2aLW5CjrVeHDaXJMdZK1r6uaHaOiRkBAtC/5PptUvvnHq1iwpEI9v3CzAGY3
	vPFBnGpJT9NraBGw/yTZO58hFXerNGM6zhl29alvqDrvrwpwflol53zh8QXdsIT3OI3I+jshdRsZb
	6mZInVKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6X-00000005GdO-3LV4;
	Mon, 14 Oct 2024 13:27:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JQ3-00000004xib-0HzC
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8Ql6EQ3l8XyZDvnPCosonlf868a47LBj1KSv00SMj/Q=; b=UemZQ5yjtK5wvo0A+AtGxOLWZU
	8Mb3ZecWKpkOinfuJisRg6jDctuRBRootlX0Dc3TJT0cpn/bXiimWHxzoBgu+aYn6WTrhbvDVLy1n
	EFH3yII5ZQQ0MMRNSTrGym9/F38Uhotb4ZAK5ak3IyUsv0ZQDRQdY1BsFmVeLE6xu2YWvMobVEMO1
	8OtD+pA7IpNs9koygbdSy1oigVRbWsy9Nxrvwp9P4kAlPgafdbNZwNTP9uLlulrDTGEazponX6dkG
	wXtP3vfkQCZC0rOKrPus/xhloToKDgewzfndArWNh8wDoD/EA/bt3tedhJ+UHZNoer6lya67/Hdyi
	4VDXw82Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPy-00000006KQF-15Ik
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000gx-Gu; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-001mS6-2a; Mon, 14 Oct 2024 13:39:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-00BrES-3D;
	Mon, 14 Oct 2024 13:39:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:06 +0200
Message-Id: <20241014113912.2826190-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_123918_561261_F2A0191F 
X-CRM114-Status: UNSURE (   8.44  )
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
Subject: [PATCH master 07/13] watchdog: imxulp: drop unused include of asm/system.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This header is unused and breaks compile test of the driver on other
architectures, but ARM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxulp-wdt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/watchdog/imxulp-wdt.c b/drivers/watchdog/imxulp-wdt.c
index 5a8987617524..5571c32ef44f 100644
--- a/drivers/watchdog/imxulp-wdt.c
+++ b/drivers/watchdog/imxulp-wdt.c
@@ -13,7 +13,6 @@
 #include <watchdog.h>
 #include <reset_source.h>
 #include <linux/clk.h>
-#include <asm/system.h>
 
 struct imxulp_socdata {
 	bool prescaler_enable;
-- 
2.39.5




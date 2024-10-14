Delivery-date: Mon, 14 Oct 2024 15:33:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCb-004H8u-2D
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:33:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCa-0004AV-UO
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:33:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sWF8rm8Tl9pYoXbH+In9AJrU6O5VtadclhfkvVoCRnk=; b=rrPBUVD19rkFIpT+hsvaRuz119
	u0DjuJHnPCW4wsc38hmyqCunVcWHBdovCmPdzqrV010OpbHpvZ2VZyfNGvQ/ONZKWAYEv1tiYWuLv
	j3Vc4licFHUjFUKCKJUm4fBQGW32tjxQ/ml9gjvIZuRoOhBtTTRnFPn0I/bLxLruU+z/q8QrK3y0E
	RhO5LKJhZKLzE/KBH1Af+VZPDQMq+bsB/Sy9tZxp9Pn+HkGyzK3tCDlp+2tzieJhsXrMjSDRctOaU
	7CcnOrlFS44OJee6jvlkspkFjjJZP3BsTP8qITQ8Skyz0VSpNixluKDuG+nWau5w3KI39uLYOtPtb
	3S2OZEvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LC6-00000005Ilh-0gy7;
	Mon, 14 Oct 2024 13:33:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JsR-000000051rM-378z
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:08:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-0002kf-Nb; Mon, 14 Oct 2024 14:08:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-001msr-9m; Mon, 14 Oct 2024 14:08:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-1Y;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:40 +0200
Message-Id: <20241014115040.2843121-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_050843_878938_A8C7ABAA 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH 12/12] ARM: bcm283x: remove common.h include in mbox.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that common.h is finally just a list of files to include, we can
start removing the inclusion of common.h in other headers and include
only what's actually needed.

Let's start with the raspberry Pi mailbox header and make it (and its
users) only include what's actually needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/mbox-helpers.c | 1 +
 include/mach/bcm283x/mbox.h                 | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/mbox-helpers.c b/arch/arm/boards/raspberry-pi/mbox-helpers.c
index 3a76ac2b012f..489eb0c91313 100644
--- a/arch/arm/boards/raspberry-pi/mbox-helpers.c
+++ b/arch/arm/boards/raspberry-pi/mbox-helpers.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
 
 #include <mach/bcm283x/mbox.h>
+#include <linux/printk.h>
 #include "lowlevel.h"
 
 struct msg_get_arm_mem {
diff --git a/include/mach/bcm283x/mbox.h b/include/mach/bcm283x/mbox.h
index cf5143673ab3..fc51b6597560 100644
--- a/include/mach/bcm283x/mbox.h
+++ b/include/mach/bcm283x/mbox.h
@@ -9,7 +9,9 @@
 #ifndef _BCM2835_MBOX_H
 #define _BCM2835_MBOX_H
 
-#include <common.h>
+#include <linux/align.h>
+#include <linux/types.h>
+#include <linux/string.h>
 
 #include <mach/bcm283x/platform.h>
 
-- 
2.39.5




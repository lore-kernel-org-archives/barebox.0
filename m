Delivery-date: Sat, 30 Oct 2021 16:19:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCQ-0002YL-CQ
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:19:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCP-000809-Eg
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:19:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCHL8Za96tBT7CycSGBFSRCIKnv/zyXW4y/SOGg5XuU=; b=lAICsw6YfdRuPe
	++KyjXHRH37OlfiQo7ra1xFQd7dfMgSimc34VbzLOempEcIqR7KOeR8jm2C+6c4ZpgMy/azsg9Nhr
	zZ54coH11s1QC33eu8TNCnkiwGhqTtu+NmyXVTFp5DLGElcBFBwtoTVsQrqIzIGKt9t3Sm/Os3sPb
	wn+AC2iS8pDW18LinIrPaVNA6O6/71GQNAtst9P5ifXx2Rjm0BbW/zbpHlbN39jEo3Dx5Om6eQuCU
	wD1+hZvd5eQ5/yskwIpaSd0OVOTCGoSMrmoxOfIYiGiltSLvQuHfNYuA5brdfXJO7ZeN+7Z0g/2Mn
	YWk0CwVz6SFQnAp6Lljg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpBD-00D8m2-W1; Sat, 30 Oct 2021 14:17:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpB0-00D8hT-EO
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAz-0007kW-83; Sat, 30 Oct 2021 16:17:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAy-009GGp-Lz; Sat, 30 Oct 2021 16:17:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:39 +0200
Message-Id: <20211030141739.2207431-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
References: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071742_532882_9C00D595 
X-CRM114-Status: GOOD (  13.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] include: move ARRAY_AND_SIZE to <linux/kernel.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux defines this macro at multiple places. We define it once, but in
<common.h>, which is a bit heavy weight. Move it next to the
ARRAY_SIZE() definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h               | 2 --
 include/linux/kernel.h         | 1 +
 scripts/include/linux/kernel.h | 1 +
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index e37630243e73..4167d4676e50 100644
--- a/include/common.h
+++ b/include/common.h
@@ -88,8 +88,6 @@ enum autoboot_state do_autoboot_countdown(void);
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
-#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
-
 /*
  * The STACK_ALIGN_ARRAY macro is used to allocate a buffer on the stack that
  * meets a minimum alignment requirement.
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 9ccdd60224dd..4483d33e65bb 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -15,6 +15,7 @@
 #define IS_ALIGNED(x, a)		(((x) & ((typeof(x))(a) - 1)) == 0)
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
+#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
 /*
  * This looks more complex than it should be. But we need to
diff --git a/scripts/include/linux/kernel.h b/scripts/include/linux/kernel.h
index dc2e64e16413..f3083ff3545d 100644
--- a/scripts/include/linux/kernel.h
+++ b/scripts/include/linux/kernel.h
@@ -9,6 +9,7 @@
 #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+#define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
 
 #define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 25 Nov 2024 16:21:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatZ-000FmZ-1v
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:21:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFatZ-0001pj-HO
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:21:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ySC36JoleReCs1WELY0ibEdKAS8O2t30OSjciWQR7eM=; b=UrqS4QlCI+bwomKmbEqBXzy2ut
	Ijqsh+Umjqz2hlHJ4YTkh56kvbGMMchrdRRaRnfd1X9n8hLd/NK3ZZ5ytKeZc1WGPtUobaD0bxvFE
	G4tKvkSnRLv9TRP3eIT5r43W7odJtRoOnkqdDK6Tgv0iuowddePnYfWq4o+iF+u1hXIMfJLdvheTy
	QWuCDCwxF+auDoTtNE4x/mq+G5SfKsx7e2zlQ6ZrrHRY/jyDlzBkXnzkLyPDoRmzO+DDAeSZ0+Zl5
	T0XtWNpPSaegoJ20fzjFW4jna5CvXOrvw/BFlvq/RTNXN+mxaX93LWkVfEaP6AOPkvJkDG0ftQ6/X
	2rGAkLrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat8-00000008S8m-21tY;
	Mon, 25 Nov 2024 15:20:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFat0-00000008S4N-47qx
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:20:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasz-0001VT-P5; Mon, 25 Nov 2024 16:20:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0006Ox-2P;
	Mon, 25 Nov 2024 16:20:25 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFasy-0020Cn-2c;
	Mon, 25 Nov 2024 16:20:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:20:24 +0100
Message-Id: <20241125152024.477375-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152024.477375-1-a.fatoum@pengutronix.de>
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072027_017140_E8EF9E4C 
X-CRM114-Status: UNSURE (   8.97  )
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
Subject: [PATCH 5/5] tlsf: panic in asserts if CONFIG_BUG_ON_DATA_CORRUPTION=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently consult CONFIG_BUG_ON_DATA_CORRUPTION=y only in linked list
code, but we should really do it everywhere, where we detect data
corruption.

We have some assertions in the TLSF code, so let's panic if the user has
configured that this happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/tlsf.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/tlsf.h b/include/tlsf.h
index 3fa220371577..2f82d0fa005b 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -43,10 +43,12 @@ extern "C" {
 #endif
 
 #include <printk.h>
+#include <linux/bug.h>
 
 #define tlsf_assert(expr) do {                              \
         if (unlikely(!(expr))) {                            \
                 printf(#expr "%s %d\n", __FILE__, __LINE__); \
+                BUG_ON(IS_ENABLED(CONFIG_BUG_ON_DATA_CORRUPTION)); \
                 dump_stack();                               \
         }                                                   \
 } while (0)
-- 
2.39.5




Delivery-date: Mon, 14 Oct 2024 15:33:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCd-004H9R-0o
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:33:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LCc-0004C1-M1
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:33:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H0A2YOGYj+zP/0EBXI66AuXLvIrLhvFUdsqN2xivNBc=; b=c/0sZ8Tw6pXAKiiRUr8ezjslJA
	mrbyJTptTyQEYMvxMtHFYhF0Xo0T0cJkiSbbbk5UCp6UuXP5Mn7a5QjBMnwMKTA9XMY6UbVVqnUp5
	JwPgCWu7SbkvT2M91fR3DMvMVR2mglBbvyDwBEdbOZ1IKPjtrsAk1cR+ag7+zJCwVnaiTbL00ChWw
	F/iUKZNl6N+k1oBN9DTbT7EEjrI6hEH/RITQv/XMH0SGN5nHnmEikDqKspfL3zlKXGHhVeeHWQg4d
	Jo7weJz0DYTXS5O+r1D1XZit3CZuXymAal/tYNDby3fS6yWEtc7qQVKYJWAA5dDl8+5G7dvJoP485
	twrnjyjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LC7-00000005Im2-0izI;
	Mon, 14 Oct 2024 13:33:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JsR-000000051rO-36S3
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:08:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-0002kt-Os; Mon, 14 Oct 2024 14:08:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JsN-001msu-BV; Mon, 14 Oct 2024 14:08:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-1G;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:38 +0200
Message-Id: <20241014115040.2843121-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_050843_873261_9D8A8ED8 
X-CRM114-Status: GOOD (  10.07  )
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
Subject: [PATCH 10/12] include: common.h: move out get_ram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function get_ram_size() is the last function remaining that's only
defined in common.h. Let's move it to barebox.h instead, so users don't
need to include everything else that's in common.h at the same time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/barebox.h | 2 ++
 include/common.h  | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/barebox.h b/include/barebox.h
index 741463bc1cf9..09f8c78abbeb 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -32,4 +32,6 @@ enum autoboot_state do_autoboot_countdown(void);
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
+long get_ram_size(volatile long *base, long size);
+
 #endif
diff --git a/include/common.h b/include/common.h
index 1f00baf8067a..16a08fe293af 100644
--- a/include/common.h
+++ b/include/common.h
@@ -23,7 +23,4 @@
 #include <linux/printk.h>
 #include <barebox-info.h>
 
-/* common/memsize.c */
-long	get_ram_size  (volatile long *, long);
-
 #endif	/* __COMMON_H_ */
-- 
2.39.5




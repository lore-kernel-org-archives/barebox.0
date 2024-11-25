Delivery-date: Mon, 25 Nov 2024 16:15:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoB-000Fde-2H
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:15:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaoB-0000Qm-Lq
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:15:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jeo0jFsm580hmtbpl8ZfL0Dw2yH9kuy6qBKU66rrP5k=; b=BSgPRK2UBA7B8LJDx1WS4VfEmp
	4fkMUYJp0GvCrWckFBJv4XUl4OruQb89iU0Er1h1wdb6EYt3enuk6m+iBqBkrGXJc1dOnuayfzDsy
	Jk/qUSVWia8gNGT45+QJ/7ds3P83pqs5spLmr7PMgKbrmOBHUQhJusscP1DUrz2NkMxBqF8HrBQYK
	u5q0sxmgYFFZHFcndetLhkqE7ayK3CRyPcU3/pt7dI8s2e5qLBYZfJW0PpMjEn7PTfTeJIs8x+Lz6
	VuCNupOe8gJD1Yb6w+PDGAmgMWHJLSgl3iMqbyVswHLRqkNcoXtV4frfVi3Cp5iZSnTiLEOPPL6E+
	GMAeXU6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFanl-00000008Qnh-2PpV;
	Mon, 25 Nov 2024 15:15:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFamp-00000008QT0-1M0x
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:14:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamg-0008JB-3a; Mon, 25 Nov 2024 16:13:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-0006NG-0V;
	Mon, 25 Nov 2024 16:13:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-001ntE-0i;
	Mon, 25 Nov 2024 16:13:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:13:51 +0100
Message-Id: <20241125151353.428428-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151353.428428-1-a.fatoum@pengutronix.de>
References: <20241125151353.428428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071404_086989_60B47903 
X-CRM114-Status: GOOD (  11.18  )
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
Subject: [PATCH v2 2/4] include: common.h: move out get_ram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function get_ram_size() is the last function remaining that's only
defined in common.h. Let's move it to barebox.h instead, so users don't
need to include everything else that's in common.h at the same time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 include/barebox.h | 2 ++
 include/common.h  | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/barebox.h b/include/barebox.h
index 45e95f187462..0341f303470b 100644
--- a/include/barebox.h
+++ b/include/barebox.h
@@ -43,4 +43,6 @@ enum autoboot_state do_autoboot_countdown(void);
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




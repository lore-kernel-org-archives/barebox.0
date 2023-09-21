Delivery-date: Thu, 21 Sep 2023 11:45:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFa-005jby-HZ
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:45:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGFY-0000or-H2
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GdODj8wzePTV1OFhpOtTB5ZpL0c+q1OGRrlWa3t5iWA=; b=a297GP5DX7t9Lif6xWZzaeo+H/
	wl+FVpvDL9Y2RwzCyKl4DaZzbTUBeDjqQ/sjaGDGXwiyRprYiz3QrzMyr5C+PHtulGm+7Q/xEhCYW
	AtNReY2rKeNdpa4dApq4XSJU+LZOJkekD+qE/aAsIVZhiNeVffKRi7aV+JprX2KhfL2C9kQc9aygg
	V8MTKrv3oLbP9JF79XbAm4FN3hUD/q4uONGxUus5QF8mD7hADq2nU4gxxQ3zOQXwPaIaPKpuLuraG
	Cwkl3sh0QzgEh6MGjkgR9N3PWe5HFphd8exfdjDqmlvkiuT6oLMt978ccF8eSU1RxhOH3aSe++eTh
	syMzuZqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGEZ-005cnh-2t;
	Thu, 21 Sep 2023 09:44:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGEW-005cm6-18
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:44:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGEV-0000Tg-7p; Thu, 21 Sep 2023 11:44:27 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGEU-007tVp-La; Thu, 21 Sep 2023 11:44:26 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGEU-0018aj-1w;
	Thu, 21 Sep 2023 11:44:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:44:25 +0200
Message-Id: <20230921094425.270359-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_024428_388523_FFFAC02D 
X-CRM114-Status: UNSURE (   7.65  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] include: linux/spinlock: add stubs for Linux _bh variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For symmetry with existing empty spin_lock/unlock stubs, add _bh
suffixed versions as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/spinlock.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
index 12af3dab231b..a604e0fd090f 100644
--- a/include/linux/spinlock.h
+++ b/include/linux/spinlock.h
@@ -6,7 +6,9 @@
 typedef int   spinlock_t;
 #define spin_lock_init(...)
 #define spin_lock(...)
+#define spin_lock_bh spin_lock
 #define spin_unlock(...)
+#define spin_unlock_bh spin_unlock
 #define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
 #define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
 
-- 
2.39.2




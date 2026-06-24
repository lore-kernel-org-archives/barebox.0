Delivery-date: Wed, 24 Jun 2026 14:31:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcMlI-009LpU-2J
	for lore@lore.pengutronix.de;
	Wed, 24 Jun 2026 14:31:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcMlI-0002do-0z
	for lore@pengutronix.de; Wed, 24 Jun 2026 14:31:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D+uQc3u7YpYHa+R3OF/Jsbc8srqqHlJWewqFIx7Vu+g=; b=To3mYmGizcTfkLERqoVADK6byH
	4P1ttF3rAxQqyaPmrw49/dF2JwztxxDC3uAhPMF4Y94YkYkDrvMjLJb0KPGlKpxsRWTWGZEKzA8Ks
	jXm1yweA8jICe5kQAUj9t2ShQLIPFsQQ/jW2pj5o+6fc+nEQI0IYUHTcnkKkbNyP58bld9isO1qDH
	UYHAMdv8/3jAWiYGCbe7qs/PmyeccEix4Kl4pUNgDgCC+iu0STmhUjIkOHsijSQD0qvpjyEiKJIiz
	QidtofD8nzOl2juf8h3ujqWXi2aBvq6uu5ENxdOuA0sY9brjIsJfotYgzYuRhD6MgOw7sf8hT2qwQ
	Z37yFO7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcMjs-00000007koB-1m2Z;
	Wed, 24 Jun 2026 12:29:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcMjn-00000007kmi-3oMt
	for barebox@lists.infradead.org;
	Wed, 24 Jun 2026 12:29:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 61B5E2007B6;
	Wed, 24 Jun 2026 14:29:47 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcMjj-004QJk-0z;
	Wed, 24 Jun 2026 14:29:47 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcMjj-00000005jo0-0j5W;
	Wed, 24 Jun 2026 14:29:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Wed, 24 Jun 2026 14:29:43 +0200
Message-ID: <20260624122946.1366278-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_052952_093293_CCB2E619 
X-CRM114-Status: GOOD (  16.20  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] misc: clarify deep-probe compatibility for CONFIG_STORAGE_BY_ALIAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bulk of the help text described the limitations around the
"barebox,storage-by-uuid" compatible, which was the only compatible
initially available: because it requires the device in question to
be already probed, it's probe order dependent.

"barebox,bootsource" doesn't suffer from this issue as it depends on the
bootsource being resolvable via a device tree alias or chosen entry.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/misc/Kconfig | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index e235646ee551..6831b96cffe6 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -65,12 +65,16 @@ config STORAGE_BY_ALIAS
 	  Alias the device barebox was booted from. This is useful to have
 	  barebox-state come from the same device as barebox itself.
 
+	  This is deep-probe compatible as even though the target device
+	  may not have been probed yet, the bootsource itself is known very
+	  early and can be used to probe the device on demand.
+
 	  - "barebox,storage-by-uuid"
 
 	  Look for a storage device matching the given DISKUUID and when found
 	  registers a new cdev for the device.
 
-	  This driver solved a very specific problem. On EFI the storage devices
+	  This compatible solves a very specific problem. On EFI the storage devices
 	  are not connected to any device tree node. barebox-state however expects
 	  a node to use as its backend. The obvious solution would be to create
 	  a partition with a specific partuuid and use that for state, in our
@@ -80,7 +84,7 @@ config STORAGE_BY_ALIAS
 	  a partition in an unallocated are of the disk which is then used for
 	  state.
 
-	  This driver has the problem that it depends on storage devices which
+	  This compatible has the problem that it depends on storage devices which
 	  are not described in the device tree. This means it cannot work with
 	  deep probe. This is not a problem on EFI though. It's a special purpose
 	  driver, it's not recommended for general use.
-- 
2.47.3




Delivery-date: Wed, 23 Jun 2021 07:18:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHE-0005Ef-AA
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:18:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHC-0007Lx-4e
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:18:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxhImbrm42LqWNaWvnNcbqn8FRwG0HpfgOKyGpfqf9Q=; b=otyEm7awIzCehL
	TA42xnTWwaqCNI8mvfctaD27LOrEgTMRFD5oj2gK06fc69RVNcEl5OYuTWu2sF07BP/S9jIWmaRpP
	IzXhY68SEqFBiO/QggFq2msAII4DWmPfaGAJGy3WHgNBSph1hOahSTBz4RzUPPCwBcDl6o/AkDMrM
	Bh+HeHIfTbTb77qQczFoCz6NqlvghFKAPJRXginA3KRGx9wg5JwhJ3i8s18CP/IaY7afo2JXZNjnz
	ZPl+W/1Ch0PBDDSfexKTyE8nEAXbiUAh1r0rE8bzx/88uUL20XXq4G9ABKuFsSoqjJiAmZyHF4s4u
	WsBJuuwl4Qch8gwZNwXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvG0-009MZy-6g; Wed, 23 Jun 2021 05:17:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFd-009MQ5-Dy
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0006rD-NX; Wed, 23 Jun 2021 07:16:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000OY-Q8; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:17 +0200
Message-Id: <20210623051632.30253-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221637_643765_1745AFDA 
X-CRM114-Status: GOOD (  14.62  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/17] firmware: make device_node argument non const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwaremgr_find_by_node() takes a const pointer to a device tree node.
Most functions that take a device tree node take a non const pointer
though, so we can't call them from there. It might be worth looking
into making the pointers const for other functions, but we are not
there yet. Make the pointer non const for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c  | 2 +-
 include/firmware.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/firmware.c b/common/firmware.c
index e4b5025ab1..fa4f585693 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -63,7 +63,7 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
  * handler. This allows to retrieve the firmware handler with a phandle from
  * the device tree.
  */
-struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	struct firmware_mgr *mgr;
 
diff --git a/include/firmware.h b/include/firmware.h
index 2fef97a48f..d37098688c 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -28,9 +28,9 @@ int firmwaremgr_register(struct firmware_handler *);
 
 struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
-struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np);
+struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
 #else
-static inline struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	return NULL;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


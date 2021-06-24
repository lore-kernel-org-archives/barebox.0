Delivery-date: Thu, 24 Jun 2021 10:53:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7Q-0007D5-DT
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:53:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7P-0001NA-Ea
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:53:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ne2Co0+3aZw48uwM1qFmvq9SmSy/xXJCcq86ARU7uyg=; b=06gQxAfgD/W2FA
	DryG5MryGHxsrj/FIXwETC1+aMLIUIbtSoEyeXA3b+xXpGqmvXRjgmw2o24uySyh1OPdUFhNmRw53
	Ptouyu4nM4d7laDR+ppZJRKJSy8PcVl1/7YnAVtrL2/m1sa28hZCnNMZ/GtHuFY+sa9Y0MxTQq6nR
	0s64kcp5/jL3jjMsqd4dNfoNoo4IaUiIc89yvvVLP/Onc6NSL7x3YWJPFMoGlQqd3AQQkzhFiCBHJ
	RakR/jbz78fcLmCyzzV992elbXD2gyXhuBN16ekeQASbEGVq9OhFeqpTi7tJt70nD+xD2B5vkfFnS
	FTLv7/cqB7LXG8zlx04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6B-00DXJy-KG; Thu, 24 Jun 2021 08:52:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFU-80
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sK-Aw; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000bE-9B; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:11 +0200
Message-Id: <20210624085223.14616-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_350502_A3599843 
X-CRM114-Status: UNSURE (   9.42  )
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
Subject: [PATCH 06/18] firmware: consolidate ifdefs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of having multiple #ifdef CONFIG_FIRMWARE in a single file move
the code together inside a single #ifdef.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/firmware.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/firmware.h b/include/firmware.h
index d37098688c..39e84b9ac7 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -29,24 +29,21 @@ int firmwaremgr_register(struct firmware_handler *);
 struct firmware_mgr *firmwaremgr_find(const char *);
 #ifdef CONFIG_FIRMWARE
 struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np);
+int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
 #else
 static inline struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 {
 	return NULL;
 }
-#endif
 
-void firmwaremgr_list_handlers(void);
-
-#ifdef CONFIG_FIRMWARE
-int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
-#else
 static inline int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *path)
 {
 	return -ENOSYS;
 }
 #endif
 
+void firmwaremgr_list_handlers(void);
+
 #define get_builtin_firmware(name, start, size) \
 	{							\
 		extern char _fw_##name##_start[];		\
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


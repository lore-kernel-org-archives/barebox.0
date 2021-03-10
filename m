Delivery-date: Wed, 10 Mar 2021 14:29:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuV-0001R3-LR
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:29:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuR-0004CD-3s
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:29:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9G3TdbueP4eflaEfB0MWxeuyvheuDuKNME18iO4sONA=; b=m4kBMXdJ1Lz7TRFwy1wm6JY+4
	ppJbzBAM4I7iRzhebxXh0GkBPBuNuZngCkJQpuqKr9kKstKAQUD/HqYLbVNG86SxhEGPAyX3g0XZe
	xZ3cedjeq5W/dieelqOecDZfznwoWrmcWE5461leGS3H9Dmq4oq+Go1aITiWduSO6yk5x1GQ3WGbm
	5ZiAYGxePsV0mreOjrC4xrPIK2dqFepzme7nZdMGdJuXKHOCr3bFSAnEweHRet5cBefE/+EiAutd+
	1negjLm4ifPjm+7Z9Bsw2h+4oX9tqGoogpO/rjfDMTgcZmiqj+UdO2z7wx2Uc2Gr23Xc0Tdx0MYaW
	UrhU5B0ag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytL-006ute-FF; Wed, 10 Mar 2021 13:28:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unL-9h
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fl-J6; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006bw-JD; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:16 +0100
Message-Id: <20210310132829.7662-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_405897_A9D86C49 
X-CRM114-Status: UNSURE (   9.93  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 04/17] firmware: consolidate ifdefs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of having multiple #ifdef CONFIG_FIRMWARE in a single file move
the code together inside a single #ifdef.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/firmware.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/firmware.h b/include/firmware.h
index 4e69412832..f09a64e7ed 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -28,24 +28,21 @@ int firmwaremgr_register(struct firmware_handler *);
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


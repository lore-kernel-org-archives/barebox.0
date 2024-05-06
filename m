Delivery-date: Mon, 06 May 2024 18:09:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40ty-006DUB-29
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 18:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s40ty-0005Yk-0X
	for lore@pengutronix.de; Mon, 06 May 2024 18:09:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=STywc8mE6s9kRoMBID3JVxE12lyEzLN8fR1uib3VunA=; b=loZdo2Bvl56bdXsNuH9MLDY0db
	IpaI5h8YqhQ3EgtKpB0WbD+zhGhBeZuizvv1turGNqQy/1IWEkpJ/pv13xPV0GVDU2LnaaDnoMun7
	r8NGBaNFWVZe+xYCEE1jBNZK7wLs3PvQ6DfawskV+Bb0rYAf1xL32j4Am431F/vIywIiDzYBHSr/R
	Zkf+P3SzObbUZoJL1+MsIpZ9UJd5EHcAWzjD0Fbc2RbZvPxmUaMPg9N+AALrNiIoq7cI6mYP9l233
	6qelOA3VHvMY8qMsN81hYxhWMC07aeoyk2hnpJz90usR1zxu0kXHvIjsCHduQXirbtDzgJMutuMXs
	/3EQ/4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40ta-00000007zlz-0ida;
	Mon, 06 May 2024 16:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s40tW-00000007zlT-2RUm
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 16:08:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40nh-0003yg-4T; Mon, 06 May 2024 18:02:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-00GIQQ-O1; Mon, 06 May 2024 18:02:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s40ng-009E6k-25;
	Mon, 06 May 2024 18:02:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 May 2024 18:02:44 +0200
Message-Id: <20240506160246.2198975-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_090850_645921_4F363AD1 
X-CRM114-Status: GOOD (  13.44  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] pstore: ramoops: fix use of wrong types on 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The kernel struct persistent_ram_buffer uses atomic_t for start and size
members in the persistent_ram_buffer chunk, which are 32-bit always,
unlike resource_size_t that we used in barebox, which is 64-bit when
CONFIG_PHYS_ADDR_T_64BIT=y.

To fix this, we could use either int32_t or atomic_t. To make
synchronization with Linux easier, let's use atomic_t.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram_core.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/fs/pstore/ram_core.c b/fs/pstore/ram_core.c
index 76b8a109be9d..24948d701744 100644
--- a/fs/pstore/ram_core.c
+++ b/fs/pstore/ram_core.c
@@ -14,12 +14,14 @@
 
 #define pr_fmt(fmt) "persistent_ram: " fmt
 
+#include <linux/build_bug.h>
 #include <linux/err.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/rslib.h>
 #include <linux/pstore_ram.h>
 #include <linux/string.h>
+#include <linux/atomic.h>
 #include <stdio.h>
 #include <malloc.h>
 #include <memory.h>
@@ -27,21 +29,22 @@
 
 struct persistent_ram_buffer {
 	uint32_t sig;
-	resource_size_t start;
-	resource_size_t size;
-	uint8_t data[0];
+	atomic_t start;
+	atomic_t size;
+	uint8_t data[];
 };
+static_assert(sizeof(struct persistent_ram_buffer) == 12);
 
 #define PERSISTENT_RAM_SIG (0x43474244) /* DBGC */
 
 static inline size_t buffer_size(struct persistent_ram_zone *prz)
 {
-	return prz->buffer->size;
+	return atomic_read(&prz->buffer->size);
 }
 
 static inline size_t buffer_start(struct persistent_ram_zone *prz)
 {
-	return prz->buffer->start;
+	return atomic_read(&prz->buffer->start);
 }
 
 /* increase and wrap the start pointer, returning the old value */
@@ -50,11 +53,11 @@ static size_t buffer_start_add(struct persistent_ram_zone *prz, size_t a)
 	int old;
 	int new;
 
-	old = prz->buffer->start;
+	old = atomic_read(&prz->buffer->start);
 	new = old + a;
 	while (unlikely(new >= prz->buffer_size))
 		new -= prz->buffer_size;
-	prz->buffer->start = new;
+	atomic_set(&prz->buffer->start, new);
 
 	return old;
 }
@@ -65,14 +68,14 @@ static void buffer_size_add(struct persistent_ram_zone *prz, size_t a)
 	size_t old;
 	size_t new;
 
-	old = prz->buffer->size;
+	old = atomic_read(&prz->buffer->size);
 	if (old == prz->buffer_size)
 		return;
 
 	new = old + a;
 	if (new > prz->buffer_size)
 		new = prz->buffer_size;
-	prz->buffer->size = new;
+	atomic_set(&prz->buffer->size, new);
 }
 
 static void notrace persistent_ram_encode_rs8(struct persistent_ram_zone *prz,
@@ -331,8 +334,8 @@ void persistent_ram_free_old(struct persistent_ram_zone *prz)
 
 void persistent_ram_zap(struct persistent_ram_zone *prz)
 {
-	prz->buffer->start = 0;
-	prz->buffer->size = 0;
+	atomic_set(&prz->buffer->start, 0);
+	atomic_set(&prz->buffer->size, 0);
 	persistent_ram_update_header_ecc(prz);
 }
 
-- 
2.39.2




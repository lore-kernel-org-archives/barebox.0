Delivery-date: Thu, 25 Nov 2021 17:13:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMu-0001kK-1h
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:13:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMr-0001hL-FQ
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:13:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJ2ZxufmuWJc7b4m0prh2jVJiE+Hoianh+u5ucktmkU=; b=K+QZT0sZmAlU/e
	mn8lI5Y8X6oTt4F0tKLqb9z+ihbstPGHX99uMGK5om1H8uKIy562BcbFWwTTbvtnsUOsFrsnAM7xQ
	mh5NdaL8tWXeYv3mh8LLBABwnG+e7XD+UUdQ8Hk0fGlrA2Nx239B/W+/2s+/Drn93MEWT36BDX+GT
	ruRNt3TFBG7nzcVXUxjIUkHrwB28XZ2Cwf62s1aMFY1eojP0NXdZWW+COgDlSa0/Y2iNfkKye50Ft
	sUEKqPpzYOWKqjhZexjxB2BpiqMTUfx9pQYgPklgaREk25ymvkOjTSP5RUZmaS781/9YIryxYDbxx
	1wJ5kMpiptpoPzjmbdeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHL3-008DbE-UY; Thu, 25 Nov 2021 16:11:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKi-008DPi-7D
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-0000bf-KC; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4Ww-Or; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:36 +0100
Message-Id: <20211125161042.3829996-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081048_286941_0C53124F 
X-CRM114-Status: GOOD (  12.28  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] state: mark state init errors specially
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

First boot with uninitialized state is needlessly verbose. As
preparation for making boot less noisy on fresh state, mark all the
error messages with newly introduced dev_err_state_init().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/backend_format_raw.c | 3 +--
 common/state/backend_storage.c    | 7 ++-----
 common/state/state.c              | 4 ++--
 common/state/state.h              | 7 +++++++
 4 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index ea962606ccdb..aeee41d07ce9 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -116,9 +116,8 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 	header = (struct backend_raw_header *)buf;
 	crc = crc32(0, header, sizeof(*header) - sizeof(uint32_t));
 	if (crc != header->header_crc) {
-		dev_err(backend_raw->dev, "Error, invalid header crc in raw format, calculated 0x%08x, found 0x%08x\n",
+		return dev_err_state_init(backend_raw->dev, -EINVAL, "header crc in raw format, calculated 0x%08x, found 0x%08x\n",
 			crc, header->header_crc);
-		return -EINVAL;
 	}
 
 	if (magic && magic != header->magic) {
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 7fc7acfdcbc8..2d7d9a4a63c0 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -171,11 +171,8 @@ int state_storage_read(struct state_backend_storage *storage,
 
 	dev_dbg(storage->dev, "Checking redundant buckets finished.\n");
 
-	if (!bucket_used) {
-		dev_err(storage->dev, "Failed to find any valid state copy in any bucket\n");
-
-		return -ENOENT;
-	}
+	if (!bucket_used)
+		return dev_err_state_init(storage->dev, -ENOENT, "no valid state copy in any bucket\n");
 
 	dev_info(storage->dev, "Using bucket %d@0x%08llx\n", bucket_used->num, (long long) bucket_used->offset);
 
diff --git a/common/state/state.c b/common/state/state.c
index 469ee62d4012..8c34ae83e52b 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -101,8 +101,8 @@ static int state_do_load(struct state *state, enum state_flags flags)
 	ret = state_storage_read(&state->storage, state->format,
 				 state->magic, &buf, &len, flags);
 	if (ret) {
-		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
-			state->format->name, ret);
+		dev_err_state_init(&state->dev, ret, "format %s read failed\n",
+				   state->format->name);
 		goto out;
 	}
 
diff --git a/common/state/state.h b/common/state/state.h
index 1881d92ea7fe..d858c9e42735 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -1,5 +1,6 @@
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/err.h>
 #include <driver.h>
 
 struct state;
@@ -266,3 +267,9 @@ static inline int state_string_copy_to_raw(struct state_string *string,
 
 	return 0;
 }
+
+#define dev_err_state_init(dev, ret, fmt, ...) ({ \
+	int __ret = (ret); \
+	dev_err((dev), "init error: %pe: " fmt, ERR_PTR(__ret), ##__VA_ARGS__); \
+	__ret; \
+})
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


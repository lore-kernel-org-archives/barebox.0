Delivery-date: Thu, 25 Nov 2021 17:13:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHN8-0001m8-HQ
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:13:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHN6-0001lg-5C
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:13:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epEMPO4MvHMPj3vlQ8IA3V93CYoNm2rUP7rc+1sl70s=; b=B16VgYG9wohCAv
	Bs/uE1jUNntucDkw7tsX3AvaH0mJyxZqgR0HtwXD9lSB7dSfGQzi3ZVQPnuozPO8rS9mjAAznUOuR
	JZyb8psQSFLc6TNJgJgQaVMF/cpxMnZZFzlNkU60Qw9EYcT5ykToktQ3Ym8csp7lLh7atnWLjzj9F
	x/5vSagabhsNxX6dnKNKLL5SPpB7OJ1eFFbHz5zYOLCE9KEmoeefuvqOgtCU5UlSFPV/orkBP2MRY
	BtOE1c9w5v9k3ueY2Z9+1+4C1DUSJ1uEekAeq3JIsRG8DhSNLdi4T5QPOpc+UaXgxNa3Yuf0ecQog
	jxhUYHXr3GlbbpKDRdgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHLF-008DiU-SY; Thu, 25 Nov 2021 16:11:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKq-008DUo-BZ
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKe-0000bg-Qx; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHKd-00G4Wz-Qf; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:10:37 +0100
Message-Id: <20211125161042.3829996-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081056_451920_DCE8B535 
X-CRM114-Status: GOOD (  16.68  )
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
Subject: [PATCH 2/7] state: make first boot less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

First boot with uninitialized state is needlessly verbose:

  state: New state registered 'state'
  state: Detected old on-storage format
  ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 0@0x00000000...
  state: Detected old on-storage format
  ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 1@0x00040000...
  state: Detected old on-storage format
  ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 2@0x00080000...
  ERROR: state: Failed to find any valid state copy in any bucket
  ERROR: state: Failed to read state with format raw, -2

This has confused barebox-state novices more than once. Let's handle
the zeroed state case specially and reduce output in that case, so
it now looks like this:

  state: New state registered 'state'
  state: Detected old on-storage format
  state: Detected old on-storage format
  state: Detected old on-storage format
  state state.of: Fresh state detected, continuing with defaults

This is only the output when CRC is zero (hinting at zeroed state
partition). If crc != zero, then output is a little more verbose than
before:

  state: New state registered 'state'
  state: Detected old on-storage format
  ERROR: state: init error: Invalid argument: header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 0@0x00000000...
  state: Detected old on-storage format
  ERROR: state: init error: Invalid argument: header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 1@0x00040000...
  state: Detected old on-storage format
  ERROR: state: init error: Invalid argument: header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
  state: Ignoring broken bucket 2@0x00080000...
  ERROR: state: init error: No such file or directory: no valid state copy in any bucket
  ERROR: state: init error: No such file or directory: format raw read failed
  WARNING: state state.of: Failed to load persistent state, continuing with defaults, -2

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/backend_format_raw.c |  6 +++---
 common/state/backend_storage.c    | 12 +++++++++---
 common/state/state.h              |  9 ++++++++-
 drivers/misc/state.c              |  4 +++-
 4 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index aeee41d07ce9..1fecdeb9cf57 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -115,10 +115,10 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 
 	header = (struct backend_raw_header *)buf;
 	crc = crc32(0, header, sizeof(*header) - sizeof(uint32_t));
-	if (crc != header->header_crc) {
-		return dev_err_state_init(backend_raw->dev, -EINVAL, "header crc in raw format, calculated 0x%08x, found 0x%08x\n",
+	if (crc != header->header_crc)
+		return dev_err_state_init(backend_raw->dev, header->header_crc ? -EINVAL : -ENOMEDIUM,
+			"header crc in raw format, calculated 0x%08x, found 0x%08x\n",
 			crc, header->header_crc);
-	}
 
 	if (magic && magic != header->magic) {
 		dev_err(backend_raw->dev, "Error, invalid magic in raw format 0x%08x, should be 0x%08x\n",
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 2d7d9a4a63c0..72f8bcf521ad 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -144,6 +144,7 @@ int state_storage_read(struct state_backend_storage *storage,
 		       enum state_flags flags)
 {
 	struct state_backend_storage_bucket *bucket, *bucket_used = NULL;
+	int zerobuckets = 0, totalbuckets = 0;
 	int ret;
 
 	dev_dbg(storage->dev, "Checking redundant buckets...\n");
@@ -152,6 +153,8 @@ int state_storage_read(struct state_backend_storage *storage,
 	 * one we want to use.
 	 */
 	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
+		totalbuckets++;
+
 		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
 		if (ret == -EUCLEAN)
 			bucket->needs_refresh = 1;
@@ -163,16 +166,19 @@ int state_storage_read(struct state_backend_storage *storage,
 		 * .verify overwrites it with the length actually used.
 		 */
 		ret = format->verify(format, magic, bucket->buf, &bucket->len, flags);
-		if (!ret && !bucket_used)
+		if (ret == -ENOMEDIUM)
+			zerobuckets++;
+		else if (!ret && !bucket_used)
 			bucket_used = bucket;
-		if (ret)
+		else if (ret)
 			dev_info(storage->dev, "Ignoring broken bucket %d@0x%08llx...\n", bucket->num, (long long) bucket->offset);
 	}
 
 	dev_dbg(storage->dev, "Checking redundant buckets finished.\n");
 
 	if (!bucket_used)
-		return dev_err_state_init(storage->dev, -ENOENT, "no valid state copy in any bucket\n");
+		return dev_err_state_init(storage->dev, zerobuckets == totalbuckets ? -ENOMEDIUM : -ENOENT,
+					  "no valid state copy in any bucket\n");
 
 	dev_info(storage->dev, "Using bucket %d@0x%08llx\n", bucket_used->num, (long long) bucket_used->offset);
 
diff --git a/common/state/state.h b/common/state/state.h
index d858c9e42735..48572c5d4137 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -268,8 +268,15 @@ static inline int state_string_copy_to_raw(struct state_string *string,
 	return 0;
 }
 
+#ifdef DEBUG
+#define MSG_STATE_ZERO_INIT	MSG_INFO
+#else
+#define MSG_STATE_ZERO_INIT	MSG_DEBUG
+#endif
+
 #define dev_err_state_init(dev, ret, fmt, ...) ({ \
 	int __ret = (ret); \
-	dev_err((dev), "init error: %pe: " fmt, ERR_PTR(__ret), ##__VA_ARGS__); \
+	__dev_printf(__ret == -ENOMEDIUM ? MSG_STATE_ZERO_INIT : MSG_ERR, \
+		     (dev), "init error: %pe: " fmt, ERR_PTR(__ret), ##__VA_ARGS__); \
 	__ret; \
 })
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 5da8e4ef915a..cb0d9cf3ad09 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -28,7 +28,9 @@ static int state_probe(struct device_d *dev)
 	}
 
 	ret = state_load(state);
-	if (ret)
+	if (ret == -ENOMEDIUM)
+		dev_info(dev, "Fresh state detected, continuing with defaults\n");
+	else if (ret)
 		dev_warn(dev, "Failed to load persistent state, continuing with defaults, %d\n",
 			 ret);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


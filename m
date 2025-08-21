Delivery-date: Fri, 22 Aug 2025 05:19:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upIJM-003BO0-0V
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 05:19:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upIJK-00054e-VS
	for lore@pengutronix.de; Fri, 22 Aug 2025 05:19:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DloRAng9lHPgqr88hSuXAxtbP4JgGxYfsWcOI6wQe7k=; b=p8Q2uWUhIb7hoshA5RmX2H7Pvg
	F64hQ+YnQ4jSfHyvGxxl6sfvv/51B6If/zJTn9Vc/fQC7Ydp34K7RgGWqKJ9fleuSjikEgAWcc8Ku
	B2AJTU3smi1/SwlXw/Pa6naIfdnVArdjiK2jerkPBTTsyZz7SNK97lmRRrWBMAzDFOHdi8aa/bzOe
	JtSLKwhjwyy/MmWSt/5xl350HiA3nl4EFzqReP8yMbhijo+yICmDfdby+bGjmcqTqDfNUk4fWgcwN
	QxaGMz//rxftH2lRGKMH4VwjlKVTS8P3e7BSjWqCnAlkHq7tj0HgOSWWvbJrSZPM2qxqQpcGMyclv
	QVqhMNZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upIJ5-00000001Mi3-1E74;
	Fri, 22 Aug 2025 03:19:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upCBa-00000000XLU-0DUz
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 20:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBY-00074r-4U; Thu, 21 Aug 2025 22:47:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBX-001T3t-34;
	Thu, 21 Aug 2025 22:46:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1upCBX-005z7T-2m;
	Thu, 21 Aug 2025 22:46:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Aug 2025 22:46:57 +0200
Message-Id: <20250821204658.1426566-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_134702_093797_2ACB19F2 
X-CRM114-Status: GOOD (  11.08  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] state: do not panic on flipped bits in on-disk sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We allocate some buffers with a size that's ultimately dictated by
on-disk metadata. This metadata can be incorrect and state is supposed
to handle that by storing the data redundantly in three buckets.

Due to the use of x-family functions, we triggered a panic though, which
made an unfortunate bitflip an irrecoverable error.

Fix this by switching the allocations in question to non-panicking ones
and propagating the error. This issue has been detected by libfuzzer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - also check for zero byte allocations
---
 common/state/backend_bucket_circular.c | 10 ++++++----
 common/state/backend_bucket_direct.c   |  6 +++---
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 6b5873aa9af1..9fe38bc9c508 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -265,9 +265,9 @@ static int state_backend_bucket_circular_read(struct state_backend_storage_bucke
 		offset = circ->write_area - read_len;
 	}
 
-	buf = xmalloc(read_len);
-	if (!buf)
-		return -ENOMEM;
+	buf = malloc(read_len);
+	if (ZERO_OR_NULL_PTR(buf))
+		return buf ? -EINVAL : -ENOMEM;
 
 	dev_dbg(circ->dev, "Read state from PEB %u global offset %lld length %zd\n",
 		circ->eraseblock, (long long) offset, read_len);
@@ -311,7 +311,9 @@ static int state_backend_bucket_circular_write(struct state_backend_storage_buck
 	 * We need zero initialization so that our data comparisons don't show
 	 * random changes
 	 */
-	write_buf = xzalloc(written_length);
+	write_buf = calloc(1, written_length);
+	if (ZERO_OR_NULL_PTR(write_buf))
+		return write_buf ? -EINVAL : -ENOMEM;
 
 	memcpy(write_buf, buf, len);
 	meta = (struct state_backend_storage_bucket_circular_meta *)
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 03c752d6fe41..2ee0c7184193 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -92,9 +92,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 
 	}
 
-	buf = xmalloc(read_len);
-	if (!buf)
-		return -ENOMEM;
+	buf = malloc(read_len);
+	if (ZERO_OR_NULL_PTR(buf))
+		return buf ? -EINVAL : -ENOMEM;
 
 	dev_dbg(direct->dev, "Read state from %lld length %d\n", (long long) direct->offset,
 		header_len + read_len);
-- 
2.39.5




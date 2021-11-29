Delivery-date: Mon, 29 Nov 2021 08:24:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrb18-0002Hp-Ue
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 08:24:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrb18-0000av-2V
	for lore@pengutronix.de; Mon, 29 Nov 2021 08:24:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uItU2/KEkUgNr9sIKdg9CesM7TvXm5VUW0VVcsMD/Z8=; b=ofqTk7CQd6SeY4
	zsePTlSqhs/lQq3Jg+Psi46dhMzM+3sk/4e/bVjXPo4z8d+melIb4NbtLfCrVvVxkd/j8qVyIZe4z
	Ywvg8bLV6jqRVenpTgaKYmz6ym+UfuqeS284qXdeKXIWNGM6BJwLDj58f0JiZk3w/fScyCJQOxXB7
	cXSgLGwzYDS4qXyaKhWIzR+8YGNLN44eB3t1/l94so6HooJo0ozzV/UfRJdRg1Ledjz0xRg2HtGzG
	8QxmKrMWDrB3y1zWhrq+8/cPqpYknBVljufVNqhxrkIaYHbfNR+WPhz6D/BkekK8TlDdECeYEcyg7
	xgFx7/HmHWpfIAqM7c5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrazw-0001Xd-6J; Mon, 29 Nov 2021 07:22:48 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrazq-0001WS-VI
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 07:22:44 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 983C71C0002;
 Mon, 29 Nov 2021 07:22:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Nov 2021 08:22:35 +0100
Message-Id: <20211129072235.2016324-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_232243_162545_6206644B 
X-CRM114-Status: GOOD (  11.89  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] state: make first boot with uninitialized legacy state less
 verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With non-legacy state, barebox checks a header for a specific magic
signature. This can be all zero on an uninitialized state, so in that
particular case, bump down the log message severity.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Applies on top of https://lore.barebox.org/barebox/20211125161042.3829996-3-a.fatoum@pengutronix.de/
---
 common/state/backend_bucket_direct.c | 4 ++--
 common/state/backend_storage.c       | 7 +++++--
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 517aec60634b..117cdfb46c9e 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -76,9 +76,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 		if (meta.magic != ~0 && !!meta.magic)
 			bucket->wrong_magic = 1;
 		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
-			dev_err(direct->dev, "No meta data header found\n");
 			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
-			return -EINVAL;
+			return dev_err_state_init(direct->dev, meta.magic ? -EINVAL : -ENOMEDIUM,
+						  "No meta data header found\n");
 		}
 		read_len = direct->max_size;
 		if (lseek(direct->fd, direct->offset, SEEK_SET) !=
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 72f8bcf521ad..c55d22e37f70 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -156,10 +156,13 @@ int state_storage_read(struct state_backend_storage *storage,
 		totalbuckets++;
 
 		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
-		if (ret == -EUCLEAN)
+		if (ret == -EUCLEAN) {
 			bucket->needs_refresh = 1;
-		else if (ret)
+		} else if (ret) {
+			if (ret == -ENOMEDIUM)
+				zerobuckets++;
 			continue;
+		}
 
 		/*
 		 * Verify the buffer crcs. The buffer length is passed in the len argument,
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


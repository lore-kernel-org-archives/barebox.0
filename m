Delivery-date: Fri, 28 Jul 2023 15:33:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPNb5-00DYT9-Je
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 15:33:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPNb2-0007yM-Ri
	for lore@pengutronix.de; Fri, 28 Jul 2023 15:33:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MvlF8MtOolIp5SqYLDMHEc9lW2RuYx3fs/+f8bWOBSA=; b=gK0i/IfT5SqT0c8TVoFntELLHh
	yOMbVbkkoJjLa/+195BkLJbqMqmkJzbaZzEPP+Q0NpKByJvrEpDaPlRJJMneuK31vLpzYyfDFycwg
	z/IiFV1BLHYvQDhyOPtTeXDP5NmShfPKL+TamkuoBVV1IlwOcLWIQso7V9aaW/CIYfzbq8uufDu+F
	yxmgkG3N564429b49QfpdMkiNadn8NG7IMOv+c170XaZCgc5KSVRBJrQT5Pgoty2HhkAKxc1iS7Bz
	aX4qgxrGBPQiCBkmb5RLK5vRQeXdQNHakLQU31ibcuidpO59/dS2lR+Ex+OQn+a7i+6Xtiy2fpZF7
	kskUK/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPNZl-003XUu-2H;
	Fri, 28 Jul 2023 13:32:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPNZi-003XUK-1c
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 13:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qPNZb-0007tn-6L; Fri, 28 Jul 2023 15:32:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qPNZa-002iiR-Hd; Fri, 28 Jul 2023 15:32:02 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qPNZa-00G3xG-12;
	Fri, 28 Jul 2023 15:32:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Jul 2023 15:31:58 +0200
Message-Id: <20230728133158.3828436-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_063210_563242_60C6A642 
X-CRM114-Status: GOOD (  12.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] state: backend_bucket_direct: add debug prints on read/write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have debug prints for the circular backend to help see how
much data is read/written for each bucket. Add similar debugging info
for the direct backend as well. Example with stride size of 2048 and
44 bytes for the variable set:

  barebox@board:/ state -l
  state: Read state from 0 length 68
  state: Read state from 2048 length 68
  state: Read state from 4096 length 68

  barebox@board:/ state -s
  state: Written state to offset 0 length 68 data length 60
  state: Written state to offset 2048 length 68 data length 60
  state: Written state to offset 4096 length 68 data length 60

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/backend_bucket_direct.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index f06e14277862..03c752d6fe41 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -52,7 +52,7 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	struct state_backend_storage_bucket_direct *direct =
 	    get_bucket_direct(bucket);
 	struct state_backend_storage_bucket_direct_meta meta;
-	uint32_t read_len;
+	uint32_t read_len, header_len = 0;
 	void *buf;
 	int ret;
 
@@ -72,6 +72,8 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 			return -EINVAL;
 
 		}
+
+		header_len = sizeof(meta);
 	} else {
 		if (meta.magic != ~0 && !!meta.magic)
 			bucket->wrong_magic = 1;
@@ -87,12 +89,16 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 				-errno);
 			return -errno;
 		}
+
 	}
 
 	buf = xmalloc(read_len);
 	if (!buf)
 		return -ENOMEM;
 
+	dev_dbg(direct->dev, "Read state from %lld length %d\n", (long long) direct->offset,
+		header_len + read_len);
+
 	ret = read_full(direct->fd, buf, read_len);
 	if (ret < 0) {
 		dev_err(direct->dev, "Failed to read from file, %d\n", ret);
@@ -112,6 +118,7 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 {
 	struct state_backend_storage_bucket_direct *direct =
 	    get_bucket_direct(bucket);
+	size_t header_len = 0;
 	int ret;
 	struct state_backend_storage_bucket_direct_meta meta;
 
@@ -129,6 +136,8 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 			dev_err(direct->dev, "Failed to write metadata to file, %d\n", ret);
 			return ret;
 		}
+
+		header_len = sizeof(meta);
 	} else {
 		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
 			dev_dbg(direct->dev, "Too small stride size: must skip metadata! Increase stride size\n");
@@ -148,6 +157,9 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
 		return ret;
 	}
 
+	dev_dbg(direct->dev, "Written state to offset %lld length %zu data length %zu\n",
+		(long long)direct->offset, len + header_len, len);
+
 	return 0;
 }
 
-- 
2.39.2




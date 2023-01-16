Delivery-date: Mon, 16 Jan 2023 13:56:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHP2Q-00DZrz-RG
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 13:56:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHP2N-0006ev-Rt
	for lore@pengutronix.de; Mon, 16 Jan 2023 13:56:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oMw/9BmIF4+9FSc2Dah9QMnMgrXAVWtI35nyQxrgB/M=; b=pOYvgPd7LuWwUDiLkVmdUtIg5l
	tnhJKTODGSRPsSS0y0CHUBEQtKEjQAhEVRhqOiVUcfSAwQXbXTjWfqHlLoV5EDydyI+PwFVxv7K0q
	6Frk5UV2mEN+oy1TirkLibYKICQ1e/Epv50TuJd0icuu87Anw2MnfVprUX9XmhrX8h/5bosYrM6k3
	SgEgPSeor73RHtx85lX3VzKW6mG4MgXbiPWDltYra7SCuPG4wVe9JXJpeXuo837Bl7PU7co35HRlv
	O56ZcjfGUFxfqBY7gkXp2ICEX+qN+/xa5b93/XetmKbNhte9tevvXo3Tds4awVfmtcro1+S9bQmNu
	Ch8Gajuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHP0t-00AC6W-93; Mon, 16 Jan 2023 12:54:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHP0h-00AC59-Ee
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 12:54:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHP0f-0006BP-VA; Mon, 16 Jan 2023 13:54:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHP0f-006RhT-C8; Mon, 16 Jan 2023 13:54:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHP0e-002zYQ-QZ; Mon, 16 Jan 2023 13:54:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 13:54:43 +0100
Message-Id: <20230116125443.713033-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_045447_524822_E94BB429 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] state: backend: direct: open backend in read-only mode if possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We unconditionally open the device backing a direct bucket in read-write
mode. We already populate struct state_backend_storage::readonly though,
which we could consult at device open time. Do so. This could possibly
be done for MTD as well, but until that's tested, for now, we do it only
for the direct backend meant for use with block devices.

This has no functional change for barebox, which calls state_new_from_node
in the DT driver and in the EFI initcall always with readonly=false, but
we can benefit from this in barebox_state to open a device in read-only
mode when possible (e.g. when called to --dump).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/backend_bucket_direct.c | 4 ++--
 common/state/backend_storage.c       | 2 +-
 common/state/state.c                 | 6 +++---
 common/state/state.h                 | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 3818c6f0b0ec..f06e14277862 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -164,12 +164,12 @@ static void state_backend_bucket_direct_free(struct
 
 int state_backend_bucket_direct_create(struct device *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
-				       off_t offset, ssize_t max_size)
+				       off_t offset, ssize_t max_size, bool readonly)
 {
 	int fd;
 	struct state_backend_storage_bucket_direct *direct;
 
-	fd = open(path, O_RDWR);
+	fd = open(path, readonly ? O_RDONLY : O_RDWR);
 	if (fd < 0) {
 		dev_err(dev, "Failed to open file '%s', %d\n", path, -errno);
 		return -errno;
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index c55d22e37f70..df81902bf7be 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -332,7 +332,7 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
 		offset = storage->offset + n * stridesize;
 		ret = state_backend_bucket_direct_create(storage->dev, storage->path,
 							 &bucket, offset,
-							 stridesize);
+							 stridesize, storage->readonly);
 		if (ret) {
 			dev_warn(storage->dev, "Failed to create direct bucket at '%s' offset %lld\n",
 				 storage->path, (long long) offset);
diff --git a/common/state/state.c b/common/state/state.c
index a614c849c74e..cabe285fbdf3 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -653,14 +653,14 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (ret)
 		goto out_release_state;
 
+	if (readonly)
+		state_backend_set_readonly(state);
+
 	ret = state_storage_init(state, state->backend_path, offset,
 				 size, stridesize, storage_type);
 	if (ret)
 		goto out_release_state;
 
-	if (readonly)
-		state_backend_set_readonly(state);
-
 	ret = state_from_node(state, node, 1);
 	if (ret) {
 		goto out_release_state;
diff --git a/common/state/state.h b/common/state/state.h
index 7eb51bbdb57d..f0c5b1de4123 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -226,7 +226,7 @@ void state_backend_set_readonly(struct state *state);
 void state_storage_free(struct state_backend_storage *storage);
 int state_backend_bucket_direct_create(struct device *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
-				       off_t offset, ssize_t max_size);
+				       off_t offset, ssize_t max_size, bool readonly);
 int state_storage_write(struct state_backend_storage *storage,
 			const void * buf, ssize_t len);
 int state_storage_read(struct state_backend_storage *storage,
-- 
2.30.2




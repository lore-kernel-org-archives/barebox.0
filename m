Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YygYf-0007MX-8W
 for barebox@lists.infradead.org; Sat, 30 May 2015 13:12:14 +0000
Received: from polaris.fritz.box (f053152068.adsl.alicedsl.de [78.53.152.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id A7A47C1893
 for <barebox@lists.infradead.org>; Sat, 30 May 2015 15:11:51 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Sat, 30 May 2015 15:11:44 +0200
Message-Id: <1432991505-21204-2-git-send-email-jluebbe@debian.org>
In-Reply-To: <1432991505-21204-1-git-send-email-jluebbe@debian.org>
References: <1432991505-21204-1-git-send-email-jluebbe@debian.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] state: add some more error messages
To: barebox@lists.infradead.org

This helps with finding out why the state cannot be loaded correctly.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 common/state.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/common/state.c b/common/state.c
index d243de8..0be0efe 100644
--- a/common/state.c
+++ b/common/state.c
@@ -848,10 +848,13 @@ int state_load(struct state *state)
 		return -ENOSYS;
 
 	ret = state->backend->load(state->backend, state);
-	if (ret)
+	if (ret) {
+		dev_warn(&state->dev, "load failed\n");
 		state->dirty = 1;
-	else
+	} else {
+		dev_info(&state->dev, "load successful\n");
 		state->dirty = 0;
+	}
 
 	return ret;
 }
@@ -1065,8 +1068,11 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 
 	ret = read_full(fd, &header, sizeof(header));
 	max_len -= sizeof(header);
-	if (ret < 0)
+	if (ret < 0) {
+		dev_err(&state->dev,
+			"cannot read header from backend device");
 		return ret;
+	}
 
 	crc = crc32(0, &header, sizeof(header) - sizeof(uint32_t));
 	if (crc != header.header_crc) {
@@ -1127,8 +1133,10 @@ static int state_backend_raw_load(struct state_backend *backend,
 	int ret = 0, fd, i;
 
 	fd = open(backend->path, O_RDONLY);
-	if (fd < 0)
+	if (fd < 0) {
+		dev_err(&state->dev, "cannot open %s\n", backend->path);
 		return fd;
+	}
 
 	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
 		off_t offset = backend_raw->offset + i * backend_raw->stride;
@@ -1352,7 +1360,8 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	}
 
 	if (backend_raw->size / backend_raw->stride < RAW_BACKEND_COPIES) {
-		dev_err(&state->dev, "not enough space for two copies\n");
+		dev_err(&state->dev, "not enough space for two copies (%lu each)\n",
+			backend_raw->stride);
 		ret = -ENOSPC;
 		goto err;
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

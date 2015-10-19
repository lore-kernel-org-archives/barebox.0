Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo7bp-0005bG-VW
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 10:24:06 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 19 Oct 2015 12:23:39 +0200
Message-Id: <1445250220-28239-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
References: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/6] state: prepare raw backend for hmac support
To: barebox@lists.infradead.org

This patch cleans up the raw backend, so that adding hmac support in the next
patch is easier.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/common/state.c b/common/state.c
index fdb5564af3bd..d37f4ab4b539 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1254,7 +1254,7 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 	struct backend_raw_header header = {};
 	unsigned long max_len;
 	int ret;
-	void *buf;
+	void *buf, *data;
 
 	max_len = backend_raw->stride;
 
@@ -1292,13 +1292,18 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 		return -EINVAL;
 	}
 
-	buf = xzalloc(header.data_len);
+	buf = xzalloc(sizeof(header) + header.data_len);
+	data = buf + sizeof(header);
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0)
+		goto out_free;
 
-	ret = read_full(fd, buf, header.data_len);
+	ret = read_full(fd, buf, sizeof(header) + header.data_len);
 	if (ret < 0)
 		goto out_free;
 
-	crc = crc32(0, buf, header.data_len);
+	crc = crc32(0, data, header.data_len);
 	if (crc != header.data_crc) {
 		dev_err(&state->dev,
 			"invalid crc, calculated 0x%08x, found 0x%08x\n",
@@ -1310,7 +1315,7 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 	list_for_each_entry(sv, &state->variables, list) {
 		if (sv->start + sv->size > header.data_len)
 			break;
-		memcpy(sv->raw, buf + sv->start, sv->size);
+		memcpy(sv->raw, data + sv->start, sv->size);
 	}
 
 	free(buf);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

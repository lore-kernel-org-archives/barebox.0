Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006Ga-Q5
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:19 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:52 +0200
Message-Id: <1432640273-3895-9-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
References: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 8/9] state: backend_raw: add sanity check of data_len during
 load
To: barebox@lists.infradead.org

The length of the data must fit into the remaining available space until the
next copy of the data.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/common/state.c b/common/state.c
index 8f6d14c98255..4a1e935a3b86 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1053,14 +1053,18 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 	uint32_t crc;
 	struct state_variable *sv;
 	struct backend_raw_header header = {};
+	unsigned long max_len;
 	int ret;
 	void *buf;
 
+	max_len = backend_raw->stride;
+
 	ret = lseek(fd, offset, SEEK_SET);
 	if (ret < 0)
 		return ret;
 
 	ret = read_full(fd, &header, sizeof(header));
+	max_len -= sizeof(header);
 	if (ret < 0)
 		return ret;
 
@@ -1079,6 +1083,13 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 		return -EINVAL;
 	}
 
+	if (header.data_len > max_len) {
+		dev_err(&state->dev,
+			"invalid data_len %u in header, max is %lu\n",
+			header.data_len, max_len);
+		return -EINVAL;
+	}
+
 	buf = xzalloc(header.data_len);
 
 	ret = read_full(fd, buf, header.data_len);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

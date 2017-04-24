Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2d5n-0007mQ-LQ
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 12:27:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Apr 2017 14:27:22 +0200
Message-Id: <20170424122722.16275-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: backend_raw: init digest earlier
To: Barebox List <barebox@lists.infradead.org>

In backend_format_raw_pack() digest_length is used before it's
initialized in backend_raw_digest_init() which results in a too small
memory allocation for the raw backend. Fix this and prevent a memory
corruption.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_format_raw.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index 232856a209..d76718cf82 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -211,6 +211,12 @@ static int backend_format_raw_pack(struct state_backend_format *format,
 	unsigned int size_data;
 	int ret;
 
+	if (backend_raw->algo) {
+		ret = backend_raw_digest_init(backend_raw);
+		if (ret)
+			return ret;
+	}
+
 	sv = list_last_entry(&state->variables, struct state_variable, list);
 	size_data = sv->start + sv->size;
 	size_full = size_data + sizeof(*header) + backend_raw->digest_length;
@@ -233,10 +239,6 @@ static int backend_format_raw_pack(struct state_backend_format *format,
 				   sizeof(*header) - sizeof(uint32_t));
 
 	if (backend_raw->algo) {
-		ret = backend_raw_digest_init(backend_raw);
-		if (ret)
-			return ret;
-
 		/* hmac over header and data */
 		ret = digest_update(backend_raw->digest, buf, sizeof(*header) + size_data);
 		if (ret) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiTH-0003yQ-TU
 for barebox@lists.infradead.org; Thu, 23 May 2019 07:49:05 +0000
From: Jan Remmet <j.remmet@phytec.de>
Date: Thu, 23 May 2019 09:49:00 +0200
Message-Id: <1558597740-86748-1-git-send-email-j.remmet@phytec.de>
In-Reply-To: <20190523065712.isc4cdwsnbqvmtf7@pengutronix.de>
References: <20190523065712.isc4cdwsnbqvmtf7@pengutronix.de>
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
Subject: [PATCH v2] common: state: check length
To: barebox@lists.infradead.org

if written_length is read from a partial written bucket it may be to
big and xmalloc will panic barebox.

Check if the value is sane. Make read_len unsigned to avoid negative
values.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
v2: replace compare < 0 by making read_len unsigned

 common/state/backend_bucket_direct.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
index 95ddb9310685..0dbd334db821 100644
--- a/common/state/backend_bucket_direct.c
+++ b/common/state/backend_bucket_direct.c
@@ -52,7 +52,7 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	struct state_backend_storage_bucket_direct *direct =
 	    get_bucket_direct(bucket);
 	struct state_backend_storage_bucket_direct_meta meta;
-	ssize_t read_len;
+	uint32_t read_len;
 	void *buf;
 	int ret;
 
@@ -67,6 +67,11 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
 	}
 	if (meta.magic == direct_magic) {
 		read_len = meta.written_length;
+		if (read_len > direct->max_size) {
+			dev_err(direct->dev, "Wrong length in meta data\n");
+			return -EINVAL;
+
+		}
 	} else {
 		if (meta.magic != ~0 && !!meta.magic)
 			bucket->wrong_magic = 1;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

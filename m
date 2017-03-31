Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0005fn-70
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:27 +0200
Message-Id: <20170331070346.26878-24-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/42] state: backend: Add some documentation
To: Barebox List <barebox@lists.infradead.org>

Write some sentences to make the concepts clearer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_bucket_circular.c | 16 +++++++++++++++-
 common/state/backend_storage.c         | 22 ++++++++++++++++++++++
 2 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 53ee0c3f57..58fffd18e3 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -25,7 +25,21 @@
 
 #include "state.h"
 
-
+/*
+ * The circular backend bucket code. The circular backend bucket is intended
+ * for mtd devices which need an erase operation.
+ *
+ * Erasing blocks is an operation that should be avoided. On NOR flashes erasing
+ * blocks is very time consuming and on NAND flashes each block only has a limited
+ * number of erase cycles allowed. For this reason we continuously write more data
+ * into each eraseblock and only erase it when no more free space is available.
+ * Don't confuse these multiple writes into a single eraseblock with buckets. A bucket
+ * is the whole eraseblock, we just happen to reuse the same bucket for storing
+ * new data.
+ *
+ * If your device is a mtd device, but does not have eraseblocks, like MRAMs, then
+ * the direct bucket is used instead.
+ */
 struct state_backend_storage_bucket_circular {
 	struct state_backend_storage_bucket bucket;
 
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index deae9c325b..f9e8151670 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -25,6 +25,28 @@
 
 #include "state.h"
 
+/*
+ * The state framework stores data in so called buckets. A bucket is
+ * exactly one copy of the state we want to store. On flash type media
+ * a bucket corresponds to a single eraseblock. On media which do not
+ * need an erase operation a bucket corresponds to a storage area of
+ * @stridesize bytes.
+ *
+ * For redundancy and to make sure that we have valid data on the storage
+ * device at any time the state framework stores multiple buckets. The strategy
+ * is as follows:
+ *
+ * When loading the state from the storage we iterate over the buckets. We
+ * take the first one we find which has valid crcs. The next step is to
+ * restore consistency between the different buckets. This means rewriting
+ * a bucket when it signalled it needs refresh (i.e. returned -EUCLEAN)
+ * or when contains data different from the bucket we use.
+ *
+ * When the state backend initialized successfully we already restored
+ * consistency which means all buckets contain the same data. This means
+ * when storing a new state we can just write all buckets in order.
+ */
+
 const unsigned int min_copies_written = 1;
 
 /**
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

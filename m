Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhcBU-0002qM-7o
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 13:47:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB6-0007jF-4o
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:40 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhcB5-00040K-Rt
 for barebox@lists.infradead.org; Tue, 15 Aug 2017 15:46:39 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 15 Aug 2017 15:46:35 +0200
Message-Id: <20170815134636.21236-7-jbe@pengutronix.de>
In-Reply-To: <20170815134636.21236-1-jbe@pengutronix.de>
References: <20170815134636.21236-1-jbe@pengutronix.de>
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
Subject: [PATCH 6/7] state: add debugging help
To: barebox@lists.infradead.org

While working on the state documentation it turns out to be helpful to have
more debug messages while a developer implements a 'state' variable set
and tries to configure it correctly.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 common/state/backend_storage.c | 7 ++++++-
 common/state/state.c           | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index d6e7adcf5..2e2478cb6 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -146,6 +146,7 @@ int state_storage_read(struct state_backend_storage *storage,
 	struct state_backend_storage_bucket *bucket, *bucket_used = NULL;
 	int ret;
 
+	dev_dbg(storage->dev, "Checking redundant buckets...\n");
 	/*
 	 * Iterate over all buckets. The first valid one we find is the
 	 * one we want to use.
@@ -164,8 +165,12 @@ int state_storage_read(struct state_backend_storage *storage,
 		ret = format->verify(format, magic, bucket->buf, &bucket->len, flags);
 		if (!ret && !bucket_used)
 			bucket_used = bucket;
+		if (ret)
+			dev_info(storage->dev, "Ignoring broken bucket %d@0x%08lx...\n", bucket->num, bucket->offset);
 	}
 
+	dev_dbg(storage->dev, "Checking redundant buckets finished.\n");
+
 	if (!bucket_used) {
 		dev_err(storage->dev, "Failed to find any valid state copy in any bucket\n");
 
@@ -386,7 +391,7 @@ int state_storage_init(struct state *state, const char *path,
 			dev_warn(storage->dev, "using old format circular storage type.\n");
 			circular = false;
 		} else {
-			dev_warn(storage->dev, "unknown storage type '%s'\n", storagetype);
+			dev_dbg(storage->dev, "unknown storage type '%s'\n", storagetype);
 			return -EINVAL;
 		}
 		return state_storage_mtd_buckets_init(storage, &meminfo, circular);
diff --git a/common/state/state.c b/common/state/state.c
index 121ba0c6d..18ffbe29a 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -608,11 +608,13 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 
 	ret = of_property_read_string(node, "backend-type", &backend_type);
 	if (ret) {
+		dev_dbg(&state->dev, "Missing 'backend-type' property\n");
 		goto out_release_state;
 	}
 
 	ret = of_property_read_u32(node, "backend-stridesize", &stridesize);
 	if (ret) {
+		dev_dbg(&state->dev, "'backend-stridesize' property undefined, trying to continue without\n");
 		stridesize = 0;
 	}
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbV-0001eR-IL
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:28 +0200
Message-Id: <20170331070346.26878-25-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/42] state: backend_circular: default to circular storage
To: Barebox List <barebox@lists.infradead.org>

Default to the new circular storage format which saves erase
cycles. The old format can still be selected with
backend-storage-type = "noncircular".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst          |  6 +++---
 common/state/backend_storage.c                             | 14 ++++++++------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index e9daa65f1a..00fb592614 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -40,9 +40,9 @@ Optional properties:
   e.g. ``hmac(sha256)``. Only used for ``raw``.
 * ``backend-stridesize``: Maximum size per copy of the data. Only important for
   non-MTD devices
-* ``backend-storage-type``: Type of the storage. This has two options at the
-  moment. For MTD with erasing the correct type is ``circular``. For all other
-  devices and files, ``direct`` is the needed type.
+* ``backend-storage-type``: Normally the correct storage type is detected auto-
+  matically. The circular backend supports the option ``noncircular`` to fall
+  back to an old storage format.
 
 Variable nodes
 --------------
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index f9e8151670..036204c188 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -376,13 +376,15 @@ int state_storage_init(struct state *state, const char *path,
 		ret = mtd_get_meminfo(path, &meminfo);
 
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
-		bool circular = true;
-		if (!storagetype) {
-			circular = false;
-		} else if (strcmp(storagetype, "circular")) {
-			dev_warn(storage->dev, "Unknown storagetype '%s', falling back to old format circular storage type.\n",
-				 storagetype);
+		bool circular;
+		if (!storagetype || !strcmp(storagetype, "circular")) {
+			circular = true;
+		} else if (!strcmp(storagetype, "noncircular")) {
+			dev_warn(storage->dev, "using old format circular storage type.\n");
 			circular = false;
+		} else {
+			dev_warn(storage->dev, "unknown storage type '%s'\n", storagetype);
+			return -EINVAL;
 		}
 		return state_storage_mtd_buckets_init(storage, &meminfo, circular);
 	} else {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

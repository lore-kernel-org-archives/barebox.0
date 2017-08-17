Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1diHAf-0005vr-Mx
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 09:32:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1diHAH-0006RI-Kn
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 11:32:33 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1diHAH-0000HC-Dn
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 11:32:33 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 17 Aug 2017 11:32:32 +0200
Message-Id: <20170817093233.979-1-jbe@pengutronix.de>
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
Subject: [PATCH 1/2] state: use the given backend storage type name
To: barebox@lists.infradead.org

Change 119f92b27e131a0cb506fe8d8bffe8010fb14a3d already tried to fix it, but
forgets the 'direct' usecase.

The 'backend-storage-type' node is optional. Its default depends on the
capability of the used backend memory, which means "circular" or NULL.
The latter defaults to 'direct' in the routines.
If it is NULL, the devicetree fixup routine skips exporting a
'backend-storage-type' node to the kernel's devicetree.

But currently if the 'backend-storage-type' node is explicitly given as
'direct', it will be skipped silently and set to NULL instead. In this
case the user of the 'barebox-state' tool then ends up with the warning:

"No backend-storage-type found, using default"

which is annoying, because it was given.

Storing the given value will still use a NULL if the
'backend-storage-type' node isn't defined, but stores everything else if
it is defined. Then the 'backend-storage-type' node is present in the
kernel's devicetree as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 6 ++++--
 common/state/backend_storage.c                              | 9 +++++----
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 4b1aade66..cebb5f828 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -48,8 +48,10 @@ Optional Properties
 ###################
 
 * ``backend-stridesize``: stride counted in bytes. See note below.
-* ``backend-storage-type``: Defines the backend storage type to ``direct`` or
-  ``circular``. Defaults to ``circular`` for media which requires erase cycles.
+* ``backend-storage-type``: Defines the backend storage type to ``direct``,
+  ``circular`` or ``noncircular``. If the backend memory needs to be erased
+  prior a write it defaults to the ``circular`` storage backend type, for backend
+  memories like RAMs or EEPROMs it defaults to the ``direct`` storage backend type.
 * ``algo``: A HMAC algorithm used to detect manipulation of the data
   or header, sensible values follow this pattern ``hmac(<HASH>)``,
   e.g. ``hmac(sha256)``. Only available for the ``backend-type`` ``raw``.
diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index 2e2478cb6..825db824b 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -357,11 +357,12 @@ static int state_storage_file_buckets_init(struct state_backend_storage *storage
  * @param dev_offset Offset in the device to start writing at.
  * @param max_size Maximum size of the data. May be 0 for infinite.
  * @param stridesize Distance between two copies of the data. Not relevant for MTD
- * @param storagetype Type of the storage backend. This may be NULL where we
- * autoselect some backwardscompatible backend options
+ * @param storagetype Type of the storage backend. May be NULL for autoselection.
  * @return 0 on success, -errno otherwise
  *
- * Depending on the filetype, we create mtd buckets or normal file buckets.
+ * If the backend memory needs to be erased prior a write, the @b storagetype
+ * defaults to 'circular' storage backend type, for backend memories like RAMs
+ * or EEPROMs @b storagetype defaults to the 'direct' storage backend type.
  */
 int state_storage_init(struct state *state, const char *path,
 		       off_t offset, size_t max_size, uint32_t stridesize,
@@ -373,6 +374,7 @@ int state_storage_init(struct state *state, const char *path,
 
 	INIT_LIST_HEAD(&storage->buckets);
 	storage->dev = &state->dev;
+	storage->name = storagetype;
 	storage->stridesize = stridesize;
 	storage->offset = offset;
 	storage->max_size = max_size;
@@ -387,7 +389,6 @@ int state_storage_init(struct state *state, const char *path,
 			storage->name = "circular";
 			circular = true;
 		} else if (!strcmp(storagetype, "noncircular")) {
-			storage->name = "noncircular";
 			dev_warn(storage->dev, "using old format circular storage type.\n");
 			circular = false;
 		} else {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

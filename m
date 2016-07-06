Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi45-0002Ph-Oi
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:15 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed,  6 Jul 2016 10:19:45 +0200
Message-Id: <1467793185-3709-5-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1467793185-3709-1-git-send-email-mpa@pengutronix.de>
References: <1467793185-3709-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v3 4/4] state: also append backend storage stridesize
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 common/state/backend_storage.c | 1 +
 common/state/state.c           | 7 +++++++
 common/state/state.h           | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
index efe8bac05da0..c4508a8aba67 100644
--- a/common/state/backend_storage.c
+++ b/common/state/backend_storage.c
@@ -477,6 +477,7 @@ int state_storage_init(struct state_backend_storage *storage,
 	INIT_LIST_HEAD(&storage->buckets);
 	storage->dev = dev;
 	storage->name = storagetype;
+	storage->stridesize = stridesize;
 
 	ret = mtd_get_meminfo(path, &meminfo);
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
diff --git a/common/state/state.c b/common/state/state.c
index 9f4553d69a55..3997f8150cc4 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -370,6 +370,13 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		}
 	}
 
+	if (state->backend.storage.stridesize) {
+		ret = of_property_write_u32(new_node, "backend-stridesize",
+				state->backend.storage.stridesize);
+		if (ret)
+			goto out;
+	}
+
 	/* address-cells + size-cells */
 	ret = of_property_write_u32(new_node, "#address-cells", 1);
 	if (ret)
diff --git a/common/state/state.h b/common/state/state.h
index cd5476783056..7f9651abd847 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -72,6 +72,8 @@ struct state_backend_storage {
 
 	const char *name;
 
+	uint32_t stridesize;
+
 	bool readonly;
 };
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

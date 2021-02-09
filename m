Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from www153.your-server.de ([213.133.104.153])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9TOm-0003Yy-BO
 for barebox@lists.infradead.org; Tue, 09 Feb 2021 13:49:50 +0000
From: Edoardo Scaglia <scaglia@amelchem.com>
Date: Tue,  9 Feb 2021 14:49:36 +0100
Message-Id: <20210209134936.2551-1-scaglia@amelchem.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] of: partitions: fix NULL pointer dereference in
 of_partition_fixup()
To: barebox@lists.infradead.org
Cc: Edoardo Scaglia <scaglia@amelchem.com>

When barebox 'internal devicetree' is not used and your board
registers a device that in turn registers a of_partition_fixup() (such
as at24 EEPROM), running the bootm command crashes barebox with a NULL
pointer dereference.

The error occurs when barebox applies Linux DTB fixups, specifically
in following lines of_partition_fixup():

    name = of_get_reproducible_name(cdev->device_node);
    np = of_find_node_by_reproducible_name(root, name);

since internal devicetree is not used cdev->device_node is NULL thus
of_get_reproducibile_name() returns NULL then NULL is passed as lookup
string to of_find_node_by_reproducible_name() which crashes trying to
dereference NULL pointer.

The culprit is commit fa9179444c36f9daf5010215cf8e4dcb3bd1ffb2.
Previously of_partition_fixup() returned -EINVAL when
cdev->device_node was NULL, apparently that check was lost along the
road.

Signed-off-by: Edoardo Scaglia <scaglia@amelchem.com>
---
 drivers/of/partition.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 65c24c5426..b71716218b 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -235,6 +235,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	struct device_node *np;
 	char *name;
 
+	if (!cdev->device_node)
+		return -EINVAL;
+
 	name = of_get_reproducible_name(cdev->device_node);
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

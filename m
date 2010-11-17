Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PIihk-0004os-LH
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 14:09:45 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Nov 2010 14:59:24 +0100
Message-Id: <1290002365-22712-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101112180228.GC13661@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] mem: multiple resource support allow exclude a resource
To: barebox@lists.infradead.org

introduce DEVFS_MEM_BAREBOX_ONLY for this purpose

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c |    4 ++++
 include/driver.h        |    1 +
 2 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index b74c5e8..55d1401 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -79,6 +79,10 @@ static void setup_memory_tags(void)
 	list_for_each_entry(mem, &memory_list, list) {
 		for (i = 0; i < mem->dev->num_resources; i++) {
 			res = &mem->dev->resource[i];
+
+			if (res->flags & DEVFS_MEM_BAREBOX_ONLY)
+				break;
+
 			params->hdr.tag = ATAG_MEM;
 			params->hdr.size = tag_size(tag_mem32);
 
diff --git a/include/driver.h b/include/driver.h
index c7dce1e..e98455c 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -354,6 +354,7 @@ ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offse
 #define DEVFS_PARTITION_READONLY	(1 << 1)
 #define DEVFS_IS_PARTITION		(1 << 2)
 #define DEVFS_RDWR			(1 << 3)
+#define DEVFS_MEM_BAREBOX_ONLY		(1 << 4)
 
 int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 		int flags, const char *name);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5fTJ-0005CV-B9
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 16:46:14 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed, 13 Feb 2013 17:45:17 +0100
Message-Id: <1360773918-10663-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1360773918-10663-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/2] cfa-10036: Use the second MMC partition to store the
 environment
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

Since the only storage medium on the cfa-10036 is the MMC card, we need
to have a registered environment partition on it if we want to be able
to modify at runtime.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   44 +++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index b59dbab..1821b10 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -97,9 +97,46 @@ static int cfa10036_mem_init(void)
 }
 mem_initcall(cfa10036_mem_init);
 
+/**
+ * Try to register an environment storage on the attached MCI card
+ * @return 0 on success
+ *
+ * We rely on the existence of a usable SD card, already attached to
+ * our system, to get something like a persistent memory for our environment.
+ * If this SD card is also the boot media, we can use the second partition
+ * for our environment purpose (if present!).
+ */
+static int register_persistant_environment(void)
+{
+	struct cdev *cdev;
+
+	/*
+	 * The CFA-10036 only has one MCI card socket.
+	 * So, we expect its name as "disk0".
+	 */
+	cdev = cdev_by_name("disk0");
+	if (cdev == NULL) {
+		pr_err("No SD card found\n");
+		return -ENODEV;
+	}
+
+	/* MCI card is present, also a useable partition on it? */
+	cdev = cdev_by_name("disk0.1");
+	if (cdev == NULL) {
+		pr_err("No second partition available\n");
+		pr_info("Please create at least a second partition with"
+			" 256 kiB...512 kiB in size (your choice)\n");
+		return -ENODEV;
+	}
+
+	/* use the full partition as our persistent environment storage */
+	return devfs_add_partition("disk0.1", 0, cdev->size,
+						DEVFS_PARTITION_FIXED, "env0");
+}
+
 static int cfa10036_devices_init(void)
 {
-	int i;
+	int i, ret;
 
 	/* initizalize muxing */
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
@@ -124,6 +161,11 @@ static int cfa10036_devices_init(void)
 
 	cfa10036_detect_hw();
 
+	ret = register_persistant_environment();
+	if (ret != 0)
+		printf("Cannot create the 'env0' persistant "
+			 "environment storage (%d)\n", ret);
+
 	return 0;
 }
 device_initcall(cfa10036_devices_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

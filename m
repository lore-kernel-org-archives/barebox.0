Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3KZU-00078w-Eq
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 12:30:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 14:29:55 +0200
Message-Id: <20180921122955.9513-2-s.hauer@pengutronix.de>
In-Reply-To: <20180921122955.9513-1-s.hauer@pengutronix.de>
References: <20180921122955.9513-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] environment: Do not use environment when overlapping with
 other partitions
To: Barebox List <barebox@lists.infradead.org>

Environment partitions are usually specified with their hardcoded offset
and size, either in the device tree or the board file. These partitions
potentially overlap with other partitions read from the partition table.
Overlapping partitions for sure have bad effects. Be more friendly to our
users and warn them when such a situation occurs and stop using that
partition for storing the environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
 include/common.h | 10 ++++++++++
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index 8553849cb3..f6bb1f1947 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -73,16 +73,62 @@ fs_initcall(mount_root);
 #endif
 
 #ifdef CONFIG_ENV_HANDLING
+static int check_overlap(const char *path)
+{
+	struct cdev *cenv, *cdisk, *cpart;
+
+	if (strncmp(path, "/dev/", 5))
+		return 0;
+
+	path = devpath_to_name(path);
+	cenv = cdev_by_name(path);
+	if (!cenv)
+		return -EINVAL;
+
+	cdisk = cenv->master;
+
+	if (!cdisk)
+		return 0;
+
+	list_for_each_entry(cpart, &cdisk->partitions, partition_entry) {
+		if (cpart == cenv) {
+			pr_info("Found self\n");
+			continue;
+		}
+
+		if (lregion_overlap(cpart->offset, cpart->size,
+				    cenv->offset, cenv->size))
+			goto conflict;
+	}
+
+	return 0;
+
+conflict:
+	pr_err("Environment partition (0x%08llx-0x%08llx) "
+		"overlaps with partition %s (0x%08llx-0x%08llx), not using it\n",
+		cenv->offset, cenv->offset + cenv->offset + cenv->size - 1,
+		cpart->name,
+		cpart->offset, cpart->offset + cpart->offset + cpart->size - 1);
+
+	return -EINVAL;
+}
+
 static int load_environment(void)
 {
 	const char *default_environment_path;
+	int ret;
 
 	default_environment_path = default_environment_path_get();
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
 		defaultenv_load("/env", 0);
 
-	envfs_load(default_environment_path, "/env", 0);
+	ret = check_overlap(default_environment_path);
+	if (ret)
+		default_environment_path_set(NULL);
+	else
+		envfs_load(default_environment_path, "/env", 0);
+
 	nvvar_load();
 
 	return 0;
diff --git a/include/common.h b/include/common.h
index abbe73fd36..f52c7e430c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -157,4 +157,14 @@ static inline bool region_overlap(unsigned long starta, unsigned long lena,
 	return 1;
 }
 
+static inline bool lregion_overlap(loff_t starta, loff_t lena,
+				   loff_t startb, loff_t lenb)
+{
+	if (starta + lena <= startb)
+		return 0;
+	if (startb + lenb <= starta)
+		return 0;
+	return 1;
+}
+
 #endif	/* __COMMON_H_ */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

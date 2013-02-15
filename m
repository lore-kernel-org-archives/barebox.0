Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Pif-0003KY-5g
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:09:09 +0000
Received: by mail-ea0-f177.google.com with SMTP id n13so1525540eaa.22
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 10:09:06 -0800 (PST)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Fri, 15 Feb 2013 19:09:01 +0100
Message-Id: <1360951741-7911-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH] addpart: size and offset not needed for already defined
 partitions
To: barebox@lists.infradead.org

You can use the name of an already defined partition
(i.e. hardcoded in board specific files) without specifying
size and offset that are automatically obtained

i.e.

$ addpart /dev/nor0 (self)
$ addpart /dev/nor0 (env0)

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 commands/partition.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/commands/partition.c b/commands/partition.c
index fdd6041..8cb50ca 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -53,6 +53,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 	char buf[PATH_MAX] = {};
 	unsigned long flags = 0;
 	int ret;
+	struct cdev *cdev;
 
 	memset(buf, 0, PATH_MAX);
 
@@ -63,7 +64,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 		size = strtoul_suffix(partstr, &end, 0);
 	}
 
-	if (*end == '@')
+	if ((*end == '@') && (size != 0))
 		*offset = strtoul_suffix(end+1, &end, 0);
 
 	if (size == SIZE_REMAINING)
@@ -78,6 +79,18 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
 			printf("could not find matching ')'\n");
 			return -EINVAL;
 		}
+		memcpy(buf, partstr, end - partstr);
+
+		if (size == 0) {
+			cdev = cdev_by_name(buf);
+			if (!cdev) {
+				printf("%s: partition not found\n", buf);
+				return -EINVAL;
+			}
+
+			size = cdev->size;
+			*offset = cdev->offset;
+		}
 
 		if (pflags & PART_ADD_DEVNAME)
 			sprintf(buf, "%s.", devname);
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x232.google.com ([2607:f8b0:4001:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiTad-0004vu-Rj
 for barebox@lists.infradead.org; Thu, 08 May 2014 19:02:44 +0000
Received: by mail-ig0-f178.google.com with SMTP id hl10so178913igb.11
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 12:02:22 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 May 2014 15:02:22 -0400
Message-ID: <CAO6XYUsuH6VfaXZTUXd71+uqK-S=98wVOaNNMM0Sst+mNMPSSw@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: [PATCH 1/1] Update ubirmvol command to allow directly specifying the
 device node.
To: barebox@lists.infradead.org

This patch is a simple change to allow directly specifying the device
node with the "ubirmvol" command.
Originally, the ubirmvol command would have to be similar to this:

ubirmvol ubi0 root

With this patch, you can use a "-d" option and issue the command like
this instead:

ubirmvol -d /dev/ubi0.root

This has the advantage of supporting command line expansion, which
allows for operations like:

ubirmvol -d /dev/ubi0.*

or

ubirmvol -d /dev/ubi0.data*

This functionality can be quite useful for use in automated upgrade
scripts for clearing ubi volumes when the total number of pre-existing
volumes may not be known ahead of time.

Signed-off-by: Michael Burkey <mdburkey at gmail.com>
---
diff -rupN a/commands/ubi.c b/commands/ubi.c
--- a/commands/ubi.c	2014-05-05 04:33:13.000000000 -0400
+++ b/commands/ubi.c	2014-05-08 14:02:37.606173280 -0400
@@ -139,30 +139,85 @@ static int do_ubirmvol(int argc, char *a
 {
 	struct ubi_mkvol_req req;
 	int fd, ret;
-
-	if (argc != 3)
-		return COMMAND_ERROR_USAGE;
-
-	strncpy(req.name, argv[2], UBI_VOL_NAME_MAX);
-	req.name[UBI_VOL_NAME_MAX] = 0;
-
-	fd = open(argv[1], O_WRONLY);
-	if (fd < 0) {
-		perror("open");
-		return 1;
+    int result = 0;
+    int usedev = 0;
+	int argc_min;
+	int opt;
+    int verbose = 0;
+    char *base=NULL;
+    char *dev=NULL;
+    int i;
+
+	while ((opt = getopt(argc, argv, "dv")) > 0)
+    {
+		switch (opt)
+        {
+		    case 'd':
+                usedev = 1;
+			    break;
+		    case 'v':
+                verbose = 1;
+			    break;
+		}
 	}
+
+	argc_min = optind + (usedev ? 1 : 2);
+
+	if (argc < argc_min)
+		return COMMAND_ERROR_USAGE;

-	ret = ioctl(fd, UBI_IOCRMVOL, &req);
-	if (ret)
-		printf("failed to delete: %s\n", strerror(-ret));
-	close(fd);
+    for (i=optind; i < (usedev ? argc : optind+1); i++)
+    {
+        base=argv[i];
+
+        if (usedev)
+        {
+            dev = strchr(argv[i], '.');
+	        if(dev)
+            {
+                *dev = 0;
+                dev++;
+            }
+        }
+        else
+        {
+            dev=argv[i+1];
+        }
+
+        if (dev == NULL)
+        {
+            printf("No target device specified.\n");
+            return COMMAND_ERROR_USAGE;
+        }
+
+        if (verbose)
+            printf("Removing %s.%s\n",base,dev);
+
+    	strncpy(req.name, dev, UBI_VOL_NAME_MAX);
+    	req.name[UBI_VOL_NAME_MAX] = 0;
+
+    	fd = open(base, O_WRONLY);
+    	if (fd < 0) {
+	    	perror("open");
+		    return 1;
+    	}
+
+	    ret = ioctl(fd, UBI_IOCRMVOL, &req);
+	    if (ret)
+		    printf("failed to delete: %s\n", strerror(-ret));
+	    close(fd);
+
+        result |= ret;
+    }

-	return ret ? 1 : 0;
+	return result ? 1 : 0;
 }

 static const __maybe_unused char cmd_ubirmvol_help[] =
 "Usage: ubirmvol <ubidev> <name>\n"
-"Delete ubi volume <name> from <ubidev>\n";
+"or     ubirmvol -d <ubi device node> [ubi device node] ...\n"
+"Delete ubi volume <name> from <ubidev>\n"
+"or delete <ubi device node> (e.g. /dev/ubi0.root)";

 BAREBOX_CMD_START(ubirmvol)
 	.cmd		= do_ubirmvol,

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

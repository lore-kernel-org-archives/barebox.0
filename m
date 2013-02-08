Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from toroondcbmts07.bellnexxia.net ([207.236.237.41]
 helo=toroondcbmts07-srv.bellnexxia.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3u95-0002h3-Iw
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 20:02:04 +0000
Received: from toip55-bus.srvr.bell.ca ([67.69.240.141])
 by toroondcbmts07-srv.bellnexxia.net
 (InterMail vM.8.00.01.00 201-2244-105-20090324) with ESMTP id
 <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
 for <barebox@lists.infradead.org>; Fri, 8 Feb 2013 15:02:00 -0500
Date: Fri, 08 Feb 2013 15:01:53 -0500
From: Xavier Douville <barebox@douville.org>
MIME-Version: 1.0
Message-Id: <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] commands/ubi.c: Add support for VID header offset in
 ubiattach
To: barebox@lists.infradead.org

Hi

On my board I needed to pass a custom VID header offset to ubiattach.
This patch adds the required option to the barebox command.

I also fixed a bug in the error handling of the return value of 
ubi_attach_mtd_dev().
This function doesn't always return 0 on success, it returns the UBI number.
So without this patch, an error message is printed when attaching many 
UBI devices.

thanks for your work

Xavier Douville


  commands/ubi.c |   25 +++++++++++++++++--------
  1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 1653eaa..a10ea1c 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -60,9 +60,14 @@ static int do_ubiattach(int argc, char *argv[])
  {
      struct mtd_info_user user;
      int fd, ret;
+    int vid_hdr_offset = 0;

-    if (argc != 2)
-        return COMMAND_ERROR_USAGE;
+    if (argc != 2) {
+        if (argc == 3)
+            vid_hdr_offset = simple_strtol(argv[2], NULL, 0);
+        else
+            return COMMAND_ERROR_USAGE;
+    }

      fd = open(argv[1], O_RDWR);
      if (fd < 0) {
@@ -71,19 +76,23 @@ static int do_ubiattach(int argc, char *argv[])
      }

      ret = ioctl(fd, MEMGETINFO, &user);
-    if (!ret)
-        ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0);
+    if (!ret) {
+        ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 
vid_hdr_offset);
+        if (ret >= 0) {
+            close(fd);
+            return 0;
+        }
+    }

-    if (ret)
-        printf("failed to attach: %s\n", strerror(-ret));
+    printf("failed to attach: %s\n", strerror(ret));

      close(fd);

-    return ret ? 1 : 0;
+    return 1;
  }

  static const __maybe_unused char cmd_ubiattach_help[] =
-"Usage: ubiattach <mtddev>\n"
+"Usage: ubiattach <mtddev> [vid_hdr_offset]\n"
  "Attach <mtddev> to ubi\n";

  BAREBOX_CMD_START(ubiattach)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAb-0000Zm-G1
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:15 +0100
Message-Id: <1322467340-10596-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] bootm: fix various memory leaks
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   19 +++++++++++--------
 common/image.c   |    1 +
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 316ed1f..c62df4f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -145,10 +145,11 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 {
 	int	opt;
 	image_header_t *os_header;
-	struct image_handle *os_handle, *initrd_handle = NULL;
+	struct image_handle *os_handle = NULL;
 	struct image_handler *handler;
 	struct image_data data;
 	u32 initrd_start;
+	int ret = 1;
 
 	memset(&data, 0, sizeof(struct image_data));
 	data.verify = 1;
@@ -178,19 +179,21 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 				data.initrd = map_image(optarg, data.verify);
 			}
 			if (!data.initrd)
-				return -1;
+				goto err_out;
 			break;
 		default:
 			break;
 		}
 	}
 
-	if (optind == argc)
-		return COMMAND_ERROR_USAGE;
+	if (optind == argc) {
+		ret = COMMAND_ERROR_USAGE;
+		goto err_out;
+	}
 
 	os_handle = map_image(argv[optind], data.verify);
 	if (!os_handle)
-		return 1;
+		goto err_out;
 	data.os = os_handle;
 
 	os_header = &os_handle->header;
@@ -224,9 +227,9 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 err_out:
 	if (os_handle)
 		unmap_image(os_handle);
-	if (initrd_handle)
-		unmap_image(initrd_handle);
-	return 1;
+	if (data.initrd)
+		unmap_image(data.initrd);
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(bootm)
diff --git a/common/image.c b/common/image.c
index 939fe4b..d68889b 100644
--- a/common/image.c
+++ b/common/image.c
@@ -404,6 +404,7 @@ err_out:
 	close(fd);
 	if (handle->flags & IH_MALLOC)
 		free(handle->data);
+	free(handle->data_entries);
 	free(handle);
 	return NULL;
 }
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

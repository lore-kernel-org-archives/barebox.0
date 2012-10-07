Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKyv4-0006RO-DL
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 22:01:55 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2294765wey.36
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2012 15:01:54 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Mon,  8 Oct 2012 00:01:20 +0200
Message-Id: <1349647287-28224-7-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 06/13] bootm: close open files
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/lib/bootm.c | 4 +++-
 commands/bootm.c     | 6 +++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index c5b76ea..288c0b2 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -269,8 +269,9 @@ static int do_bootz_linux(struct image_data *data)
 
 	ret = do_bootz_linux_fdt(fd, data);
 	if (ret && ret != -ENXIO)
-		return ret;
+		goto err_out;
 
+	close(fd);
 	return __do_bootm_linux(data, swap);
 
 err_out:
@@ -431,6 +432,7 @@ static int do_bootm_aimage(struct image_data *data)
 		reset_cpu(0);
 	}
 
+	close(fd);
 	return __do_bootm_linux(data, 0);
 
 err_out:
diff --git a/commands/bootm.c b/commands/bootm.c
index 8e51695..20b49f0 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -70,6 +70,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 		if (ret) {
 			printf("Checking data crc failed with %s\n",
 					strerror(-ret));
+			uimage_close(data->os);
 			return ret;
 		}
 	}
@@ -79,6 +80,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (data->os->header.ih_arch != IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       data->os->header.ih_arch);
+		uimage_close(data->os);
 		return -EINVAL;
 	}
 
@@ -88,8 +90,10 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
 		data->os_res = uimage_load_to_sdram(data->os, 0,
 				data->os_address);
-		if (!data->os_res)
+		if (!data->os_res) {
+			uimage_close(data->os);
 			return -ENOMEM;
+		}
 	}
 
 	return 0;
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nH-Mq
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00022A-VT
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-0003F5-0G
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:42 +0200
Message-Id: <20190527095744.5923-17-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 16/18] scripts: kwbimage: fix build with non-glibc systems
To: barebox@lists.infradead.org

get_current_dir_name is a glibc extension, thus replace it
with a call to standard POSIX pathconf/malloc/gecwd.

The result slightly differs, because get_current_dir_name consults
the $PWD environment variable as as well, but that's ok, as it's
just an error message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/kwbimage.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 2a052a7ff385..6ba4abaa3076 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -860,12 +860,16 @@ static void *image_create_v1(struct image_cfg_element *image_cfg,
 
 		ret = stat(binarye->binary.file, &s);
 		if (ret < 0) {
-			char *cwd = get_current_dir_name();
+			char *buf, *cwd = NULL;
+			size_t size = (size_t)pathconf(".", _PC_PATH_MAX);
+			buf = malloc(size);
+			if (buf)
+				cwd = getcwd(buf, size);
 			fprintf(stderr,
 				"Didn't find the file '%s' in '%s' which is mandatory to generate the image\n"
 				"This file generally contains the DDR3 training code, and should be extracted from an existing bootable\n"
 				"image for your board. See 'kwbimage -x' to extract it from an existing image.\n",
-				binarye->binary.file, cwd);
+				binarye->binary.file, cwd ? cwd : "current working directory");
 			free(cwd);
 			return NULL;
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

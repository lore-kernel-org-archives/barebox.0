Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqN7A-0003oY-B5
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 20:44:25 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 30 Jun 2020 22:43:59 +0200
Message-Id: <20200630204402.26566-2-cleger@kalray.eu>
In-Reply-To: <20200630204402.26566-1-cleger@kalray.eu>
References: <20200630204402.26566-1-cleger@kalray.eu>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 1/4] common: bootm: allow building with an undefined IH_ARCH
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Some architectures might not want to support uImage. To do so, allow
IH_ARCH to be let undefined which will make it possible to compile boot
support.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/bootm.c  | 2 +-
 include/image.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 4110d8d6e..bea73fac3 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -510,7 +510,7 @@ static int bootm_open_os_uimage(struct image_data *data)
 
 	uimage_print_contents(data->os);
 
-	if (data->os->header.ih_arch != IH_ARCH) {
+	if (IH_ARCH == IH_ARCH_INVALID || data->os->header.ih_arch != IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       data->os->header.ih_arch);
 		return -EINVAL;
diff --git a/include/image.h b/include/image.h
index 88b628bc7..0a7832f13 100644
--- a/include/image.h
+++ b/include/image.h
@@ -101,6 +101,8 @@
 #define IH_ARCH IH_ARCH_AVR32
 #elif defined(CONFIG_LINUX)
 #define IH_ARCH IH_ARCH_LINUX
+#else
+#define IH_ARCH IH_ARCH_INVALID
 #endif
 
 /*
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

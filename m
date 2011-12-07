Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzu-0005eX-Iu
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:53:04 +0100
Message-Id: <1323262387-8012-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] ft_build: temporarily disable bootm oftree support
To: barebox@lists.infradead.org

We do not have any command line parser support for bootm anymore.
Disable it for now to at least be able to compile it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ft_build.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/common/ft_build.c b/common/ft_build.c
index 4c27cfa..9042f13 100644
--- a/common/ft_build.c
+++ b/common/ft_build.c
@@ -591,6 +591,7 @@ void ft_setup(void *blob, bd_t * bd, ulong initrd_start, ulong initrd_end)
 #endif
 }
 
+#if 0
 static int oftree_handler_cmdline_parse(struct image_data *data, int opt,
 		char *optarg)
 {
@@ -616,4 +617,4 @@ static int oftree_register_image_handler(void)
 }
 
 late_initcall(oftree_register_image_handler);
-
+#endif
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

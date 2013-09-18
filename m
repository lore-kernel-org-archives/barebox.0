Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMACG-0008IJ-0j
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 05:21:05 +0000
Received: by mail-la0-f48.google.com with SMTP id er20so5156804lab.21
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 22:20:41 -0700 (PDT)
From: Dmitry Smagin <dmitry.s.smagin@gmail.com>
Date: Wed, 18 Sep 2013 09:20:31 +0400
Message-Id: <1379481633-24534-2-git-send-email-dmitry.s.smagin@gmail.com>
In-Reply-To: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
References: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: [PATCH 1/3] Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER
 option
To: barebox@lists.infradead.org
Cc: Dmitry Smagin <dmitry.s.smagin@gmail.com>

This patch fixes linker error:
  barebox.c:(.text.environment_probe+0x48): undefined reference to `default_environment_path`

Which appears when compiling env-less boards with enabled devicetree.

Signed-off-by: Dmitry Smagin <dmitry.s.smagin@gmail.com>
---
 drivers/of/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index ab5eac8..6b893d7 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -21,6 +21,7 @@ config OF_NET
 
 config OF_BAREBOX_DRIVERS
 	depends on OFDEVICE
+	depends on ENV_HANDLING
 	bool "Enable barebox specific devicetree configuration drivers"
 	help
 	  barebox supports being configured from devicetree. This enables
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

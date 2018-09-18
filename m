Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPH-0002BN-52
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:52 +0000
Received: by mail-pf1-x430.google.com with SMTP id p12-v6so1686155pfh.2
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:22:58 -0700
Message-Id: <20180918222305.6834-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/11] ARM: i.MX: bbu: Convert devicefile to device name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Data->devicefile can contain absolute path to target device, so we
need to convert it to a device name before we can safely use it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index faa266572..14bc569b7 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -409,8 +409,9 @@ static int imx_bbu_internal_mmcboot_update(struct bbu_handler *handler,
 	char *bootpartvar;
 	const char *bootpart;
 	char *devicefile;
+	const char *devname = devpath_to_name(data->devicefile);
 
-	ret = asprintf(&bootpartvar, "%s.boot", data->devicefile);
+	ret = asprintf(&bootpartvar, "%s.boot", devname);
 	if (ret < 0)
 		return ret;
 
@@ -427,7 +428,7 @@ static int imx_bbu_internal_mmcboot_update(struct bbu_handler *handler,
 		bootpart = "boot0";
 	}
 
-	ret = asprintf(&devicefile, "/dev/%s.%s", data->devicefile, bootpart);
+	ret = asprintf(&devicefile, "/dev/%s.%s", devname, bootpart);
 	if (ret < 0)
 		goto free_bootpartvar;
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

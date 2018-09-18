Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPI-0002BQ-K8
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:23:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id q19-v6so845248pgn.10
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:22:59 -0700
Message-Id: <20180918222305.6834-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/11] ARM: i.MX: bbu: Detect MMC before reading current boot
 partition
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to be able to read "mmcN.boot" we need to detect that device
first. Not doing so would result in failure if "barebox_update" is
executed before "detect mmc0".

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 14bc569b7..796d9454c 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -411,6 +411,12 @@ static int imx_bbu_internal_mmcboot_update(struct bbu_handler *handler,
 	char *devicefile;
 	const char *devname = devpath_to_name(data->devicefile);
 
+	ret = device_detect_by_name(devname);
+	if (ret) {
+		pr_err("Couldn't detect device '%s'\n", devname);
+		return ret;
+	}
+
 	ret = asprintf(&bootpartvar, "%s.boot", devname);
 	if (ret < 0)
 		return ret;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

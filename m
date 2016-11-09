Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWg-0005EN-FQ
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:04 +0000
Received: by mail-pf0-x241.google.com with SMTP id i88so780921pfk.2
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:13:52 -0800
Message-Id: <1478708056-7875-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/28] i.MX: scripts: Add "vf610" soc to imx-image
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Needed in order to support Vybrid SoCs.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index c8ee309..bd48321 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -223,6 +223,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx51", .header_version = 1, .cpu_type = IMX_CPU_IMX51 },
 	{ .name = "imx53", .header_version = 2, .cpu_type = IMX_CPU_IMX53 },
 	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
+	{ .name = "vf610", .header_version = 2, .cpu_type = IMX_CPU_VF610 },
 };
 
 static int do_soc(struct config_data *data, int argc, char *argv[])
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

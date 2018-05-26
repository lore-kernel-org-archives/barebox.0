Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5H-0005un-KO
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:46:41 +0000
Received: by mail-pf0-x243.google.com with SMTP id p12-v6so4082794pff.13
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH v2 17/48] scripts/imx: Add trivial i.MX8 support
Date: Sat, 26 May 2018 13:44:20 -0700
Message-Id: <20180526204451.16530-18-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index fb6ac001e..d29e57f3d 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -233,6 +233,7 @@ static struct soc_type socs[] = {
 	{ .name = "imx6", .header_version = 2, .cpu_type = IMX_CPU_IMX6 },
 	{ .name = "imx7", .header_version = 2, .cpu_type = IMX_CPU_IMX7 },
 	{ .name = "vf610", .header_version = 2, .cpu_type = IMX_CPU_VF610 },
+	{ .name = "imx8", .header_version = 2, .cpu_type = IMX_CPU_IMX8MQ },
 };
 
 static int do_soc(struct config_data *data, int argc, char *argv[])
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

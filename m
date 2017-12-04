Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsoh-00077M-LE
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:38:01 +0000
Received: by mail-pg0-x244.google.com with SMTP id g7so8437668pgs.0
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:37:39 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:37:25 -0800
Message-Id: <20171204153726.11479-4-andrew.smirnov@gmail.com>
In-Reply-To: <20171204153726.11479-1-andrew.smirnov@gmail.com>
References: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] i.MX: imu-bbu-internal: Make use of devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert the code to use shared function from fs.h

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 51ec8b827..a139331a6 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -131,8 +131,7 @@ static int imx_bbu_check_prereq(struct bbu_data *data)
 	if (ret)
 		return ret;
 
-	if (!strncmp(data->devicefile, "/dev/", 5))
-		device_detect_by_name(data->devicefile + 5);
+	device_detect_by_name(devpath_to_name(data->devicefile));
 
 	return 0;
 }
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

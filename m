Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2LfM-0006Hr-40
 for barebox@lists.infradead.org; Mon, 16 May 2016 16:46:49 +0000
Received: by mail-pf0-x244.google.com with SMTP id 145so16245136pfz.1
 for <barebox@lists.infradead.org>; Mon, 16 May 2016 09:46:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 May 2016 09:45:59 -0700
Message-Id: <1463417161-28634-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
References: <1463417161-28634-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 4/6] syscon: Decrease driver registration priority
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of devices on i.MX6 list "syscon" as second compatibility
string, among them, most importantly, is "iomuxv3" pinmux driver, which
gets probed at "postcore_initcall". Probing this driver at
"core_initcall" results in "syscon" driver usurping pinmux device and
preventing "iomuxv3" driver from loading and correctly initializing
pinmux of the system (which in turn results in a lot of sadness).

Moving this driver to be initialized at "device_initcall" time resolves
the issue.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 9589a03..ee62da0 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -111,7 +111,7 @@ static int __init syscon_init(void)
 {
 	return platform_driver_register(&syscon_driver);
 }
-core_initcall(syscon_init);
+device_initcall(syscon_init);
 
 MODULE_AUTHOR("Dong Aisheng <dong.aisheng@linaro.org>");
 MODULE_DESCRIPTION("System Control driver");
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

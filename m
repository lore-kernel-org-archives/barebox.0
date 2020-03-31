Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvT-00062U-LF
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id k15so5608163pfh.6
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:12 -0700
Message-Id: <20200331184722.22707-14-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/23] ARM: zii-vf610-dev: Register SD card slot with BBU
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Register SD card slot with BBU. This is really useful for development
since this allows to update the bootloader on SD card without having
to take it out of the device.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 6b80ec428..35fc9e404 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -162,6 +162,14 @@ static int zii_vf610_dev_register_bbu(void)
 		return ret;
 	}
 
+	ret = vf610_bbu_internal_mmc_register_handler("SD",
+						      "/dev/mmc1",
+						      0);
+	if (ret) {
+		pr_err("Failed to register SD BBU handler\n");
+		return ret;
+	}
+
 	return 0;
 }
 late_initcall(zii_vf610_dev_register_bbu);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

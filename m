Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yip1S-0004AQ-68
 for barebox@lists.infradead.org; Thu, 16 Apr 2015 19:00:23 +0000
Received: by lbbzk7 with SMTP id zk7so66042277lbb.0
 for <barebox@lists.infradead.org>; Thu, 16 Apr 2015 11:59:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 16 Apr 2015 22:00:45 +0300
Message-Id: <1429210845-5402-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] i2c: mv64xxx: continue probe when clock-frequency is missing
To: barebox@lists.infradead.org

Based on this linux kernel commit:

    commit 0ce4bc1dbdd911ae1763e2d4ff36bd1b214a59f7
    Author: Chen-Yu Tsai <wens@csie.org>
    Date:   Mon Sep 1 22:28:13 2014 +0800

        i2c: mv64xxx: continue probe when clock-frequency is missing

        The "clock-frequency" DT property is listed as optional, However,
        the current code stores the return value of of_property_read_u32 in
        the return code of mv64xxx_of_config, but then forgets to clear it
        after setting the default value of "clock-frequency". It is then
        passed out to the main probe function, resulting in a probe failure
        when "clock-frequency" is missing.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/busses/i2c-mv64xxx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 6d8c85b..4fd3a6f 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -540,8 +540,7 @@ mv64xxx_of_config(struct mv64xxx_i2c_data *drv_data,
 	}
 	tclk = clk_get_rate(drv_data->clk);
 
-	rc = of_property_read_u32(np, "clock-frequency", &bus_freq);
-	if (rc)
+	if (of_property_read_u32(np, "clock-frequency", &bus_freq))
 		bus_freq = 100000; /* 100kHz by default */
 
 	if (!mv64xxx_find_baud_factors(bus_freq, tclk,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANog-0003Uq-Jg
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:55:47 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 918C8813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:55:46 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:55:42 +0100
Message-Id: <1361897742-3454-3-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1361897742-3454-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 2/2] cfa10036: Retrieve the RAM size at runtime
To: barebox@lists.infradead.org

The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
on it.

Since it's not stored anywhere, we need to runtime detect it, thanks to
the get_ram_size function.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 1bc20cf..a112bf1 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -92,7 +92,8 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
 
 static int cfa10036_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE,
+			   get_ram_size((volatile long int *)IMX_MEMORY_BASE, SZ_256M));
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

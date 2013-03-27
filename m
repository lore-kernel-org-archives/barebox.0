Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKrXE-0001Lg-0y
 for barebox@lists.infradead.org; Wed, 27 Mar 2013 14:41:05 +0000
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Wed, 27 Mar 2013 15:40:36 +0100
Message-Id: <1364395236-539-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: [PATCH v2] cfa10036: Retrieve the RAM size at runtime
To: barebox@lists.infradead.org
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>, jimwall@q.com, brian@crystalfontz.com

The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
on it.

Since it's not stored anywhere, we need to runtime detect it by
introducing the cfa10036_get_ram_size function.

Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>
---
changes since v1:
  - stripped cfa10036_get_ram_size as suggested by Sacha
  - I'm not too happy about the v5_mmu_cache_flush definition and call but that
	has to be done, else we are not reading the modified value, even on 128MB
	boards.


 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 1bc20cf..a37b089 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -90,9 +90,25 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
 	.udelay			= 5,		/* ~100 kHz */
 };
 
+void v5_mmu_cache_flush(void);
+long cfa10036_get_ram_size(void)
+{
+	volatile u32 *base = (void *)IMX_MEMORY_BASE;
+	volatile u32 *ofs = base + SZ_128M / sizeof(u32);
+
+	*base = *ofs = 0xdeadbeef;
+	*ofs = 0xbaadcafe;
+
+	v5_mmu_cache_flush();
+	if (*base == 0xbaadcafe)
+		return SZ_128M;
+	else
+		return SZ_256M;
+}
+
 static int cfa10036_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, cfa10036_get_ram_size());
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nL-7K
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:07 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:28 +0100
Message-Id: <1297880025-7184-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/20] MACH-S3C24XX: Change detection method of the second
	SDRAM bank
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

There is no rule how to connect the SDRAMs to the two clocks signales the CPU
provides. Some boards are using them on a per bank base, some others on a per
chip base. So, the check for the enabled second clock cannot be used to detect
if the second SDRAM bank is populated.
A better way is to check the MT bits of the second SDRAM bank register. When
the init code sets these bits to '00' the second bank is not used for SDRAM
and gets ignored.

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/mach-s3c24xx/generic.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
index c04e0b6..4c7e799 100644
--- a/arch/arm/mach-s3c24xx/generic.c
+++ b/arch/arm/mach-s3c24xx/generic.c
@@ -181,8 +181,9 @@ int s3c24xx_dump_clocks(void)
 	printf("hclk:    %7d kHz\n", s3c24xx_get_hclk() / 1000);
 	printf("pclk:    %7d kHz\n", s3c24xx_get_pclk() / 1000);
 	printf("SDRAM1:   CL%d@%dMHz\n", ((readl(BANKCON6) & 0xc) >> 2) + 2, s3c24xx_get_hclk() / 1000000);
-	if (!(readl(MISCCR) & (1 << 18)))
-		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2, s3c24xx_get_hclk() / 1000000);
+	if ((readl(BANKCON7) & (0x3 << 15)) == (0x3 << 15))
+		printf("SDRAM2:   CL%d@%dMHz\n", ((readl(BANKCON7) & 0xc) >> 2) + 2,
+			s3c24xx_get_hclk() / 1000000);
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

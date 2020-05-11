Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1kd-0001G7-TT
 for barebox@lists.infradead.org; Mon, 11 May 2020 06:17:21 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-018.citykom.de
 [82.207.194.18]) (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9E3E8E0009
 for <barebox@lists.infradead.org>; Mon, 11 May 2020 06:17:14 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 11 May 2020 08:17:03 +0200
Message-Id: <20200511061703.593030-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! ARM: i.MX: boot: interpret reserved boot as forced
 serial
To: barebox@lists.infradead.org

imx6_get_boot_source is used by the zii-imx6q-rdu2 board in PBL,
but cpu_is_mx6ul accesses a global variable that's not linked
into PBL. Fix this by using cpu_mx6_is_mx6ul instead.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-imx/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index dcca3a5c4a97..ef868301cd6b 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -348,7 +348,7 @@ static bool imx6_bootsource_serial(uint32_t sbmr2)
 
 static bool imx6_bootsource_serial_forced(uint32_t bootmode)
 {
-	if (cpu_is_mx6ul() || cpu_is_mx6ull())
+	if (cpu_mx6_is_mx6ul() || cpu_mx6_is_mx6ull())
 		return bootmode == 2;
 	return bootmode == 1;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

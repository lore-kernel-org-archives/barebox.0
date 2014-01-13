Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2gEw-000564-Qq
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 12:03:35 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W2gEY-0001wn-W7
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 13:03:11 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 13 Jan 2014 13:03:10 +0100
Message-Id: <1389614590-23510-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] hummingboard: fix entryfunction for real
To: barebox@lists.infradead.org

The entry function wasn't changed properly when the
prototype changed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
The issue existed before the rename, but feel free to squash this fix
into "ARM: imx6: rename Carrier-1 to Hummingboard".
---
 arch/arm/boards/solidrun-hummingboard/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
index c101f06fedd3..049a8a41be00 100644
--- a/arch/arm/boards/solidrun-hummingboard/lowlevel.c
+++ b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
@@ -9,8 +9,6 @@ ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
 {
 	uint32_t fdt;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	fdt = (uint32_t)__dtb_imx6dl_hummingboard_start - get_runtime_offset();
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

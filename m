Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1juBOf-0004ON-NQ
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 09:02:14 +0000
Received: from geraet.fritz.box (i577B6DEB.versanet.de [87.123.109.235])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C22A71C000B
 for <barebox@lists.infradead.org>; Sat, 11 Jul 2020 09:02:09 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 11 Jul 2020 11:02:03 +0200
Message-Id: <20200711090203.498881-2-ahmad@a3f.at>
In-Reply-To: <20200711090203.498881-1-ahmad@a3f.at>
References: <20200711090203.498881-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] fixup! ARM: at91: sama5d2: read back memory size from
 DDRAM controller
To: barebox@lists.infradead.org

The SiP node has a memory node embedded that has a bigger size than some
of the smaller variants. We now delete the node and have the size read
back from the memory controller. This means we no longer need sizes for
sama5d2 boards in the device tree (and must not have any, because
referencing non-existent &{/memory} is a compile error.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/at91-sama5d27_giantboard.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 961474d23b44..2ba3ff217101 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -46,10 +46,6 @@
 	};
 };
 
-&{/memory} {
-	reg = <0x20000000 0x8000000>;
-};
-
 &slow_xtal {
 	clock-frequency = <32768>;
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnivU-0003Zf-8c
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:25:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:25:18 +0200
Message-Id: <20200623132521.4727-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200623132521.4727-1-a.fatoum@pengutronix.de>
References: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: vexpress: dts: use direct &phandle instead of
 &{/path}
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

6940ba22c66a ("dts: update to v5.3-rc1") added a label that we can
reference instead of relying on the path not changing. Make use of it,
so the compilation doesn't fail along with the v5.8-rc1 dts/ sync.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
[afa: board is still broken, because the "arm,arm-firmware-suite"
partitioning is unknown to barebox, but at least it's not doubly
broken.]
---
 arch/arm/dts/vexpress-v2p-ca15.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index a4cdc8d1f5f0..d02b8ce523cf 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -7,7 +7,7 @@
 	};
 };
 
-&{/bus@8000000/motherboard/flash@0,00000000} {
+&nor_flash {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

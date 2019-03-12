Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tP-Ch
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:01 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:52 +0100
Message-Id: <20190312102055.12386-4-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: zynqmp: move PAYLOAD_ARG_CNT to firmware header
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

In order to use the query() call, the users of the firmware driver need
to know the number of arguments.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c              | 2 --
 arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index d7e2a66d0f..f2187e97be 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -30,8 +30,6 @@
 #define ZYNQMP_TZ_VERSION	((ZYNQMP_TZ_VERSION_MAJOR << 16) | \
 				ZYNQMP_TZ_VERSION_MINOR)
 
-#define PAYLOAD_ARG_CNT         4
-
 /* SMC SIP service Call Function Identifier Prefix */
 #define PM_SIP_SVC		0xC2000000
 
diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
index 7a65f781fb..9e7a2e34f7 100644
--- a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
+++ b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
@@ -15,6 +15,8 @@
 #ifndef FIRMWARE_ZYNQMP_H_
 #define FIRMWARE_ZYNQMP_H_
 
+#define PAYLOAD_ARG_CNT         4
+
 enum pm_ioctl_id {
 	IOCTL_SET_PLL_FRAC_MODE = 8,
 	IOCTL_GET_PLL_FRAC_MODE,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

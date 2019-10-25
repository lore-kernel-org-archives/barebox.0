Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz86-0000Mm-Ki
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 12:55:47 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Fri, 25 Oct 2019 12:55:41 +0000
Message-ID: <1572008129-24020-2-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1571912781-17152-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
In-Reply-To: <1572008129-24020-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
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
Subject: [PATCH v2 1/4] firmware-zynqmp: add macros for PMU and trustzone
 firmware versions
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index f2187e9..d91dcb0 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -18,17 +18,13 @@
 
 #include <mach/firmware-zynqmp.h>
 
-#define ZYNQMP_PM_VERSION_MAJOR	1
-#define ZYNQMP_PM_VERSION_MINOR	0
+#define ZYNQMP_PM_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
+#define ZYNQMP_TZ_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
 
-#define ZYNQMP_PM_VERSION	((ZYNQMP_PM_VERSION_MAJOR << 16) | \
-					ZYNQMP_PM_VERSION_MINOR)
-
-#define ZYNQMP_TZ_VERSION_MAJOR 1
-#define ZYNQMP_TZ_VERSION_MINOR 0
-
-#define ZYNQMP_TZ_VERSION	((ZYNQMP_TZ_VERSION_MAJOR << 16) | \
-				ZYNQMP_TZ_VERSION_MINOR)
+#define ZYNQMP_PM_VERSION_MAJOR		1
+#define ZYNQMP_PM_VERSION_MINOR		0
+#define ZYNQMP_TZ_VERSION_MAJOR		1
+#define ZYNQMP_TZ_VERSION_MINOR		0
 
 /* SMC SIP service Call Function Identifier Prefix */
 #define PM_SIP_SVC		0xC2000000
@@ -544,7 +540,8 @@ static int zynqmp_firmware_probe(struct device_d *dev)
 		goto out;
 
 	zynqmp_pm_get_api_version(&pm_api_version);
-	if (pm_api_version < ZYNQMP_PM_VERSION) {
+	if (pm_api_version < ZYNQMP_PM_VERSION(ZYNQMP_PM_VERSION_MAJOR,
+					       ZYNQMP_PM_VERSION_MINOR)) {
 		dev_err(dev, "Platform Management API version error."
 				"Expected: v%d.%d - Found: v%d.%d\n",
 				ZYNQMP_PM_VERSION_MAJOR,
@@ -563,7 +560,8 @@ static int zynqmp_firmware_probe(struct device_d *dev)
 		goto out;
 	}
 
-	if (pm_tz_version < ZYNQMP_TZ_VERSION) {
+	if (pm_tz_version < ZYNQMP_TZ_VERSION(ZYNQMP_TZ_VERSION_MAJOR,
+					      ZYNQMP_TZ_VERSION_MINOR)) {
 		dev_err(dev, "Trustzone version error."
 				"Expected: v%d.%d - Found: v%d.%d\n",
 				ZYNQMP_TZ_VERSION_MAJOR,
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

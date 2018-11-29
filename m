Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSMaK-0000xz-9V
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 13:42:34 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Thu, 29 Nov 2018 14:42:08 +0100
Message-Id: <20181129134208.5893-2-r.hieber@pengutronix.de>
In-Reply-To: <20181129134208.5893-1-r.hieber@pengutronix.de>
References: <20181129134208.5893-1-r.hieber@pengutronix.de>
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
Subject: [PATCH v2 2/2] i.MX: HABv4: always print HAB status at boot time
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

Currently, board code needs to call habv4_get_status() explicitely, but
there is no reason that it cannot be called automatically at startup
when HABv4 is enabled. This way the call cannot be forgotten and we can
make sure to report all potentially occuring HAB warnings and errors.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
v1 -> v2: no changes.
---
 drivers/hab/habv3.c |  4 ++++
 drivers/hab/habv4.c | 41 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 82ae245f8a..c190c78d40 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -78,5 +78,9 @@ int imx_habv3_get_status(uint32_t status)
 
 int imx25_hab_get_status(void)
 {
+	if (!cpu_is_mx25()) {
+		return 0;
+	}
 	return imx_habv3_get_status(readl(IOMEM(0x780018d4)));
 }
+postmmu_initcall(imx25_hab_get_status);
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index e33a8784a0..b7df7e4961 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -20,6 +20,7 @@
 
 #include <common.h>
 #include <hab.h>
+#include <init.h>
 #include <types.h>
 
 #include <mach/generic.h>
@@ -505,9 +506,49 @@ int imx6_hab_get_status(void)
 	return -EINVAL;
 }
 
+static int init_imx6_hab_get_status(void)
+{
+	int ret = 0;
+
+	if (!cpu_is_mx6())
+		/* can happen in multi-image builds and is not an error */
+		return 0;
+
+	ret = imx6_hab_get_status();
+
+	/* nobody will check the return value if there were HAB errors, but the
+	 * initcall will fail spectaculously with a strange error message. */
+	if (ret == -EPERM)
+		return 0;
+	return ret;
+}
+/* need to run before MMU setup because i.MX6 ROM code is mapped near 0x0,
+ * which will no longer be accessible when the MMU sets the zero page to
+ * faulting. */
+postconsole_initcall(init_imx6_hab_get_status);
+
 int imx28_hab_get_status(void)
 {
 	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX28;
 
 	return habv4_get_status(rvt);
 }
+
+static int init_imx28_hab_get_status(void)
+{
+	int ret = 0;
+
+	if (!cpu_is_mx28())
+		/* can happen in multi-image builds and is not an error */
+		return 0;
+
+	ret = imx28_hab_get_status();
+
+	/* nobody will check the return value if there were HAB errors, but the
+	 * initcall will fail spectaculously with a strange error message. */
+	if (ret == -EPERM)
+		return 0;
+	return ret;
+}
+/* i.MX28 ROM code can be run after MMU setup to make use of caching */
+postmmu_initcall(init_imx28_hab_get_status);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

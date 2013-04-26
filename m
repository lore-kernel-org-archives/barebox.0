Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqVT-0005ra-L7
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 21:48:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Apr 2013 23:48:35 +0200
Message-Id: <1367012916-22780-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
References: <1366977055.331524144@f355.mail.ru>
 <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX: Allow disabling SDRAM autodetection
To: barebox@lists.infradead.org

Some boards setup more memory than they actually have. The real memory
size can then be detected later for example by reading a board id.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c              | 14 ++++++++++++++
 arch/arm/mach-imx/include/mach/esdctl.h |  1 +
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index cb57d45..e2025b3 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -39,6 +39,17 @@ struct imx_esdctl_data {
 	void (*add_mem)(void *esdctlbase, struct imx_esdctl_data *);
 };
 
+static int imx_esdctl_disabled;
+
+/*
+ * Boards can disable SDRAM detection if it doesn't work for them. In
+ * this case arm_add_mem_device has to be called by board code.
+ */
+void imx_esdctl_disable(void)
+{
+	imx_esdctl_disabled = 1;
+}
+
 /*
  * v1 - found on i.MX1
  */
@@ -239,6 +250,9 @@ static int imx_esdctl_probe(struct device_d *dev)
 	if (!base)
 		return -ENOMEM;
 
+	if (imx_esdctl_disabled)
+		return 0;
+
 	data->add_mem(base, data);
 
 	return 0;
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 26436d9..b7219d9 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -136,6 +136,7 @@ void __naked __noreturn imx35_barebox_entry(uint32_t boarddata);
 void __naked __noreturn imx51_barebox_entry(uint32_t boarddata);
 void __naked __noreturn imx53_barebox_entry(uint32_t boarddata);
 void __naked __noreturn imx6_barebox_entry(uint32_t boarddata);
+void imx_esdctl_disable(void);
 #endif
 
 #endif /* __MACH_ESDCTL_V2_H */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

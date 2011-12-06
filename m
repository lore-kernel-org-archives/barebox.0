Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RY1NA-0006BM-Nl
 for barebox@lists.infradead.org; Tue, 06 Dec 2011 20:12:18 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue,  6 Dec 2011 21:11:57 +0100
Message-Id: <1323202318-17697-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1323202318-17697-1-git-send-email-robert.jarzmik@free.fr>
References: <1323202318-17697-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/3] arm/mach-pxa: add mci_pxa2xx file
To: barebox@lists.infradead.org

Add the platform data for MMC/SD card host on the PXA SoCs.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-pxa/include/mach/mci_pxa2xx.h

diff --git a/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
new file mode 100644
index 0000000..b24bc58
--- /dev/null
+++ b/arch/arm/mach-pxa/include/mach/mci_pxa2xx.h
@@ -0,0 +1,10 @@
+
+struct mci_host;
+struct device_d;
+
+struct pxamci_platform_data {
+	int gpio_power;
+	int gpio_power_invert;
+	int (*init)(struct mci_host*, struct device_d*);
+	int (*setpower)(struct mci_host*, int on);
+};
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

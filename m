Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5Jju-0005Cy-4C
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:52:35 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 16:52:23 +0200
Message-Id: <1286808746-19456-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
References: <1286808746-19456-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/4] Glue i.MX23 and MCI support
To: barebox@lists.infradead.org

The MCI framework and the i.MX23 architecture are present now. Bring both
together.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/include/mach/mci.h |   32 ++++++++++++++++++++++++++++++++
 1 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-stm/include/mach/mci.h

diff --git a/arch/arm/mach-stm/include/mach/mci.h b/arch/arm/mach-stm/include/mach/mci.h
new file mode 100644
index 0000000..b924908
--- /dev/null
+++ b/arch/arm/mach-stm/include/mach/mci.h
@@ -0,0 +1,32 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __MACH_MMC_H
+#define __MACH_MMC_H
+
+struct stm_mci_platform_data {
+	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
+	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
+	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
+	unsigned f_max;	/**< max operating frequency in Hz (0 -> no limit) */
+	/* TODO */
+	/* function to modify the voltage */
+	/* function to switch the voltage */
+	/* function to detect the presence of a SD card in the socket */
+};
+
+#endif /* __MACH_MMC_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

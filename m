Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm4xG-0003Pq-CH
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:51:39 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9F6B41008F39
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:53:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:51:07 +0100
Message-Id: <1326552668-8859-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
References: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] omap3evm: move to arch/arm/boards/omap3evm
To: barebox@lists.infradead.org

this will allow to create it's own env/config

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    2 +-
 arch/arm/boards/omap/Makefile                      |    1 -
 arch/arm/boards/omap3evm/Makefile                  |    1 +
 .../{omap/board-omap3evm.c => omap3evm/board.c}    |    0
 arch/arm/boards/omap3evm/config.h                  |   21 ++++++++++++++++++++
 5 files changed, 23 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/omap3evm/Makefile
 rename arch/arm/boards/{omap/board-omap3evm.c => omap3evm/board.c} (100%)
 create mode 100644 arch/arm/boards/omap3evm/config.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bba5d6a..a65c72e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -89,7 +89,7 @@ board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap
 board-$(CONFIG_MACH_BEAGLE)			:= beagle
-board-$(CONFIG_MACH_OMAP3EVM)			:= omap
+board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
 board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
 board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
index b8380df..f5652ad 100644
--- a/arch/arm/boards/omap/Makefile
+++ b/arch/arm/boards/omap/Makefile
@@ -21,4 +21,3 @@
 # MA 02111-1307 USA
 
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
-obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
diff --git a/arch/arm/boards/omap3evm/Makefile b/arch/arm/boards/omap3evm/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/omap3evm/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap3evm/board.c
similarity index 100%
rename from arch/arm/boards/omap/board-omap3evm.c
rename to arch/arm/boards/omap3evm/board.c
diff --git a/arch/arm/boards/omap3evm/config.h b/arch/arm/boards/omap3evm/config.h
new file mode 100644
index 0000000..b908fc0
--- /dev/null
+++ b/arch/arm/boards/omap3evm/config.h
@@ -0,0 +1,21 @@
+/**
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

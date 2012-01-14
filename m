Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm4xG-0003Pp-CL
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:51:40 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 76AA11008F36
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:53:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:51:06 +0100
Message-Id: <1326552668-8859-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] beagle: move to arch/arm/boards/beagle
To: barebox@lists.infradead.org

this will allow to create it's own env/config

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                  |    2 +-
 arch/arm/boards/beagle/Makefile                    |    1 +
 .../boards/{omap/board-beagle.c => beagle/board.c} |    0
 arch/arm/boards/beagle/config.h                    |   21 ++++++++++++++++++++
 arch/arm/boards/omap/Makefile                      |    1 -
 5 files changed, 23 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/beagle/Makefile
 rename arch/arm/boards/{omap/board-beagle.c => beagle/board.c} (100%)
 create mode 100644 arch/arm/boards/beagle/config.h

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5981b8e..bba5d6a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -88,7 +88,7 @@ board-$(CONFIG_MACH_MX1ADS)			:= mx1ads
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
 board-$(CONFIG_MACH_NXDB500)			:= netx
 board-$(CONFIG_MACH_OMAP343xSDP)		:= omap
-board-$(CONFIG_MACH_BEAGLE)			:= omap
+board-$(CONFIG_MACH_BEAGLE)			:= beagle
 board-$(CONFIG_MACH_OMAP3EVM)			:= omap
 board-$(CONFIG_MACH_PANDA)			:= panda
 board-$(CONFIG_MACH_PCM049)			:= pcm049
diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/beagle/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/beagle/board.c
similarity index 100%
rename from arch/arm/boards/omap/board-beagle.c
rename to arch/arm/boards/beagle/board.c
diff --git a/arch/arm/boards/beagle/config.h b/arch/arm/boards/beagle/config.h
new file mode 100644
index 0000000..b908fc0
--- /dev/null
+++ b/arch/arm/boards/beagle/config.h
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
diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
index 8cd9105..b8380df 100644
--- a/arch/arm/boards/omap/Makefile
+++ b/arch/arm/boards/omap/Makefile
@@ -21,5 +21,4 @@
 # MA 02111-1307 USA
 
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
-obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
 obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

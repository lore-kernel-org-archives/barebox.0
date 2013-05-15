Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWH2-0000tm-9J
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:20 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:33 +0200
Message-Id: <1368603396-27887-8-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 07/10] arm: mvebu: add Feroceon CPU type
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The Kirkwood Marvell SoC uses a Marvell-specific implementation of an
ARMv5TE compatible ARM core, the Feroceon. This patch introduces a
Kconfig option that allows to select this CPU type.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/cpu/Kconfig |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 86bc174..aed4cb7 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -39,6 +39,14 @@ config CPU_ARM926T
 	  Say Y if you want support for the ARM926T processor.
 	  Otherwise, say N.
 
+# Feroceon
+config CPU_FEROCEON
+	bool
+	select CPU_32v5
+	help
+	  This is a Marvell implementation of an ARMv5TE compatible
+	  ARM core, used in the Marvell Kirkwood SoC family.
+
 # ARMv6
 config CPU_V6
 	bool
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

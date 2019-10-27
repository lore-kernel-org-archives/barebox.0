Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrmO-0004gR-Uu
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:17:02 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:16:43 +0100
Message-Id: <20191027231647.9884-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231647.9884-1-a.fatoum@pengutronix.de>
References: <20191027231647.9884-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/8] ARM: sm: document SMC/PSCI related options
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

At least to me, the difference between these options were confusing at
first. Clear this up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 725ea12a8c57..d4947cef5c98 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -427,10 +427,14 @@ config ARM_SEMIHOSTING
 
 config ARM_SMCCC
 	bool
+	help
+	  This option enables barebox to invoke ARM secure monitor calls.
 
 config ARM_SECURE_MONITOR
 	select ARM_SMCCC
 	bool
+	help
+	  This option enables barebox to service ARM secure monitor calls.
 
 config ARM_PSCI_OF
 	bool
@@ -442,7 +446,7 @@ config ARM_PSCI
 	select ARM_PSCI_OF
 	help
 	  PSCI is used for controlling secondary CPU cores on some systems. Say
-	  yes here if you have one of these.
+	  yes here if you want barebox to service PSCI calls on such systems.
 
 config ARM_PSCI_DEBUG
 	bool "Enable PSCI debugging"
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

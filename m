Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAC4t-0003zN-S6
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 11:55:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Sep 2019 13:55:17 +0200
Message-Id: <20190917115518.14953-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190917115518.14953-1-a.fatoum@pengutronix.de>
References: <20190917115518.14953-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 5/6] ARM: layerscape: tqmls1046a: disable all SGMII PHYs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already disable PHYs 4-7, which are currently unusable as they hang
off SGMII, which barebox' FMan driver does not yet support.

Follow suit for the SGMII eth0 and eth1 as well, so they don't
unnecessarily clutter the barebox output with

	Unable to find a PHY (unknown ID?)

messages.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode | 1 +
 .../arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode

diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode
new file mode 100644
index 000000000000..7a68b11da8b1
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode
@@ -0,0 +1 @@
+disabled
diff --git a/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode
new file mode 100644
index 000000000000..7a68b11da8b1
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode
@@ -0,0 +1 @@
+disabled
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

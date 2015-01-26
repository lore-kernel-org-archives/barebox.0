Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yH-Eo
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QH-Lh
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007Pt-Kf
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:51 +0100
Message-Id: <1422268796-24782-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
References: <1422268796-24782-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/9] Docs: add some info about the Phytec's phyCORE27 and
 phyCARD27 related bootloader images
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst | 8 ++++++++
 Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst | 8 ++++++++
 2 files changed, 16 insertions(+)
 create mode 100644 Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst
 create mode 100644 Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst

diff --git a/Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst b/Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst
new file mode 100644
index 0000000..d5d3837
--- /dev/null
+++ b/Documentation/boards/imx/Phytec-phyCARD-i.MX27.rst
@@ -0,0 +1,8 @@
+Phytec phyCARD-i.MX27
+=====================
+
+Building the bootloader image for this target is covered by the ``imx_defconfig``
+multiimage configuration if the ``System Type`` menu entry ``phyCard-i.MX27``
+is enabled.
+
+Use the corresponding ``barebox-phytec-phycard-imx27.img`` file for this target.
diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst b/Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst
new file mode 100644
index 0000000..4b40be7
--- /dev/null
+++ b/Documentation/boards/imx/Phytec-phyCORE-i.MX27.rst
@@ -0,0 +1,8 @@
+Phytec phyCORE-i.MX27
+=====================
+
+Building the bootloader image for this target is covered by the ``imx_defconfig``
+multiimage configuration if the ``System Type`` menu entry ``phyCORE-i.MX27``
+is enabled.
+
+Use the corresponding ``barebox-phytec-phycore-imx27.img`` file for this target.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

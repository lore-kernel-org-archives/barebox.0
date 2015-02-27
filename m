Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRLaD-0004rX-EJ
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 14:08:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0007tb-SH
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0005tp-RT
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 Feb 2015 15:07:33 +0100
Message-Id: <1425046053-21214-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
References: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/5] Docs: add some info about the Phytec's
 phyCORE-MPC5200-Tiny
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/powerpc.rst                         | 11 +++++++++++
 Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny |  6 ++++++
 2 files changed, 17 insertions(+)
 create mode 100644 Documentation/boards/powerpc.rst
 create mode 100644 Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny

diff --git a/Documentation/boards/powerpc.rst b/Documentation/boards/powerpc.rst
new file mode 100644
index 0000000..94b272c
--- /dev/null
+++ b/Documentation/boards/powerpc.rst
@@ -0,0 +1,11 @@
+PowerPC boards
+--------------
+
+Not all supported boards have a description here.
+
+.. toctree::
+  :glob:
+  :numbered:
+  :maxdepth: 1
+
+  powerpc/*
diff --git a/Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny b/Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny
new file mode 100644
index 0000000..6970027
--- /dev/null
+++ b/Documentation/boards/powerpc/Phytec-phyCORE-MPC5200-Tiny
@@ -0,0 +1,6 @@
+Phytec phyCORE-MPC5200-Tiny
+===========================
+
+Building the bootloader image for this target is covered by the ``pcm030_defconfig``.
+
+Use the corresponding ``barebox.bin`` file for this target.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

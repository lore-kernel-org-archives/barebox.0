Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFh5h-0001yK-Eo
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 10:40:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007QM-NI
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YFh5J-0007Q4-LL
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 11:39:57 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 26 Jan 2015 11:39:53 +0100
Message-Id: <1422268796-24782-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/9] Docs: move the individual MXS target documentation where
 they belong to
To: barebox@lists.infradead.org

i.MX and MXS differs in their global documentation. Honor this.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/imx.rst |  1 -
 Documentation/boards/mxs.rst | 12 ++++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 21ea825..466f69c 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -101,4 +101,3 @@ or ``imx_defconfig`` instead.
   :maxdepth: 1
 
   imx/*
-  mxs/*
diff --git a/Documentation/boards/mxs.rst b/Documentation/boards/mxs.rst
index 1c26826..cfcd4c7 100644
--- a/Documentation/boards/mxs.rst
+++ b/Documentation/boards/mxs.rst
@@ -117,3 +117,15 @@ Booting second stage
 
 The second stage images can be started with the barebox :ref:`command_bootm` command or
 just jumped into using the :ref:`command_go` command.
+
+i.MXs boards
+------------
+
+Not all supported boards have a description here.
+
+.. toctree::
+  :glob:
+  :numbered:
+  :maxdepth: 1
+
+  mxs/*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

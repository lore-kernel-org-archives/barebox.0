Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05Pb-0006s7-C2
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:37 +0200
Message-Id: <1403772698-10330-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] Documentation: remove devicetree docs
To: barebox@lists.infradead.org

Remove the barebox devicetree documentation. It will
be replaced with sphinx based documentation later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/README           |  6 ------
 Documentation/devicetree/bindings/barebox.txt      | 10 ---------
 .../bindings/barebox/barebox,environment.txt       | 25 ----------------------
 Documentation/devicetree/bindings/leds/common.txt  |  8 -------
 .../devicetree/bindings/misc/fsl,imx-iim.txt       | 20 -----------------
 .../devicetree/bindings/misc/fsl,imx-ocotp.txt     | 20 -----------------
 6 files changed, 89 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/README
 delete mode 100644 Documentation/devicetree/bindings/barebox.txt
 delete mode 100644 Documentation/devicetree/bindings/barebox/barebox,environment.txt
 delete mode 100644 Documentation/devicetree/bindings/leds/common.txt
 delete mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
 delete mode 100644 Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt

diff --git a/Documentation/devicetree/bindings/README b/Documentation/devicetree/bindings/README
deleted file mode 100644
index b818ee8..0000000
diff --git a/Documentation/devicetree/bindings/barebox.txt b/Documentation/devicetree/bindings/barebox.txt
deleted file mode 100644
index 5e8d461..0000000
diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.txt b/Documentation/devicetree/bindings/barebox/barebox,environment.txt
deleted file mode 100644
index 5a8bf9c..0000000
diff --git a/Documentation/devicetree/bindings/leds/common.txt b/Documentation/devicetree/bindings/leds/common.txt
deleted file mode 100644
index db264b3..0000000
diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
deleted file mode 100644
index 9759210..0000000
diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.txt
deleted file mode 100644
index b7a3ee5..0000000
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

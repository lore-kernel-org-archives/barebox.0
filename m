Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05PW-0006pu-I3
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:36 +0200
Message-Id: <1403772698-10330-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] Documentation: remove remaining documentation
To: barebox@lists.infradead.org

This removes the documentation texts in Documentation/. It will
be replaced with sphinx based documentation later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/console.txt           |  13 ----
 Documentation/devices_drivers.txt   |  72 ----------------------
 Documentation/omap4_usb_booting.txt |  27 ---------
 Documentation/porting.txt           | 115 ------------------------------------
 Documentation/timekeeping.txt       |  13 ----
 5 files changed, 240 deletions(-)
 delete mode 100644 Documentation/console.txt
 delete mode 100644 Documentation/devices_drivers.txt
 delete mode 100644 Documentation/omap4_usb_booting.txt
 delete mode 100644 Documentation/porting.txt
 delete mode 100644 Documentation/timekeeping.txt

diff --git a/Documentation/console.txt b/Documentation/console.txt
deleted file mode 100644
index 76b6107..0000000
diff --git a/Documentation/devices_drivers.txt b/Documentation/devices_drivers.txt
deleted file mode 100644
index e13b13a..0000000
diff --git a/Documentation/omap4_usb_booting.txt b/Documentation/omap4_usb_booting.txt
deleted file mode 100644
index f0d45a2..0000000
diff --git a/Documentation/porting.txt b/Documentation/porting.txt
deleted file mode 100644
index bd807a3..0000000
diff --git a/Documentation/timekeeping.txt b/Documentation/timekeeping.txt
deleted file mode 100644
index ed5ef62..0000000
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

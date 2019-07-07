Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk0fx-0006N1-0R
 for barebox@lists.infradead.org; Sun, 07 Jul 2019 06:29:30 +0000
Received: by mail-lj1-x241.google.com with SMTP id 16so12789651ljv.10
 for <barebox@lists.infradead.org>; Sat, 06 Jul 2019 23:29:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  7 Jul 2019 09:29:18 +0300
Message-Id: <20190707062918.30097-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] scripts: add mips-relocs to .gitignore
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

mips-relocs generation was introduced in the commit
28ed10d6a67c9f67 ("MIPS: relocation: add relocation
support").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 11ac77eb37..45c81bf8f4 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -28,3 +28,4 @@ mxs-usb-loader
 /omap3-usb-loader
 omap4_usbboot
 omap3-usb-loader
+mips-relocs
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

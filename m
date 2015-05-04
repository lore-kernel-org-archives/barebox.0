Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUL-0005GG-6W
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:45 +0000
Received: by lbbzk7 with SMTP id zk7so103552910lbb.0
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:25 +0300
Message-Id: <1430742565-18714-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] Documentation: mips: fix tplink-mr3020 instruction
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/tplink-mr3020.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/mips/tplink-mr3020.rst b/Documentation/boards/mips/tplink-mr3020.rst
index c9e092c..8a95e11 100644
--- a/Documentation/boards/mips/tplink-mr3020.rst
+++ b/Documentation/boards/mips/tplink-mr3020.rst
@@ -23,7 +23,8 @@ But you have to encode barebox image in a very special way.
 First obtain ``lzma`` and ``mktplinkfw`` utilities.
 
 The ``lzma`` utility can be obtained in Debian/Ubuntu
-distro by installing lzma package.
+distro by installing lzma package
+(lzma from xz-utils package is unusable).
 
 The ``mktplinkfw`` utility can be obtained from openwrt, e.g.::
 
@@ -36,8 +37,8 @@ The ``mktplinkfw`` utility can be obtained from openwrt, e.g.::
 To convert your barebox.bin to U-Boot-loadable image (``6F01A8C0.img``)
 use this command sequence::
 
-  $ lzma -c -k barebox.bin > barebox.lzma
-  $ ./FW/mktplinkfw -c -H 0x07200103 -W 1 -N TL-WR720N-v3 \
+  $ lzma -c -k barebox-flash-image > barebox.lzma
+  $ ./mktplinkfw -c -H 0x07200103 -W 1 -N TL-WR720N-v3 \
       -s -F 4Mlzma -k barebox.lzma -o 6F01A8C0.img
 
 You must setup tftp-server on host 192.168.0.1.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

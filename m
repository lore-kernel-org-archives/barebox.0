Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bYDVg-0000rk-UF
 for barebox@lists.infradead.org; Fri, 12 Aug 2016 14:32:34 +0000
Received: by mail-wm0-x241.google.com with SMTP id o80so3203915wme.0
 for <barebox@lists.infradead.org>; Fri, 12 Aug 2016 07:32:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Aug 2016 17:32:02 +0300
Message-Id: <1471012324-3881-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
References: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] Documentation: tplink-mr3020: fix 'Could not lex
 literal_block as "c"' warning
To: barebox@lists.infradead.org

The patch fixes these sphinx warnings:

    barebox/Documentation/boards/mips/tplink-mr3020.rst:31: WARNING: Could not lex literal_block as "c". Highlighting skipped.
    barebox/Documentation/boards/mips/tplink-mr3020.rst:40: WARNING: Could not lex literal_block as "c". Highlighting skipped.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/tplink-mr3020.rst | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/mips/tplink-mr3020.rst b/Documentation/boards/mips/tplink-mr3020.rst
index 8a95e11..99101c3 100644
--- a/Documentation/boards/mips/tplink-mr3020.rst
+++ b/Documentation/boards/mips/tplink-mr3020.rst
@@ -26,7 +26,9 @@ The ``lzma`` utility can be obtained in Debian/Ubuntu
 distro by installing lzma package
 (lzma from xz-utils package is unusable).
 
-The ``mktplinkfw`` utility can be obtained from openwrt, e.g.::
+The ``mktplinkfw`` utility can be obtained from openwrt, e.g.:
+
+.. code-block:: sh
 
   $ OWRTPREF=https://raw.githubusercontent.com/mirrors/openwrt/master
   $ curl -OL $OWRTPREF/tools/firmware-utils/src/mktplinkfw.c \
@@ -35,7 +37,9 @@ The ``mktplinkfw`` utility can be obtained from openwrt, e.g.::
   $ cc -o mktplinkfw mktplinkfw.c md5.c
 
 To convert your barebox.bin to U-Boot-loadable image (``6F01A8C0.img``)
-use this command sequence::
+use this command sequence:
+
+.. code-block:: sh
 
   $ lzma -c -k barebox-flash-image > barebox.lzma
   $ ./mktplinkfw -c -H 0x07200103 -W 1 -N TL-WR720N-v3 \
@@ -47,7 +51,9 @@ Put your ``6F01A8C0.img`` to tftp-server directory
 
 Connect your board to your tftp-server network via Ethernet.
 
-Next, setup network on MR3020 and run ``6F01A8C0.img``, e.g.::
+Next, setup network on MR3020 and run ``6F01A8C0.img``, e.g.:
+
+.. code-block:: console
 
   hornet> set ipaddr 192.168.0.2
   hornet> set serverip 192.168.0.1
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

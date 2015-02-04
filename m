Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIwpa-0004io-Ig
 for barebox@lists.infradead.org; Wed, 04 Feb 2015 10:05:11 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 4 Feb 2015 18:04:37 +0800
Message-ID: <1423044277-24529-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: at91sam9n12ek: correct udc device name
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

The created device name for atmel udc is at91_udc while not
at91_udc0.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/boards/at91sam9n12ek/env/bin/init_board | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9n12ek/env/bin/init_board b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
index 6b44044..4931342 100644
--- a/arch/arm/boards/at91sam9n12ek/env/bin/init_board
+++ b/arch/arm/boards/at91sam9n12ek/env/bin/init_board
@@ -12,7 +12,7 @@ button_wait=5
 
 dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
 
-if [ $at91_udc0.vbus != 1 ]
+if [ $at91_udc.vbus != 1 ]
 then
 	echo "No USB Device cable plugged, normal boot"
 	exit
@@ -30,7 +30,7 @@ fi
 echo "${button_name} pressed detected wait ${button_wait}s"
 timeout -s -a ${button_wait}
 
-if [ $at91_udc0.vbus != 1 ]
+if [ $at91_udc.vbus != 1 ]
 then
 	echo "No USB Device cable plugged, normal boot"
 	exit
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

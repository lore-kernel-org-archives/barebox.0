Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBsHV-0002YA-7b
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 21:16:30 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so6096812lbi.41
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 14:16:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 01:15:30 +0400
Message-Id: <1406582130-10116-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
References: <1406582130-10116-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 11/11] Documentation: add real Canon A1100 camera barebox
 mini-howto
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/digic.rst | 53 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/Documentation/boards/digic.rst b/Documentation/boards/digic.rst
index e2c49b6..50a6ee8 100644
--- a/Documentation/boards/digic.rst
+++ b/Documentation/boards/digic.rst
@@ -14,3 +14,56 @@ Usage::
   $ qemu-system-arm -M canon-a1100 \
       -nographic -monitor null -serial stdio \
       -bios barebox.canon-a1100.bin
+
+
+Running barebox on real camera
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Install CHDK firmware on SD-card (see http://chdk.wikia.com/wiki/CHDK_For_Newbies_-_How_To_Install and http://chdk.wikia.com/wiki/A1100).
+
+Make your SD-card bootable (see http://chdk.wikia.com/wiki/Prepare_your_SD_card).
+
+Build barebox: you will get the ``DISKBOOT-A1100.BIN`` file.
+
+Overwrite CHDK boot file on your SD-card (``DISKBOOT.BIN``)
+with the barebox ``DISKBOOT-A1100.BIN`` file.
+
+Lock your SD-card (use small switch on the card).
+**It is obligatory!**
+
+Insert the SD-card into your camera.
+Close your camera's SD-card slot.
+
+
+Turn your camera on (press the 'Playback mode' button).
+Barebox will run; it will use the serial port for console
+(see http://chdk.wikia.com/wiki/UART for details on A1100
+UART connection).
+
+
+LED script
+~~~~~~~~~~
+
+If you have no oppotunity to use camera's serial port then
+you can use leds for checking barebox.
+
+Enable ``CONFIG_DEFAULT_ENVIRONMENT`` in the ``.config``
+and set ``CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/canon-a1100/env"``.
+
+Use this ``arch/arm/boards/canon-600d/env/bin/init``::
+
+  #!/bin/sh
+  
+  # use "direct print" led (blue)
+  LED=0
+  
+  DELAY=300
+  
+  for i in 1 2 3; do
+         led $LED 1
+         msleep $DELAY
+         led $LED 0
+         msleep $DELAY
+  done
+
+After barebox start the camera's blue led will blink.
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward6l.mail.yandex.net ([2a02:6b8:0:1819::6])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrb-0007Nr-7L
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:52 +0000
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:22:02 +0300
Message-Id: <1425327722-28232-19-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 18/18] ARM: Rockchip: Add documentation.
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 Documentation/boards/rockchip.rst | 48 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/boards/rockchip.rst

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
new file mode 100644
index 0000000..e064255
--- /dev/null
+++ b/Documentation/boards/rockchip.rst
@@ -0,0 +1,48 @@
+Rockchip RK3188
+===============
+
+Radxa Rock
+----------
+
+Radxa Rock is a small SBC based on Rockchip RK3188 SoC.
+See http://radxa.com/Rock for additional information.
+
+Building
+^^^^^^^^
+
+.. code-block:: sh
+
+  make ARCH=arm radxa_rock_defconfig
+  make ARCH=arm
+
+Creating bootable SD card
+^^^^^^^^^^^^^^^^^^^^^^^^^
+
+This will require a DRAM setup blob and additional utilities, see above.
+
+Card layout (block == 0x200 bytes).
+
+============   ==========================================
+Block Number   Name
+============   ==========================================
+0x0000         DOS partition table
+0x0040         RK bootinfo (BootROM check sector)
+0x0044         DRAM setup routine
+0x005C         Bootloader (barebox)
+0x0400         Barebox environment
+0x0800         Free space start
+============   ==========================================
+
+Instructions.
+
+* Make 2 partitions on SD for boot and root filesystems.
+* Checkout and compile https://github.com/apxii/rkboottools
+* Get some RK3188 bootloader from https://github.com/neo-technologies/rockchip-bootloader
+* Run "rk-splitboot RK3188Loader(L)_V2.13.bin" command. (for example).
+  You will get FlashData file with others. It's a DRAM setup blob.
+* Otherwise it can be borrowed from RK U-boot sources from
+  https://github.com/linux-rockchip/u-boot-rockchip/blob/u-boot-rk3188/tools/rk_tools/3188_LPDDR2_300MHz_DDR3_300MHz_20130830.bin
+* Run "rk-makebootable FlashData barebox-radxa-rock.bin rrboot.bin"
+* Insert SD card and run "dd if=rrboot.bin of=</dev/sdcard> bs=$((0x200)) seek=$((0x40))"
+* SD card is ready
+
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7fqa-0005hh-H0
 for barebox@lists.infradead.org; Sun, 15 Apr 2018 11:29:30 +0000
Received: by mail-lf0-x233.google.com with SMTP id d20-v6so18155148lfe.3
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2018 04:29:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 15 Apr 2018 14:28:58 +0300
Message-Id: <20180415112858.5163-11-antonynpavlov@gmail.com>
In-Reply-To: <20180415112858.5163-1-antonynpavlov@gmail.com>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 10/10] Documentation: add RISC-V docs
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/riscv.rst | 106 +++++++++++++++++++++++++++++++++
 1 file changed, 106 insertions(+)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
new file mode 100644
index 0000000000..0cde02305e
--- /dev/null
+++ b/Documentation/boards/riscv.rst
@@ -0,0 +1,106 @@
+RISC-V
+======
+
+Running RISC-V barebox on qemu
+------------------------------
+
+Obtain RISC-V GCC/Newlib Toolchain,
+see https://github.com/riscv/riscv-tools/blob/master/README.md
+for details. The ``build.sh`` script from ``riscv-tools`` should
+create toolchain.
+
+Next compile qemu emulator::
+
+  $ git clone -b 20180409.erizo https://github.com/miet-riscv-workgroup/riscv-qemu
+  $ cd riscv-qemu
+  $ cap="no" ./configure \
+    --extra-cflags="-Wno-maybe-uninitialized" \
+    --audio-drv-list="" \
+    --disable-attr \
+    --disable-blobs \
+    --disable-bluez \
+    --disable-brlapi \
+    --disable-curl \
+    --disable-curses \
+    --disable-docs \
+    --disable-kvm \
+    --disable-spice \
+    --disable-sdl \
+    --disable-vde \
+    --disable-vnc-sasl \
+    --disable-werror \
+    --enable-trace-backend=simple \
+    --disable-stack-protector \
+    --target-list=riscv32-softmmu,riscv64-softmmu
+  $ make
+
+
+Next compile barebox::
+
+  $ make erizo_generic_defconfig ARCH=riscv
+  ...
+  $ make ARCH=riscv CROSS_COMPILE=<path to your riscv toolchain>/riscv32-unknown-elf-
+
+Run barebox::
+
+  $ <path to riscv-qemu source>/riscv32-softmmu/qemu-system-riscv32 \
+      -nographic -M erizo -bios <path to barebox sources >/barebox.bin \
+      -serial stdio -monitor none -trace file=/dev/null
+
+  nmon> q
+  
+  copy loop done
+  restarting...
+  
+  nmon> q
+  Switch to console [cs0]
+  
+  
+  barebox 2018.04.0-00140-gc717a0b017 #0 Sun Apr 15 11:30:42 MSK 2018
+  
+  
+  Board: generic Erizo SoC board
+  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
+  m25p80 m25p128@00: probe failed: error 2
+  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
+  running /env/bin/init...
+  /env/bin/init not found
+  barebox:/
+
+
+Running RISC-V barebox on DE0-Nano FPGA board
+---------------------------------------------
+
+See https://github.com/open-design/riscv-soc-cores/ for instructions
+on DE0-Nano bitstream generation and loading.
+
+Connect to board's UART with your favorite serial communication software
+(e.g. minicom) and check 'nmon> ' prompt (nmon runs from onchip ROM).
+
+Next close your communication software and use ./scripts/nmon-loader
+to load barebox image into board's DRAM, e.g.
+
+  # ./scripts/nmon-loader barebox.erizo.nmon /dev/ttyUSB0 115200
+
+Wait several munutes for 'nmon> ' prompt.
+
+Next, start barebox from DRAM:
+
+  nmon> g 80000000
+
+You should see one more 'nmon> ' prompt (this nmon runs from DRAM).
+Exit nmon with 'q' command:
+
+  nmon> q
+  Switch to console [cs0]
+  
+  
+  barebox 2018.04.0-00140-gc717a0b017 #0 Sun Apr 15 11:30:42 MSK 2018
+  
+  
+  Board: generic Erizo SoC board
+  m25p80 m25p128@00: s25sl064p (8192 Kbytes)
+  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
+  running /env/bin/init...
+  /env/bin/init not found
+  barebox:/ 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

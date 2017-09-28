Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x236.google.com ([2a00:1450:400c:c0c::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxhzl-0004Th-Fo
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 23:13:38 +0000
Received: by mail-wr0-x236.google.com with SMTP id m18so5341954wrm.2
 for <barebox@lists.infradead.org>; Thu, 28 Sep 2017 16:13:08 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Sep 2017 02:12:49 +0300
Message-Id: <20170928231249.4158-11-antonynpavlov@gmail.com>
In-Reply-To: <20170928231249.4158-1-antonynpavlov@gmail.com>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
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
Subject: [RFC v4 10/10] Documentation: add RISC-V docs
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/riscv.rst | 110 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
new file mode 100644
index 000000000..912f16786
--- /dev/null
+++ b/Documentation/boards/riscv.rst
@@ -0,0 +1,110 @@
+RISC-V
+======
+
+At the moment only qemu emulator is supported (see https://github.com/riscv/riscv-isa-sim
+for details).
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
+  $ git clone -b 20170824.erizo https://github.com/miet-riscv-workgroup/riscv-qemu
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
+  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
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
+  # ./scripts/nmon-loader barebox.erizo.nmon /dev/ttyUSB1 115200
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
+  barebox 2017.08.0-00102-g212af75153 #1 Mon Sep 4 20:54:31 MSK 2017
+  
+  
+  Board: generic Erizo SoC board
+  m25p80 m25p128@00: unrecognized JEDEC id bytes: 00,  0,  0
+  m25p80 m25p128@00: probe failed: error 2
+  malloc space: 0x80100000 -> 0x801fffff (size 1 MiB)
+  running /env/bin/init...
+  /env/bin/init not found
+  barebox:/ 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

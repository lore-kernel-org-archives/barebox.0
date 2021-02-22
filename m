Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IS-0005Ln-Sf
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:26 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:06:04 +0100
Message-Id: <20210222070605.589180-9-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 8/8] Documentation: add Documentation on VirtIO for barebox
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

Save users the trip to the commit log and reproduce some example qemu
invocations in the documentation. The text around it is adapted from
the U-Boot doc/README.virtio.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/user-manual.rst |  1 +
 Documentation/user/virtio.rst      | 80 ++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 Documentation/user/virtio.rst

diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 827683eaa0db..c80bfbf2639a 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -36,6 +36,7 @@ Contents:
    optee
    debugging
    watchdog
+   virtio
 
 * :ref:`search`
 * :ref:`genindex`
diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
new file mode 100644
index 000000000000..7233c001bcce
--- /dev/null
+++ b/Documentation/user/virtio.rst
@@ -0,0 +1,80 @@
+..
+  SPDX-License-Identifier: GPL-2.0+
+
+  Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
+  Copyright (C) 2021, Ahmad Fatoum
+
+.. _virtio:
+
+VirtIO Support
+==============
+
+This document describes the information about barebox support for VirtIO_
+devices, including supported boards, build instructions, driver details etc.
+
+What's VirtIO?
+--------------
+
+VirtIO is a virtualization standard for network and disk device drivers where
+just the guest's device driver "knows" it is running in a virtual environment,
+and cooperates with the hypervisor. This enables guests to get high performance
+network and disk operations, and gives most of the performance benefits of
+paravirtualization. In the barebox case, the guest is barebox itself, while the
+virtual environment will normally be QEMU_ targets like ARM, RISC-V and x86.
+
+Status
+------
+
+VirtIO can use various different buses, aka transports as described in the
+spec. While VirtIO devices are commonly implemented as PCI devices on x86,
+embedded devices models like ARM/RISC-V, which does not normally come with
+PCI support might use simple memory mapped device (MMIO) instead of the PCI
+device. The memory mapped virtio device behaviour is based on the PCI device
+specification. Therefore most operations including device initialization,
+queues configuration and buffer transfers are nearly identical. Only MMIO
+is currently supported in barebox.
+
+The VirtIO spec defines a lots of VirtIO device types, however at present only
+block, console and RNG devices are supported.
+
+Build Instructions
+------------------
+
+Building barebox for QEMU targets is no different from others.
+For example, we can do the following with the CROSS_COMPILE environment
+variable being properly set to a working toolchain for ARM::
+
+  $ make vexpress_defconfig
+  $ make
+
+Testing
+-------
+
+The following QEMU command line is used to get barebox up and running with
+a VirtIO console on ARM::
+
+  $ qemu-system-arm -m 256M -M virt -nographic             \
+  	-kernel ./images/barebox-dt-2nd.img                \
+  	-device virtio-serial-device                       \
+  	-chardev socket,path=/tmp/foo,server,nowait,id=foo \
+  	-device virtconsole,chardev=foo,name=console.foo
+
+Note the use of ``-kernel ./images/barebox-dt-2nd.img`` instead of
+``-bios ./images/barebox-$BOARD.img``. ``-kernel`` will cause QEMU
+to pass barebox a fixed-up device tree describing the ``virtio-mmio``
+rings.
+
+Except for the console, multiple instances of a VirtIO device can be created
+by appending more '-device' parameters. For example to create one HWRNG
+and 2 block devices::
+
+  $ qemu-system-arm -m 256M -M virt -nographic                  \
+    	-kernel ./images/barebox-dt-2nd.img                     \
+  	-device virtio-rng-device                               \
+  	-drive if=none,file=/tmp/first.hdimg,format=raw,id=hd0  \
+  	-device virtio-blk-device,drive=hd0		        \
+  	-drive if=none,file=/tmp/second.hdimg,format=raw,id=hd1 \
+  	-device virtio-blk-device,drive=hd1
+
+.. _VirtIO: http://docs.oasis-open.org/virtio/virtio/v1.0/virtio-v1.0.pdf
+.. _qemu: https://www.qemu.org
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

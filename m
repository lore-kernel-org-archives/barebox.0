Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IO-0005Ji-6k
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:17 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:05:56 +0100
Message-Id: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 0/8] drivers: add VirtIO console, block device support
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

To make it easier to exchange data with paravirtualized barebox during
testing, import parts of the VirtIO support in Linux and U-Boot.

API basically looks like U-Boot's, but driver boilerplate (like having
a virtio bus) is taken from Linux. Headers are the Linux ones with some
necessary modifications on top.

Quite nifty thing is that Qemu will fix up the device tree appropriately,
so just compile in the drivers and it works. The vexpress_defconfig
already does this, so this just works:

  $ qemu-system-arm -m 256M -M virt -nographic                  \
 	-kernel ./images/barebox-dt-2nd.img                     \
  	-device virtio-rng-device                               \
  	-drive if=none,file=/tmp/first.hdimg,format=raw,id=hd0  \
  	-device virtio-blk-device,drive=hd0		        \

Ahmad Fatoum (8):
  kbuild: add include/uapi to path
  driver: Don't throw an error on probes that didn't find the device
  drivers: add support for memory-mapped VirtIO paravirtualization
  hw_random: add VirtIO RNG driver
  serial: add basic VirtIO console driver
  block: add VirtIO block device driver
  ARM: vexpress: config: update for VirtIO support
  Documentation: add Documentation on VirtIO for barebox

 Documentation/user/user-manual.rst  |   1 +
 Documentation/user/virtio.rst       |  80 +++++
 Makefile                            |  10 +-
 arch/arm/configs/vexpress_defconfig |  15 +-
 drivers/Kconfig                     |   1 +
 drivers/Makefile                    |   1 +
 drivers/ata/Kconfig                 |   2 +
 drivers/base/driver.c               |   5 +-
 drivers/block/Kconfig               |   6 +
 drivers/block/Makefile              |   1 +
 drivers/block/virtio_blk.c          | 133 ++++++++
 drivers/hw_random/Kconfig           |   7 +
 drivers/hw_random/Makefile          |   1 +
 drivers/hw_random/virtio-rng.c      | 120 +++++++
 drivers/serial/Kconfig              |   8 +
 drivers/serial/Makefile             |   1 +
 drivers/serial/virtio_console.c     | 166 ++++++++++
 drivers/virtio/Kconfig              |  28 ++
 drivers/virtio/Makefile             |   3 +
 drivers/virtio/virtio.c             | 347 ++++++++++++++++++++
 drivers/virtio/virtio_mmio.c        | 465 +++++++++++++++++++++++++++
 drivers/virtio/virtio_ring.c        | 365 +++++++++++++++++++++
 include/linux/typecheck.h           |  25 ++
 include/linux/virtio.h              | 128 ++++++++
 include/linux/virtio_byteorder.h    |  64 ++++
 include/linux/virtio_config.h       | 480 ++++++++++++++++++++++++++++
 include/linux/virtio_ring.h         | 330 +++++++++++++++++++
 include/uapi/linux/virtio_blk.h     | 203 ++++++++++++
 include/uapi/linux/virtio_config.h  |  95 ++++++
 include/uapi/linux/virtio_console.h |  78 +++++
 include/uapi/linux/virtio_ids.h     |  58 ++++
 include/uapi/linux/virtio_mmio.h    | 152 +++++++++
 include/uapi/linux/virtio_ring.h    | 244 ++++++++++++++
 include/uapi/linux/virtio_rng.h     |   8 +
 include/uapi/linux/virtio_types.h   |  46 +++
 35 files changed, 3673 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/user/virtio.rst
 create mode 100644 drivers/block/Kconfig
 create mode 100644 drivers/block/virtio_blk.c
 create mode 100644 drivers/hw_random/virtio-rng.c
 create mode 100644 drivers/serial/virtio_console.c
 create mode 100644 drivers/virtio/Kconfig
 create mode 100644 drivers/virtio/Makefile
 create mode 100644 drivers/virtio/virtio.c
 create mode 100644 drivers/virtio/virtio_mmio.c
 create mode 100644 drivers/virtio/virtio_ring.c
 create mode 100644 include/linux/typecheck.h
 create mode 100644 include/linux/virtio.h
 create mode 100644 include/linux/virtio_byteorder.h
 create mode 100644 include/linux/virtio_config.h
 create mode 100644 include/linux/virtio_ring.h
 create mode 100644 include/uapi/linux/virtio_blk.h
 create mode 100644 include/uapi/linux/virtio_config.h
 create mode 100644 include/uapi/linux/virtio_console.h
 create mode 100644 include/uapi/linux/virtio_ids.h
 create mode 100644 include/uapi/linux/virtio_mmio.h
 create mode 100644 include/uapi/linux/virtio_ring.h
 create mode 100644 include/uapi/linux/virtio_rng.h
 create mode 100644 include/uapi/linux/virtio_types.h

-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

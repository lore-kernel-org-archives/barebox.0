Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRk9-0007HD-Ap
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id f132so823494pfa.6
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:14 -0800
Message-Id: <20190212064022.26154-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/8] NVME support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series contains all of the changes I made in order to add support
for NVME storage in Barebox. Majority of the code was adapted directly
from Linux kernel and I tried to keep it as close to the original as
possible. Only a very basic featureset was implemented:

    - For obvious reason all of the request both to admin and I/O
      queue are fully blocking/syncronous, so none of the I/O
      operations are done in parallel

    - PRP list only DMA (no SGL lists support)

    - No support for shared namespaces

    - No support for transports other than PCIe. All of the pluming to
      add support for it should be there, however.

    - Host memory buffer support is not implemented

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (8):
  PCI: Fix to_pci_dev() macro
  PCI: Introduce device_pci_driver()
  drivers: Make use of device_pci_driver()
  include: Sync up pci_ids.h with 4.20-rc1
  include: Add definitnion for HZ
  include: Import uuid.h for Linux
  include: Import min_not_zero() macro from Linux
  drivers: Import a very basic NVME implementation from Linux

 drivers/Kconfig             |    1 +
 drivers/Makefile            |    1 +
 drivers/net/e1000/main.c    |    7 +-
 drivers/net/rtl8139.c       |    7 +-
 drivers/net/rtl8169.c       |    7 +-
 drivers/nvme/Kconfig        |    5 +
 drivers/nvme/Makefile       |    1 +
 drivers/nvme/host/Kconfig   |   11 +
 drivers/nvme/host/Makefile  |    9 +
 drivers/nvme/host/core.c    |  614 ++++++++
 drivers/nvme/host/nvme.h    |  148 ++
 drivers/nvme/host/pci.c     |  697 +++++++++
 drivers/usb/host/xhci-pci.c |    7 +-
 include/clock.h             |    2 +
 include/linux/kernel.h      |   10 +
 include/linux/nvme.h        | 1271 +++++++++++++++
 include/linux/pci.h         |    7 +-
 include/linux/pci_ids.h     | 2952 +++++++++++++++++++++++++++++++++++
 include/linux/uuid.h        |   96 ++
 include/uapi/linux/uuid.h   |   42 +
 20 files changed, 5870 insertions(+), 25 deletions(-)
 create mode 100644 drivers/nvme/Kconfig
 create mode 100644 drivers/nvme/Makefile
 create mode 100644 drivers/nvme/host/Kconfig
 create mode 100644 drivers/nvme/host/Makefile
 create mode 100644 drivers/nvme/host/core.c
 create mode 100644 drivers/nvme/host/nvme.h
 create mode 100644 drivers/nvme/host/pci.c
 create mode 100644 include/linux/nvme.h
 create mode 100644 include/linux/uuid.h
 create mode 100644 include/uapi/linux/uuid.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

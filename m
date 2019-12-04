Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDK-0001Ag-8s
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:50 +0100
Message-Id: <20191204125659.22506-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/9] efi: add PCI controller driver
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This series adds support for reusing existing barebox PCI drivers under
EFI. This means implementation of the EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID,
instead of EFI_PCI_IO_PROTOCOL_GUID, which abstracts the devices and
handles enumeration.

This was tested with the default QEMU x86_64 machine and OVMF (Tianocore)
as UEFI firmware and an emulated 8250_pci (driver included in this
series):

qemu-system-x86_64 -pflash OVMF.fd -device pci-serial,chardev=cdev0 \
	-chardev file,id=cdev0,path=COM -nographic /dev/sdb

Driver is written against UEFI Specification 2.1D. This is my first
dabble with PCI controllers, so please take a more thorough look.

Thanks!
Ahmad


Ahmad Fatoum (9):
  efi: add and use new efi_device_has_guid helper
  driver: add missing parentheses around macro argument
  efi: fix off-by-one in mem_malloc_init(..., end)
  x86: efi: lds: don't discard any relocation sections
  PCI: add driver_data member to struct pci_device_id
  PCI: copy over some Linux PCI helpers
  efi: turn set of defines into enumerations
  pci: add EFI PCI root bridge IO protocol driver
  serial: add support for PCI NS16550 UARTs

 arch/x86/mach-efi/elf_x86_64_efi.lds.S |    7 +-
 common/efi/efi.c                       |    2 +-
 drivers/block/efi-block-io.c           |   11 +-
 drivers/efi/Kconfig                    |    1 +
 drivers/efi/efi-device.c               |   11 +-
 drivers/pci/Kconfig                    |    5 +
 drivers/pci/Makefile                   |    1 +
 drivers/pci/bus.c                      |   26 +
 drivers/pci/pci-efi.c                  |  311 ++
 drivers/pci/pci-efi.h                  |  331 ++
 drivers/serial/Kconfig                 |    8 +
 drivers/serial/Makefile                |    1 +
 drivers/serial/serial_ns16550_pci.c    | 5311 ++++++++++++++++++++++++
 include/driver.h                       |    4 +-
 include/efi.h                          |   42 +-
 include/efi/efi-device.h               |   12 +
 include/linux/mod_devicetable.h        |    1 +
 include/linux/pci.h                    |   34 +
 18 files changed, 6073 insertions(+), 46 deletions(-)
 create mode 100644 drivers/pci/pci-efi.c
 create mode 100644 drivers/pci/pci-efi.h
 create mode 100644 drivers/serial/serial_ns16550_pci.c

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

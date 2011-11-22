Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSljj-0001uo-4d
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 08:29:52 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0007U3-3P
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0003SZ-1v
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Nov 2011 09:29:14 +0100
Message-Id: <1321950567-13261-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCHv2] Rework of handling disk like media
To: barebox@lists.infradead.org

This patch stack reworks the handling of disk like media (hard disks, USB mass
storage, SD/MMC cards). It should simplify the code by using the generic
blockdevice layer.
Also partition handling is now a separate step to provide more partition types
than the D*S one in the future.
At the end of this series support for a subset of ATA devices and their
interface is added.

Update: This series contains a fixed and improved version of the partition
patch (PATCH 08/13).

Comments are welcome.

Juergen Beisert (13):
      USB Mass Storage driver: Fix compile time warning
      Create a unique cdev number for on demand devices
      ATA/DISK: Add generic disk support when enabling the BIOS disk driver
      ATA/DISK: Enabling write support does not belong to 'drive types'
      ATA/DISK: Reorganize file structure and names for future updates
      ATA/DISK: The BIOS based disk driver is not an interface
      ATA/DISK: Share important constants and structures
      DISK: Add common partition handling for disk like media
      Use generic block layer to access the drives and do partition parsing
      Remove 'disk_drive.c' as it is now replaced by generic partition handling
      ATA/DISK: Remove the now unused header <ata.h>
      ATA Disk Support: Add support for native ATA type drives
      Add driver for IDE like interfaces

 common/Kconfig                            |   18 +
 common/Makefile                           |    2 +
 common/partitions.c                       |  231 +++++++++++
 drivers/Makefile                          |    2 +-
 drivers/ata/Kconfig                       |   47 ++-
 drivers/ata/Makefile                      |    5 +-
 drivers/ata/disk_ata_drive.c              |  631 +++++++++++++++++++++++++++++
 drivers/ata/{bios.c => disk_bios_drive.c} |   97 +++--
 drivers/ata/disk_drive.c                  |  247 -----------
 drivers/ata/intf_platform_ide.c           |  129 ++++++
 drivers/mci/Kconfig                       |    3 +-
 drivers/mci/mci-core.c                    |  135 ++++---
 drivers/usb/storage/Kconfig               |    1 +
 drivers/usb/storage/usb.c                 |  126 ++++---
 drivers/usb/storage/usb.h                 |    8 +-
 fs/devfs-core.c                           |   14 +
 include/ata.h                             |   39 --
 include/ata_drive.h                       |  194 +++++++++
 include/disks.h                           |   41 ++
 include/driver.h                          |    1 +
 include/mci.h                             |    3 +-
 include/platform_ide.h                    |   31 ++
 22 files changed, 1544 insertions(+), 461 deletions(-)
 create mode 100644 common/partitions.c
 create mode 100644 drivers/ata/disk_ata_drive.c
 rename drivers/ata/{bios.c => disk_bios_drive.c} (79%)
 delete mode 100644 drivers/ata/disk_drive.c
 create mode 100644 drivers/ata/intf_platform_ide.c
 delete mode 100644 include/ata.h
 create mode 100644 include/ata_drive.h
 create mode 100644 include/disks.h
 create mode 100644 include/platform_ide.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

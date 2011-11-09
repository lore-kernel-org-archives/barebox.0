Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RO6LQ-000655-H8
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 11:29:29 +0000
Received: by bkat2 with SMTP id t2so1766116bka.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 03:29:26 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed,  9 Nov 2011 12:29:19 +0100
Message-Id: <1320838161-29653-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Try to fix mount display of a disk
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

This is the second try for fixing the display of the mount command.
I'm doing some test with a sd card over spi (path to come).
This is what I get:

barebox@generic:/ devinfo
devices:
`---- altera_serial0
     `---- cs0
`---- ramfs0
`---- devfs0
`---- mem0
     `---- 0x00000000-0x00001c8c: /dev/defaultenv
`---- mem1
     `---- 0x00000000-0xfffffffe: /dev/mem
`---- mem2
     `---- 0x00000000-0x007fffff: /dev/ram0
`---- altera_spi0
     `---- m25p0
`---- altera_spi1
     `---- spi_mci0
`---- mci0
     `---- disk0
          `---- 0x00000000-0x00e37fff: /dev/disk0
          `---- 0x00007200-0x00e37fff: /dev/disk0.0
          `---- fat0

barebox@generic:/ mount
none on / type ramfs
none on /dev type devfs
disk0 on /mnt type fat

Seems good to me....

Franck Jullien (2):
  ata: Add dev ref to blockdevice during probe
  [RFC v2] mount: Fix the printing of device name

 commands/mount.c         |    2 +-
 drivers/ata/disk_drive.c |    1 +
 fs/fs.c                  |    7 +++++++
 3 files changed, 9 insertions(+), 1 deletions(-)

-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

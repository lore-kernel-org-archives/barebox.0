Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9j-0004GF-5K
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1dxB9L-0007v0-TE
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 14:09:11 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1dxB9L-000381-Fs
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 14:09:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:08:58 +0200
Message-Id: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: usbgadget: fastboot: Allow to automatically export bbu handlers
To: Barebox List <barebox@lists.infradead.org>

This series allows to automatically export the registered bbu handlers
to fastboot. This way barebox can be updated via fastboot without much
preparation. Setting the following variables will be enough:

nv usbgadget.fastboot_function=""
nv usbgadget.autostart=1
nv usbgadget.fastboot_bbu=1

The exported partitions are then named bbu-<bbuname>.

example:

# fastboot -i 0x1d6b getvar all
< waiting for any device >
(bootloader) version: 0.4
(bootloader) bootloader-version: barebox-2017.09.0-00121-g9fde4fe832-dir
(bootloader) partition-size:bbu-mmc: 000c0000
(bootloader) partition-type:bbu-mmc: basic
all: 
finished. total time: 0.001s

# fastboot -i 0x1d6b flash bbu-mmc build/images/barebox-nxp-imx6ull-evk.img
target didn't report max-download-size
sending 'bbu-mmc' (515 KB)...
(bootloader) Downloading 527984 bytes...
(bootloader) Downloading 527984 bytes finished
OKAY [  0.027s]
writing 'bbu-mmc'...
(bootloader) Copying file to bbu-mmc...
(bootloader) This is a barebox image...
OKAY [  0.124s]
finished. total time: 0.151s

----------------------------------------------------------------
Sascha Hauer (12):
      file_list: Add function to add an entry to the list
      file_list: Add function to get entry by its name
      file_list: Allow only unique names on list
      file_list: Fix memory leak in failure path
      file_list: Add GPL header to file
      file_list: Add error messages
      usbgadget: fastboot: Use function to find file_list entry by name
      bbu: Add function to iterate over registered handlers
      usbgadget command: catch errors when parsing the file list
      usbgadget: fastboot: Allow to automatically export the bbu handlers
      fastboot command: Add -b option to export bbu handlers
      usbgadget autostart: add usbgadget.fastboot_bbu to automatically export bbu handlers

 commands/usbgadget.c            | 20 ++++++++++--
 common/bbu.c                    | 15 +++++++++
 common/file-list.c              | 72 +++++++++++++++++++++++++++++++++--------
 drivers/usb/gadget/autostart.c  |  7 ++++
 drivers/usb/gadget/f_fastboot.c | 29 +++++++++++++----
 drivers/usb/gadget/multi.c      |  1 +
 include/bbu.h                   |  2 ++
 include/file-list.h             |  5 +++
 include/usb/fastboot.h          |  7 ++++
 9 files changed, 135 insertions(+), 23 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

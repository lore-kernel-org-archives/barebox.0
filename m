Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBb6Y-0004EO-Ci
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:27:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lBb6X-0003Pt-BG
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 11:27:45 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lBb6X-00086I-2g
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 11:27:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:27:37 +0100
Message-Id: <20210215102740.30418-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/3] usbgadget: add support for blocking USB mass storage
 gadget
To: barebox@lists.infradead.org

The barebox model for USB gadgets is that the UDC gadget polling
is done in a poller. These are short sections of code that are
scheduled cooperatively whenever the main "thread" enters a delay loop.
When transfers are completed, callbacks are run, which trigger new
transfers and/or offload work into a workqueue.

The Linux driver for the USB mass storage gadget creates a state
machine thread. This threads runs as long as there's work to do and
then sleeps for new USB transfers to complete. As U-Boot doesn't
have a threading facility, the U-Boot driver based on it runs this
thread in a blocking loop.

This series adds this functionality to barebox as well. It can be used
by running e.g. ums /dev/mmc1(mmc),/dev/mmc2(sd). Until ctrl+C arrives,
this blocks anything else, except for pollers, from running.

The usual way to make this non-blocking, would be to break up the main
thread into chunks whereever it's sleeping and trigger a poller or
workqueue to continue, when new data arrives. Instead of reworking the
original code flow, I experimented with transforming pollers into actual
cooperative (green) threads. This will likely need some discussion to
decide on how to proceed with it, so this series adds the base, blocking,
funcionality.

Cheers,
Ahmad Fatoum (3):
  include: <linux/barebox-wrapper.h>: remove kthread 'replacements'
  console: unconditionally run poller_call in ctrlc()
  usbgadget: add support for USB mass storage gadget

 commands/Makefile                   |    1 +
 commands/ums.c                      |   53 +
 common/console.c                    |    4 +-
 drivers/mtd/ubi/ubi-barebox.h       |    2 -
 drivers/usb/gadget/Kconfig          |   11 +
 drivers/usb/gadget/Makefile         |    1 +
 drivers/usb/gadget/f_mass_storage.c | 2936 +++++++++++++++++++++++++++
 drivers/usb/gadget/storage_common.c |  173 ++
 drivers/usb/gadget/storage_common.h |  245 +++
 fs/ubifs/misc.h                     |    3 +
 include/linux/barebox-wrapper.h     |    4 -
 include/scsi.h                      |   12 +
 include/usb/mass_storage.h          |   28 +
 include/usb/storage.h               |   87 +
 14 files changed, 3552 insertions(+), 8 deletions(-)
 create mode 100644 commands/ums.c
 create mode 100644 drivers/usb/gadget/f_mass_storage.c
 create mode 100644 drivers/usb/gadget/storage_common.c
 create mode 100644 drivers/usb/gadget/storage_common.h
 create mode 100644 include/usb/mass_storage.h
 create mode 100644 include/usb/storage.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

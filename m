Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irM8n-0002L1-RR
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 13:21:58 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 14 Jan 2020 14:21:05 +0100
Message-Id: <20200114132112.4119-1-jmaselbas@kalray.eu>
In-Reply-To: <20191220143232.28354-10-s.hauer@pengutronix.de>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
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
Subject: [RFC PATCH 0/7] usb: dwc2 host driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Jules Maselbas <jmaselbas@kalray.eu>

Hi Sascha,

I've been working on a driver for the dwc2 otg controller, for both host
and device mode.  Like you I've started from U-Boot driver and I mixed
it with some part from Linux.  For instance I've removed the register
structs and I've been using the same defines for register bit-fields as
in Linux.

I would like to share my version of the host driver, as the gadget driver
one still requires some cleanup.  This series is not to be applied on the
driver you proposed. However I am willing to propose a new series that can
be applied on the driver you proposed.  What do you think?

Cheers,
Jules

---

Jules Maselbas (7):
  usb: dwc2: Add host controller driver
  usb: dwc2: host: Handle dma mapping errors
  usb: dwc2: Dynamic fifo size support from Linux
  usb: dwc2: Rework roothub interface
  HACK: usb: dwc2: Fix toggle reset
  usb: dwc2: Rewrite dwc2_hc_init
  usb: dwc2: Read dr_mode from device tree

 drivers/usb/Kconfig       |   2 +
 drivers/usb/Makefile      |   1 +
 drivers/usb/dwc2/Kconfig  |   4 +
 drivers/usb/dwc2/Makefile |   1 +
 drivers/usb/dwc2/core.c   | 703 ++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/core.h   | 546 +++++++++++++++++++++++++
 drivers/usb/dwc2/dwc2.c   | 103 +++++
 drivers/usb/dwc2/dwc2.h   |  42 ++
 drivers/usb/dwc2/host.c   | 749 ++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/regs.h   | 839 ++++++++++++++++++++++++++++++++++++++
 drivers/usb/dwc2/rhub.c   | 384 +++++++++++++++++
 11 files changed, 3374 insertions(+)
 create mode 100644 drivers/usb/dwc2/Kconfig
 create mode 100644 drivers/usb/dwc2/Makefile
 create mode 100644 drivers/usb/dwc2/core.c
 create mode 100644 drivers/usb/dwc2/core.h
 create mode 100644 drivers/usb/dwc2/dwc2.c
 create mode 100644 drivers/usb/dwc2/dwc2.h
 create mode 100644 drivers/usb/dwc2/host.c
 create mode 100644 drivers/usb/dwc2/regs.h
 create mode 100644 drivers/usb/dwc2/rhub.c

-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

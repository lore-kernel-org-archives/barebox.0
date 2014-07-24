Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAOQa-0006yG-Nw
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 19:11:53 +0000
Received: by mail-wi0-f171.google.com with SMTP id hi2so10141260wib.16
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 12:11:01 -0700 (PDT)
Message-ID: <53D15A51.1070101@gmail.com>
Date: Thu, 24 Jul 2014 21:11:13 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/6] Minor USB fixes and xHCI driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/24/2014 03:28 PM, Sebastian Hesselbarth wrote:
> This patch set adds initial support for xHCI host controllers either
> as platform_device or PCI attached device. Compared to EHCI, the
> xHCI added even more SW stuff around the host controller interface
> we have to deal with. From a topology point-of-view each xHCI HC
> represents two virtual Root Hubs, one for USB 3.0 and one for USB
> 2.0 with TT.
> 
> The xHCI driver currently only supports virtual USB 2.0 ports of the
> xHCI controller. If a USB 3.0 device is used, it has to be connected
> with a USB 2.0 cable, i.e. no SuperSpeed cable. Also, I haven't been
> able to test any USB 1.1 devices, yet. Anyway, I plan to have a look
> at both USB 1.1 and USB 3.0 but still I consider the driver in a
> quite good shape to be released.

Just an update on device support: I fixed the driver to be able to
talk to a USB 1.1 FS thumb drive. It was related with the initioal
assumption that MaxPacketSize0=64, but on that particular FS device
it must be dropped down to 8 after reading the descriptor the first
time. The corresponding check was missing, so it now works for FS,
too.

I also tested the USB 3.0 device again, now with SS. I had no luck
up to now. If you know about xHCI, the port goes into Compliance
Mode. A quick tweak to issue a warm reset of the port does not
properly succeed.

PORTSC bits change correctly after warm reset, i.e. it reports CSC,
but does not come out of the reset state.

Anyway, while looking at the usb3 port handling, I think I'll drop
the fake separation into USB 2.0 and USB 3.0 Root Hub. Instead a
single Hub with all virtual available ports should also work.

> I successfully tested the driver on Marvell Armada 370 Mirabox
> (PCI xHCI) with USB 2.0 thumbdrives and a USB 3.0 docking station
> using above cable workaround.
> 
> The first three patches of this series are fixes not directly
> related with xHCI driver itself and can be picked independent of
> the last two patches.
> 
> Patch 1 fixes a missing list_del for removed usb devices, Patch 2
> introduces dev_count to separate usb device indexing from detected
> number of devices. Patch 3 imports min3() from Linux and makes
> EHCI HCD use it.

You may have noticed that I missed (real) Patch 4 here:
Import {lower,upper}_32_bits helpers.

Sebastian

> Patch 4 introduces mentioned xHCI HCD and Root Hub driver, also
> it provides platform_device registration for xHCI IP. Patch 5
> adds a PCI device driver for xHCI controllers.
> 
> Sebastian
> 
> Sebastian Hesselbarth (6):
>   USB: Fix stale usb devices in usb_device_list
>   USB: Count detected USB devices independent of dev_index
>   USB: EHCI: use min3 from Linux
>   include: import {lower,upper}_32_bits helpers
>   USB: host: add xHCI HCD, Hub, and platform driver
>   USB: host: add xHCI PCI driver
> 
>  drivers/usb/core/usb.c      |    6 +-
>  drivers/usb/host/Kconfig    |   18 +
>  drivers/usb/host/Makefile   |    2 +
>  drivers/usb/host/ehci-hcd.c |   12 +-
>  drivers/usb/host/xhci-hcd.c | 1251 +++++++++++++++++++++++++++++++++++++++++
>  drivers/usb/host/xhci-hub.c |  699 +++++++++++++++++++++++
>  drivers/usb/host/xhci-pci.c |   45 ++
>  drivers/usb/host/xhci.h     | 1284 +++++++++++++++++++++++++++++++++++++++++++
>  include/common.h            |   16 +
>  include/linux/kernel.h      |   18 +
>  include/usb/xhci.h          |   33 ++
>  11 files changed, 3372 insertions(+), 12 deletions(-)
>  create mode 100644 drivers/usb/host/xhci-hcd.c
>  create mode 100644 drivers/usb/host/xhci-hub.c
>  create mode 100644 drivers/usb/host/xhci-pci.c
>  create mode 100644 drivers/usb/host/xhci.h
>  create mode 100644 include/usb/xhci.h
> 
> ---
> To: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: barebox@lists.infradead.org
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

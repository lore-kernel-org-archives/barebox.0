Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBdgl-0006Sz-Pi
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 05:41:36 +0000
Date: Mon, 28 Jul 2014 07:41:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728054112.GT23235@pengutronix.de>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 0/7] Minor USB fixes and xHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Sat, Jul 26, 2014 at 05:24:38PM +0200, Sebastian Hesselbarth wrote:
> 
> Sebastian Hesselbarth (7):
>   USB: Fix stale usb devices in usb_device_list
>   USB: Count detected USB devices independent of dev_index
>   USB: improve error paths and tear-down
>   USB: EHCI: use min3 from Linux
>   include: import {lower,upper}_32_bits helpers
>   USB: host: add xHCI HCD, Hub, and platform driver
>   USB: host: add xHCI PCI driver

Applied, thanks.

You probably need the PCIe driver aswell to make use of this series,
but it shouldn't be needed to compile this series, right?

Sascha


> 
>  drivers/usb/core/hub.c      |   19 +-
>  drivers/usb/core/usb.c      |   50 +-
>  drivers/usb/core/usb.h      |    1 +
>  drivers/usb/host/Kconfig    |   18 +
>  drivers/usb/host/Makefile   |    2 +
>  drivers/usb/host/ehci-hcd.c |   12 +-
>  drivers/usb/host/xhci-hcd.c | 1509 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/usb/host/xhci-hub.c |  647 +++++++++++++++++++
>  drivers/usb/host/xhci-pci.c |   45 ++
>  drivers/usb/host/xhci.h     | 1279 ++++++++++++++++++++++++++++++++++++
>  include/common.h            |   16 +
>  include/linux/kernel.h      |   18 +
>  include/usb/xhci.h          |   33 +
>  13 files changed, 3612 insertions(+), 37 deletions(-)
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
> -- 
> 2.0.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

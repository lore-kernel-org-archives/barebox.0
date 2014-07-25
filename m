Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAa06-0004Cj-8X
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 07:33:10 +0000
Date: Fri, 25 Jul 2014 09:32:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140725073243.GP23235@pengutronix.de>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/6] Minor USB fixes and xHCI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Thu, Jul 24, 2014 at 03:28:40PM +0200, Sebastian Hesselbarth wrote:
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

Do we have the chance to issue a warning when a device is connected
with a superspeed cable? If not maybe a general warning in the xhci
probe function is a good idea.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

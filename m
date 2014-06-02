Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrNtD-0004Iq-Ud
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 08:46:44 +0000
Date: Mon, 2 Jun 2014 10:46:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602084621.GZ15686@pengutronix.de>
References: <20140530131833.e6960587743c31fd85cd7788@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140530131833.e6960587743c31fd85cd7788@gmail.com>
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
Subject: Re: [RFC] picotcp.20140530
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Daniele Lacamera <daniele.lacamera@tass.be>

On Fri, May 30, 2014 at 01:18:33PM +0400, Antony Pavlov wrote:
> Hi All!
> 
> My new barebox with picotcp support brunch is pushed to github:
> 
>     https://github.com/frantony/barebox/tree/picotcp.20140530
> 
> For this version reworked content of Daniele Lacamera's push request
> is used (see https://github.com/frantony/barebox/pull/1).
> 
> Changes since picotcp.20140525:
> 
>   * rebased over latest barebox;
>   * the latest picotcp is used (warnings and big-endian
>     tests fixed);
>   * add picotcp dhcp client support by Daniele Lacamera
>   * qemu mips malta defconfig is dropped as barebox qemu
>     malta has no network device support (you can rebase
>     over experimental pci branch but it is very different story ...)
>   * other small fixes.

I tried this version. I still didn't get it working, but some
improvements.

What I changed is:

* call eth_send() instead of edev->send directly. This makes sure the
  carrier is initialized correctly
* implemented pico_zalloc as memalign(32, x); memset(ptr, 0 x); Some
  drivers (such as fec_imx.c I tested with) need bigger alignment for
  network packets to be able to do DMA transfers.
* move picotcp_net_init from coredevice_initcall to device_initcall.
  In my case the poller infrastructure is not available during
  coredevice_initcall and barebox crashes. Maybe the poller
  infrastructure could be made more robust here, but we don't want to
  to networking in this early stage anyway, right?
* select POLLER is missing

With this I get:

barebox@Phytec phyCORE-i.MX27:/ ifconfig eth 192.168.23.67 255.255.0.0
up
Assigned ipv4 192.168.23.67 to device eth
barebox@Phytec phyCORE-i.MX27:/ picoping 192.168.23.4
eth0: 100Mbps full duplex link detected
ARP: Destination Unreachable
ARP: Destination Unreachable
ARP: Destination Unreachable
ARP: Destination Unreachable
ARP: Destination Unreachable
 ---- Ping timeout!!!

I haven't investigated what's happening here.

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

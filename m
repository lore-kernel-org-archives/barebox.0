Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WyxpW-0006LB-Vm
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 06:34:19 +0000
Date: Mon, 23 Jun 2014 08:33:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140623063349.GN15686@pengutronix.de>
References: <1402904480-6765-1-git-send-email-antonynpavlov@gmail.com>
 <1402904480-6765-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402904480-6765-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v2 2/2] [WIP] net: add initial ENC28J60 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 16, 2014 at 11:41:20AM +0400, Antony Pavlov wrote:
> ENC28J60 is a stand-alone Ethernet controller with SPI Interface.
> and integrated 10BASE-T PHY.
> 
> This driver was ported from linux-3.15.
> 
> The most notable barebox driver version changes:
>   * add device tree support;
>   * use IF_ENABLED for checking CONFIG_ENC28J60_WRITEVERIFY;
>   * add mii_bus support;
>   * rename {nolock,locked}_regw_{read,write}() to enc28j60_*_{read,write}().
> 
> TODOs:
>   * receive only one packet per enc28j60_eth_rx() call.
>   * fix empty enc28j60_init_dev;
>   * add parameter for changing debug loglevel on-the-run;
>   * ENC28J60 supports only SPI mode 0 so we have to submit
>     this information to the SPI controller explicitly.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> 
> Changes since v1:
>   * drop unused macros;
>   * use random_ether_addr();
>   * drop 'select CRC32' in Kconfig;
>   * drop MAC address generation in driver's code;
>   * rename {nolock,locked}_regw_{read,write}() to enc28j60_*_{read,write}();
>   * add mii_bus support.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

...

> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> new file mode 100644
> index 0000000..4884854

I don't really like the headerfile leaking in from Linux just to make
this driver compile. Also I think such a fine grained network device
debugging is not so useful for barebox. So can you drop this? Otherwise
I'm fine with the driver.

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

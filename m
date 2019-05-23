Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThpA-0003pt-Uh
 for barebox@lists.infradead.org; Thu, 23 May 2019 07:07:41 +0000
Date: Thu, 23 May 2019 09:07:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190523070734.6kmwbjpi6d6fbbqt@pengutronix.de>
References: <20190521004345.2396-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521004345.2396-1-vivien.didelot@gmail.com>
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
Subject: Re: [PATCH] ARM: zii-vf610-dev: disable eth1
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Mon, May 20, 2019 at 08:43:45PM -0400, Vivien Didelot wrote:
> The current support for the ZII Dev Boards time out on eth1 when
> booting from net, which takes a while:
> 
>     Booting entry 'net'
>     eth0: 100Mbps full duplex link detected
>     T T T eth0: DHCP client bound to address 192.168.203.22
>     WARNING: eth1: No MAC address set. Using random address 3a:e8:f7:52:55:6d
>     T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T T
>     Loading ARM Linux zImage '/mnt/tftp/none-linux-zii-dev-rev-b-2'
> 
> eth1 is the DSA master interface and has no use within barebox,
> so disable the interface to allow Barebox to boot right away from eth0.
> 
> Suggested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---

Applied, thanks

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

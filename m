Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI99p-0003tF-D2
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:16:24 +0000
Date: Fri, 24 Nov 2017 09:15:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171124081559.ttdrfnx2kbv7j6yu@pengutronix.de>
References: <20171121154047.27334-1-g.schenk@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171121154047.27334-1-g.schenk@eckelmann.de>
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
Subject: Re: [PATCH] Add linux.devname property to eth device
To: Gavin Schenk <g.schenk@eckelmann.de>
Cc: barebox@lists.infradead.org

Hi Gavin,

On Tue, Nov 21, 2017 at 04:40:47PM +0100, Gavin Schenk wrote:
> When you have a static network environment but more than one network
> device on your machine it is necessary to provide the <device> parameter
> to the ip parameter at kernel cmd line.
> 
> The device name assigned by Linux cannot in general be predicted as it
> depends on driver bind order.
> 
> This patch introduces a new property linux.devname to eth devices.
> The value is added to bootargs per interface and can be changed in
> env/network/INTF
> 
> Note that the device name is also used when dhcp is in use.
> 
> Signed-off-by: Gavin Schenk <g.schenk@eckelmann.de>

Looks much better now. This needs some updates to fit into the
networking update series I just sent, but I'll handle that soon
when I see if this series can be taken or not.

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

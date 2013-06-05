Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uk7tZ-00083V-Sx
 for barebox@lists.infradead.org; Wed, 05 Jun 2013 07:12:34 +0000
Date: Wed, 5 Jun 2013 09:12:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130605071211.GQ32299@pengutronix.de>
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
 <20130601092018.GO32299@pengutronix.de> <51AC6286.5030001@ge.com>
 <51AE1D69.4050205@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51AE1D69.4050205@ge.com>
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
Subject: Re: [PATCH] gianfar: prevent resource conflict
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2013 at 06:01:29PM +0100, Renaud Barbier wrote:
> Hello Sacha,
> I applied your patch and try it on our mpc8544 based board
> with a few modification.
> This board uses eTSEC1. This means all 3 regions have the same
> base address.

I think I misunderstood the situation. I thought that the mdio register
space is separate from the network interface register space. So in
reality the mdio register space is inside the network register (the
TSEC) space, but one TSEC instance needs the mdio bus from the other
one, right?

If that's the case then it's probably best to register a phy driver for
each phy in a coredevice_initcall like I suggested and then use
dev_get_mem_region in the phy driver instead of dev_request_mem_region.

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

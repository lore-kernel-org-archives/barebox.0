Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5nPv-0001xI-9t
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 09:51:32 +0000
Date: Wed, 12 Aug 2020 11:51:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200812095128.GS9475@pengutronix.de>
References: <AM0PR01MB4467F624E0FEFF24256BA6838F420@AM0PR01MB4467.eurprd01.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR01MB4467F624E0FEFF24256BA6838F420@AM0PR01MB4467.eurprd01.prod.exchangelabs.com>
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
Subject: Re: Enable Display/Splash on Phycore am335x with barebox 2020.01.0
To: "Koelle, Holger" <Holger.Koelle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Holger,

On Wed, Aug 12, 2020 at 07:36:58AM +0000, Koelle, Holger wrote:
> Hi everybody,
> 
> This week i've tried to enable our Display (which working without
> problems in Linuxkernel 4.19.94) in Barebox without success.
> 
> I've patched the Devicetree similar to am335x-evm.dts with our display
> timings and the other values. But I got no fb0 device or a matching
> driver for the panel/gpu.
> In the drivers section I can't find any driver which matching tilcdc
> and am335x-tilcdc like described in the barebox documentation.
> 
> Of_dump shows that the panel is there, but drvinfo says there is no
> driver.I've tried to use the simple-panel driver but without
> success...
> 
> So my Question :  Is it possible to enable the drm (gpu) unit in
> Barebox 2020.01.0 at the am335x phycore board or is it not supported?

We don't have a framebuffer driver for am335x, so you won't have any
luck getting a picture out of the hardware with barebox. The
simple-panel driver is only for the panel itself, but not for the
framebuffer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

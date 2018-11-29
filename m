Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSK2y-0005y3-Vo
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:59:55 +0000
Date: Thu, 29 Nov 2018 11:59:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129105941.5n424vfjiw6e7s5j@pengutronix.de>
References: <1543416825.5085.11.camel@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543416825.5085.11.camel@erwinrol.com>
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
Subject: Re: imx6ul (phytec Segin board) USB/DFU
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Erwin,

On Wed, Nov 28, 2018 at 03:53:45PM +0100, Erwin Rol wrote:
> Hallo All,
> 
> I am trying to get USB device (DFU) to work on my Phytec Segin board
> (imx6ul SOC). 
> 
> I can upload barebox with imx-usb-loader and it starts fine (so USB
> hardware is working)
> 
> Than when barebox runs I want to put that same USB port in DFU mode and
> update the nand flash (barebox, env, kernel, rootfs) via DFU.
> 
> But I can't get it to work, I assume USB device mode setup is missing
> from the board setup, but I can't really find info on how to add it.

First check the dr_mode property in you OTG device tree node. It should
be either "peripheral" or "otg". If it's "otg" then you have to do a
otg.mode=peripheral on the command line for your device to show up.

Note that newer versions of dfu-util do not work with barebox. I never
tracked this down unfortunately. More specifically this one is the
evil commit:

commit 377f6f136d3369529f44578acaeee82d7c7d7af9 (breaks-barebox,
refs/bisect/bad)
Author: Paul Fertser <fercerpav@gmail.com>
Date:   Sun Aug 10 14:26:05 2014 +0400

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

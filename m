Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQqsF-00053m-DW
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 08:01:58 +0000
References: <2d407908-2a83-809c-692a-5d289b6d2eed@mev.co.uk>
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-reply-to: <2d407908-2a83-809c-692a-5d289b6d2eed@mev.co.uk>
Date: Fri, 30 Jun 2017 10:01:00 +0200
Message-ID: <73o9t5q4zn.fsf@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: arria10_init_emac() bug?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: Barebox List <barebox@lists.infradead.org>


Hi,

Ian Abbott <abbotti@mev.co.uk> writes:

> Hi,
>
> I'm not using Arria-10, but noticed a possible bug in the 
> arria10_init_emac() function in 
> "arch/arm/mach-socfpga/arria10-generic.c".  The code reads the 
> ARRIA10_SYSMGR_FPGAINTF_EN_3 register into a variable, modifies the 
> variable value, but doesn't write it back to the register.

Thanks for catching that.
I will send a patch for removing the whole read-modify operation, as it
doesn't do anything now anyway and half of the bits aren't even
mentioned in the datasheet.

Best regards,
Steffen

-- 
Pengutronix e.K.                           | Steffen Trumtrar            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

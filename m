Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PGCKO-0000gs-SY
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 15:11:13 +0000
Date: Wed, 10 Nov 2010 16:11:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101110151106.GT6017@pengutronix.de>
References: <4CDA5DF9.7050906@flatfrog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4CDA5DF9.7050906@flatfrog.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: BeagleBoard sdrc init writes reserved values
To: Orjan Friberg <of@flatfrog.com>
Cc: barebox@lists.infradead.org

Hi Orjan,

On Wed, Nov 10, 2010 at 09:55:21AM +0100, Orjan Friberg wrote:
> In sdrc_init in board-beagle.c both
>
>         writel(0x1A, SDRC_REG(SYSCONFIG));
>
> and
>
>         writel(0x18, SDRC_REG(SYSCONFIG));
>
> sets bits 4:3 in the IDLEMODE field.  The OMAP3 TRM (spruf98k) defines  
> 0x2 as the only valid value for this field, all others being marked as  
> "reserved - do not use".  board-omap3evm.c does the same thing,  
> board-sdp343x.c does not.
>
> Anyone knows where these settings come from?  Derived from an older  
> version of the TRM?  (I'm thinking there may have been a feature that  
> was discovered to be unreliable or not working as intended so it was  
> removed from the docs.)

I have no idea. I'm pretty sure though that the value has been copied
from some version of U-Boot or Xloader.

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

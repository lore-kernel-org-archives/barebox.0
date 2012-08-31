Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7LTJ-0004aB-BM
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 07:16:54 +0000
Date: Fri, 31 Aug 2012 09:16:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120831071647.GJ26594@pengutronix.de>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
 <1346335217-9686-4-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346335217-9686-4-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 3/5] mpc85xx: header update
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, Aug 30, 2012 at 03:00:15PM +0100, Renaud Barbier wrote:
> In order to use the IMX i2c driver on the mpc85xx SOC, the file
> mach/clocks.h is renamed mach/clock.h. Files using this header are updated
> accordingly. The file mach/generic.h is also added to accommodate the driver.
> 
> Finally, there is a clean up of a line too long.

Please drop this. If you are really interested in the line wrap, you can
send a separate patch, but having this in an unrelated patch is not
good.


>  	return 0;
>  }
>  
> +
> +#define cpu_is_mx1()	(0)

Rather than adding a cpu_is_mx1() for ppc you can simply drop the code
in the i2c driver. i.MX1 is quite old, noone uses i2c on i.MX1 and it's
unlikely that someone ever will.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODvoR-0001Pr-Hq
	for barebox@lists.infradead.org; Mon, 17 May 2010 08:36:36 +0000
Date: Mon, 17 May 2010 10:36:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517083633.GI31199@pengutronix.de>
References: <4BEBD0FD.6090504@erwinrol.com>
	<00b101caf30b$85b54640$911fd2c0$@cpdesign.com.au>
	<4BECF779.50306@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BECF779.50306@erwinrol.com>
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
Subject: Re: Watchdog support
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

Hi Erwin,

On Fri, May 14, 2010 at 09:10:49AM +0200, Erwin Rol wrote:
> Marc Reilly wrote:
>> Hi Erwin,
>>
>>> does barebox have any watchdog support ?
>>
>> I think the answer to your question is really dependent on what platform you
>> are using, and exactly what you want the watchdog to do.
>
> Platform does not really matter here, I mean does barebox trigger the  
> watchdog if it is doing lengthy operations like writing flash to prevent  
> it from being reset in the middle of the operation. That has little to  
> do with if the platform has a watchdog or not.
>
> So let me changes the question a bit;
>
> Does barebox have a standard API to trigger and program a watchdog ?

No, we do not have this atm.

Are you looking for real watchdog support, i.e. 'reset watchdog when my
system is in a sane state' or do you have a piece of hardware on which
you have to reset the watchdog frequently because you can't disable it
in software?

For the first case I propose a 'watchdog' command with an underlying
reset_watchdog() function which resets the watchdog.
For the latter case you don't have another choice but to scatter the
code with RESET_WATCHDOG macros like U-Boot does.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODjv-0004iA-2L
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 20:27:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TODjq-0002kU-Pi
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 22:27:42 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TODjq-0003WV-On
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 22:27:42 +0200
Date: Tue, 16 Oct 2012 22:27:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016202742.GX27665@pengutronix.de>
References: <20121016080209.GA19402@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121016080209.GA19402@greatfirst.com>
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
Subject: Re: sandbox whith oftree on making error
To: barebox <barebox@lists.infradead.org>

On Tue, Oct 16, 2012 at 04:02:09PM +0800, zzs wrote:
> my code baseed 7423f13
> 
> when making sandox with command oftree on then I got the flowwing
> build error:
> 
> CC      drivers/of/gpio.o
> In file included from /home/zzs/work/repos/barebox/drivers/of/gpio.c:6:0:
> /home/zzs/work/repos/barebox/include/gpio.h:4:22: fatal error: asm/gpio.h: No such file or directory

We could add a asm/gpio.h for sandbox including asm-generic/gpio.h. A
much better solution would be to get rid of all asm/gpio.h. They all
declare the same API anyway, if they don't, it's a bug.

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

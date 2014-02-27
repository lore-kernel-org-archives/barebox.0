Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIvuu-0004JI-Hd
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 08:02:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WIvuY-00045c-PW
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 09:01:42 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WIvuY-0003hO-OB
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 09:01:42 +0100
Date: Thu, 27 Feb 2014 09:01:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227080142.GE17250@pengutronix.de>
References: <20140227061544.GA20720@greatfirst.com>
 <20140227072727.GB17250@pengutronix.de>
 <20140227075126.GB20720@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140227075126.GB20720@greatfirst.com>
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
Subject: Re: bug in arm_cpu_lowlevel_init ??
To: barebox <barebox@lists.infradead.org>

On Thu, Feb 27, 2014 at 03:51:26PM +0800, zzs wrote:
> >
> > The lr (r14) register has different instances, one for each mode. It
> > could be that once we switch to a different mode in arm_cpu_lowlevel_init
> > we see another instance of r14. So to me the patch looks correct, we
> > shouldn't rely on lr as return address but rather use another register
> > for storing the address.
> > The above only happens though when the CPU is not in SVC32 mode already.
> > What first stage loader are you using? Could you analyze in which mode
> > the CPU is when the loader jumps to barebox?
> >
> The first stage loader was written by myself longlong ago. So forgot the
> details.  I just look the code closer, Found the flowwing line just
> before jumps to barebox.
> 
>   asm ("msr CPSR_c, %0" : :"i"(ARM_MODE_SYS|I_BIT|F_BIT));
> 
> So it seems the cpu is in system mode when run barebox.
> Your explanation is right.

Ok, so arm_cpu_lowlevel_init currently only works if the CPU is in SVC32
mode already. Could you send a formal patch with the change you made
with a Signed-off-by line? Then I'll include it in barebox.

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

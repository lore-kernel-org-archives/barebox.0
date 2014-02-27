Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIvNp-0003MG-Rz
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 07:27:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WIvNQ-0002U1-So
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 08:27:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WIvNP-0003Xe-Nj
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 08:27:27 +0100
Date: Thu, 27 Feb 2014 08:27:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227072727.GB17250@pengutronix.de>
References: <20140227061544.GA20720@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140227061544.GA20720@greatfirst.com>
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

Hi,

On Thu, Feb 27, 2014 at 02:15:44PM +0800, zzs wrote:
> My cpu is at91rm9200
> 
> When start barebox at reset time by burn it in Nor flash, all things Ok.
> 
> But when start it by my first stage boot program, It's crash.  And
> Execption process code which install by my boot program, report Undef
> instruction detected.
> 
> The only diff is my boot program change the cpu to svc mode already.
> 
> I try the flowwing patch:
> 
> ------------------------------------------------
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -4,6 +4,7 @@
> 
>  .section ".text_bare_init_","ax"
>  ENTRY(arm_cpu_lowlevel_init)
> +       mov     r2, lr
>         /* set the cpu to SVC32 mode */
>         mrs     r12, cpsr
>         bic     r12, r12, #0x1f
> @@ -35,5 +36,5 @@ ENTRY(arm_cpu_lowlevel_init)
> 
>         mcr     p15, 0, r12, c1, c0, 0
> 
> -       mov     pc, lr
> +       mov     pc, r2
>  ENDPROC(arm_cpu_lowlevel_init)

The lr (r14) register has different instances, one for each mode. It
could be that once we switch to a different mode in arm_cpu_lowlevel_init
we see another instance of r14. So to me the patch looks correct, we
shouldn't rely on lr as return address but rather use another register
for storing the address.
The above only happens though when the CPU is not in SVC32 mode already.
What first stage loader are you using? Could you analyze in which mode
the CPU is when the loader jumps to barebox?

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

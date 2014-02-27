Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-113.126.com ([220.181.15.113])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIvlW-00043R-GF
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 07:52:25 +0000
Date: Thu, 27 Feb 2014 15:51:26 +0800
From: zzs <zzs213@126.com>
Message-ID: <20140227075126.GB20720@greatfirst.com>
References: <20140227061544.GA20720@greatfirst.com>
 <20140227072727.GB17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140227072727.GB17250@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

>
> The lr (r14) register has different instances, one for each mode. It
> could be that once we switch to a different mode in arm_cpu_lowlevel_init
> we see another instance of r14. So to me the patch looks correct, we
> shouldn't rely on lr as return address but rather use another register
> for storing the address.
> The above only happens though when the CPU is not in SVC32 mode already.
> What first stage loader are you using? Could you analyze in which mode
> the CPU is when the loader jumps to barebox?
>
The first stage loader was written by myself longlong ago. So forgot the
details.  I just look the code closer, Found the flowwing line just
before jumps to barebox.

  asm ("msr CPSR_c, %0" : :"i"(ARM_MODE_SYS|I_BIT|F_BIT));

So it seems the cpu is in system mode when run barebox.
Your explanation is right.

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

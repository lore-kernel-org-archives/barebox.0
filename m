Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NRjvn-0008B5-Tz
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 10:13:00 +0000
Date: Mon, 4 Jan 2010 11:12:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100104101222.GE8799@pengutronix.de>
References: <20091229193411.GB5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20091229193411.GB5093@darwin>
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
Subject: Re: [PATCH] fix path specs in arch/arm/mach-arm.dox
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Tue, Dec 29, 2009 at 08:34:11PM +0100, Matthias Kaehlcke wrote:
> Fix incorrect path specs in the documentation for adding an ARM based
> CPU (MACH) to the tree
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

Ok, applied

Thanks,
  Sascha

> 
> --
> 
> diff --git a/arch/arm/mach-arm.dox b/arch/arm/mach-arm.dox
> index 76b6883..758df3f 100644
> --- a/arch/arm/mach-arm.dox
> +++ b/arch/arm/mach-arm.dox
> @@ -40,12 +40,12 @@ target address is the first C instruction in barebox. At this point of time:\n
>  
>  Lets call the new MACH new_cpu.
>  
> - - create a new subdirectory in /arch/arm/new_cpu
> - - create a new subdirectory in /include/asm-arm/new_cpu
> - - add CPU specific definitions into /include/asm-arm/new_cpu/
> - - add /arch/arm/new_cpu/Kconfig
> - - add /arch/arm/new_cpu/Makfile
> - - add other CPU specific code into /arch/arm/new_cpu/
> + - create a new subdirectory in /arch/arm/mach-new_cpu
> + - create a new subdirectory in /arch/arm/mach-new_cpu/include
> + - add CPU specific definitions into /arch/arm/mach-new_cpu/include
> + - add /arch/arm/mach-new_cpu/Kconfig
> + - add /arch/arm/mach-new_cpu/Makfile
> + - add other CPU specific code into /arch/arm/mach-new_cpu/
>   - modify /arch/arm/Kconfig
>   - modify /arch/arm/Makfile
> 
> -- 
> Matthias Kaehlcke
> Embedded Linux Developer
> Barcelona
> 
>              You must have a plan. If you don't have a plan,
>                you'll become part of somebody else's plan
>                                                                  .''`.
>     using free software / Debian GNU/Linux | http://debian.org  : :'  :
>                                                                 `. `'`
> gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrNgN-0007dJ-1s
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 05:19:52 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 5E43D100471D
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 07:20:00 +0200 (CEST)
Date: Thu, 11 Aug 2011 07:01:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110811050104.GY22213@game.jcrosoft.org>
References: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
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
Subject: Re: [RFC] add Tegra support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 00:24 Thu 11 Aug     , Antony Pavlov wrote:
> Hi!
> 
> I have a Toshiba AC100 smartbook. It is based on Nvidia Tegra 250 T20 chip.
> I want to port barebox to it.
> 
> I have successfully built and run u-boot for AC100 from
> https://github.com/chpec/uboot-ac100.git. This u-boot version has lcd,
> serial port and USB support.
> There is another tegra support u-boot branch:
> https://github.com/muromec/uboot-tegra.git
> Also linux has satisfactory tegra support.
> 
> I want to discuss source file organization for Tegra and AC100 support
> in the barebox.
> AFAIK tegra is not resemble to current arm machines, supported by barebox.
> 
> For example, this is the comment from barebox tegra source code:
> 
> /*
>  * Tegra2 uses 2 separate CPUs - the AVP (ARM7TDMI) and the CPU (dual A9s).
>  * U-Boot runs on the AVP first, setting things up for the CPU (PLLs,
>  * muxes, clocks, clamps, etc.). Then the AVP halts, and expects the CPU
>  * to pick up its reset vector, which points here.
>  */
> 
> I propose such file structure:
> 
>   arch/arm/
>   arch/arm/boards/toshiba_ac100
>   arch/arm/mach-tegra
> 
> Has anybody any objections or comments?
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

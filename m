Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Okvl7-0006aV-2i
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 09:13:39 +0000
Date: Mon, 16 Aug 2010 11:13:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100816091330.GN27749@pengutronix.de>
References: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTin5C2PLPS26q5BjyBZC3Dt_aYCVWYifSNri8p+G@mail.gmail.com>
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
Subject: Re: changes for reducing DDR size
To: kuldeep ghan <ghankp@gmail.com>
Cc: barebox@lists.infradead.org


Hi,

On Fri, Aug 13, 2010 at 08:47:38PM +0530, kuldeep ghan wrote:
> Hi,
>         I am using PCM038 based custom board with changes in Memory
> configuration. I want to know what all changes i have to do in barebox
> source if I am reducing the size of DDR to 64 MB.
> I have two 32MB DDR chips interfaced on CSD0 and CSD1. I am able to boot the
> board with changes in pcm038 and lowlevel_init.S. I see that both the DDRs
> are initialized properly and able to write and read to DDR address space.
>          Ping to command is failing with these changes.  And I am not sure
> about the changes required for stack size and malloc size.

You have to adjust the TEXT_BASE in arch/arm/mach-imx/Kconfig so that the
resulting link address is is your address space. This should be
sufficient for barebox. For Linux you have to adjust the device size of
the device which is passed to armlinux_add_dram() to 64MB.

I hope this helps

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

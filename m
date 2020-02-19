Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Khg-00049T-7q
 for barebox@lists.infradead.org; Wed, 19 Feb 2020 08:27:33 +0000
Date: Wed, 19 Feb 2020 09:27:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200219082730.jwvsp3cdsoomdhwd@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
 <20200218153732.14845-6-s.hauer@pengutronix.de>
 <843b47cf-272e-3800-df85-9a2f9dcbee23@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <843b47cf-272e-3800-df85-9a2f9dcbee23@gmx.net>
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
Subject: Re: [PATCH 5/6] ARM: i.MX: external NAND boot: Leave icache disabled
To: Oleksij Rempel <fishor@gmx.net>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 19, 2020 at 07:23:09AM +0100, Oleksij Rempel wrote:
> Am 18.02.20 um 16:37 schrieb Sascha Hauer:
> > It seems running from the NFC SRAM doesn't work with the instruction
> > cache enabled, it leads to corruptions on the i.MX27. We stumbled upon
> > this earlier and the solution at that time was to disable the
> > instruction cache in the NAND boot code. It is, however, more reliable
> > to just not enable the instruction cache in the first place.
> > This is not particularly nice as we have to ifdef this in generic code,
> > duplicate arm_cpu_lowlevel_init(), or call arm_cpu_lowlevel_init() later
> > when we are out of NFC SRAM. From the different bad solutions I chose
> > to ifdef the instruction cache away. It will be enabled later in the
> > common cache functions.
> 
> 
> Hm... is it possible that we have similar speculation issues as on i.MX6UL? The CPU was speculating
> in to IOMEM, caused cache poisoning/corruption and executed corrupted cache.

I don't know how much speculation an ARM9 processor does, but the end
result looks very similar. via JTAG I can see that the memory matches
my disassembly, just the CPU does something completely different.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7VP-00027Q-99
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:24:31 +0000
Date: Thu, 27 Feb 2014 21:24:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227202409.GR17250@pengutronix.de>
References: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393509826-19549-1-git-send-email-philippe.retornaz@epfl.ch>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/1] Add support for mx31moboard
To: Philippe =?iso-8859-15?Q?R=E9tornaz?= <philippe.retornaz@epfl.ch>
Cc: barebox@lists.infradead.org

On Thu, Feb 27, 2014 at 03:03:44PM +0100, Philippe R=E9tornaz wrote:
> Hello
> =

> This patch adds support for the mx31moboard board to bareboot.
> I've based this on the pcm037 board with some minor modifications
> in the clock and SDRAM initialisation.
> =

> We were using redboot until now, barebox ease of use is quite a
> shock :)

Yeah, redboot is not exactly famous for good usability ;)

> =

> BTW, I suspect there is a typo in the clock initialisation while =

> writing the CCM_PDR0 register on the pcm037 board:
> =

>         writel(MX31_PDR0_CSI_PODF(0xff1) | \
>                 MX31_PDR0_PER_PODF(7) | \
>                 MX31_PDR0_HSP_PODF(3) | \
>                 MX31_PDR0_NFC_PODF(5) | \
>                 MX31_PDR0_IPG_PODF(1) | \
>                 MX31_PDR0_MAX_PODF(3) | \
>                 MX31_PDR0_MCU_PODF(0), \
>                 MX31_CCM_BASE_ADDR + MX31_CCM_PDR0);
> =

> The CSI_PODF field is only 9 bits wide, thus, MX31_PDR0_CSI_PODF(0xff1)
> should better be MX31_PDR0_CSI_PODF(0x1ff).

Thanks for noting. This indeed looks buggy.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOJqr-0000kI-0q
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 12:07:53 +0000
Date: Fri, 2 Oct 2020 14:07:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201002120751.GA11648@pengutronix.de>
References: <20201002111452.30547-1-m.felsch@pengutronix.de>
 <08a96424e3c552ec7ddfd37f1bcff54f6ac7921e.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08a96424e3c552ec7ddfd37f1bcff54f6ac7921e.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: configs: imx_v7_defconfig: add missing RELOCATABLE
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>

On Fri, Oct 02, 2020 at 01:23:19PM +0200, Lucas Stach wrote:
> On Fr, 2020-10-02 at 13:14 +0200, Marco Felsch wrote:
> > All barebox images should be relocatable per default. The user needs to
> > turn of this option on purpose rather than turning it on. Currently this
> > option was selected by selecting MACH_CCMX51. Deselecting this board
> > support ended in deselecting CONFIG_RELOCATABLE.
> 
> Shouldn't this rather be selected by IMX_MULTI_BOARDS or soemthing
> similar? Otherwise one would need to find a ARCH_TEXT_BASE compatible
> with all the enabled boards, which is probably a bit too much config
> hell to dump onto the users.

This option actually is selected by IMX_MULTI_BOARDS, see recently added
ca3286135e ("arm: imx: Select RELOCATABLE on IMX_MULTI_BOARDS")

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

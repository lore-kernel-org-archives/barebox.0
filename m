Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrRk-0000JA-BP
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 11:11:53 +0000
Date: Tue, 21 Jan 2020 12:11:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200121111144.cilncfjpucugt7ne@pengutronix.de>
References: <2198510.7r5C0NBLhF@n95hx1g2>
 <20200120195351.skm7ujz7yjr6mu32@pengutronix.de>
 <2df2f2dc-06ed-c85e-b37e-313e1ef51538@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2df2f2dc-06ed-c85e-b37e-313e1ef51538@pengutronix.de>
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
Subject: Re: Configuring for secure boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Christian Eggers <ceggers@arri.de>

On Tue, Jan 21, 2020 at 11:52:02AM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> On 1/20/20 8:53 PM, Sascha Hauer wrote:
> > Disabling the shell entirely with CONFIG_SHELL_NONE is the best you can
> > do. This also forces you to program your boot process in C which helps
> > you to get a well defined boot without diving into potentially unsafe
> > shell commands.
> > 
> > To state the obvious, you have to enable HAB support, sign your barebox
> > images and burn the necessary fuses to forbid loading unsigned images.
> 
> I think it would be great to have a CONFIG_LOCKDOWN option that has inverse
> dependencies on the stuff that should not be enabled and normal dependencies
> on the stuff that should be. Such a CONFIG_LOCKDOWN barebox can then be used in
> secure boot scenarios or for fuzzing efforts.
> 
> Thoughts?

I don't think this is feasible. There are too many different expectations
what is secure and what is not. loadenv/saveenv might be desired at some
point (at least when we add signing support), for others it's a no-go.
Some accept the potential security risk of having a shell, others don't.
You might want to build a device which can boot in a secure mode with
signed kernels only, or alternatively any other kernel after dropping
the security privileges in the CAAM or whatever. That's just some
examples off the top of my head, there are surely more.

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

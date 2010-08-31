Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OqTdL-0003sZ-8C
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 16:24:27 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 31 Aug 2010 18:23:13 +0200
References: <4C7CD898.9040902@coresystems.de>
	<20100831151819.GA22790@game.jcrosoft.org>
	<4C7D26FF.2030706@coresystems.de>
In-Reply-To: <4C7D26FF.2030706@coresystems.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201008311823.13981.jbe@pengutronix.de>
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
Subject: Re: barebox on x86
To: barebox@lists.infradead.org
Cc: Stefan Reinauer <stepan@coresystems.de>

Stefan Reinauer wrote:
>  Hi Jean-Christophe,
>
> On 8/31/10 5:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:50 Tue 31 Aug     , Stefan Reinauer wrote:
> >>  Hi Jean-Christophe,
> >>
> >> On 8/31/10 3:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >>> why do you touch it?
> >>
> >> Sorry, touch _what_ in particular?
> >>
> >>> barebox is self content so I do not understand why you do such
> >>> modificaton specially uf we are supposed to do crosscompile
> >>
> >> Unfortunately that assumption is wrong, at least for the x86 target.
> >> Almost all my patch does is trying to fix exactly that (along with
> >> dropping the requirement to use Linux on the host side)
> >>
> >> And, yes, I am using an i386-elf- cross compiler.
> >
> > you need a linux toolchains and it's build correctly
>
> So, barebox needs glibc and a Linux kernel to build?

No. Everything needed comes with the barebox sources. Else it is a bug.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

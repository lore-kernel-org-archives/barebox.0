Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsGXz-0002Lx-FX
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 15:22:38 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 23 Feb 2011 16:20:30 +0100
References: <Pine.LNX.4.31.1102231440230.20973-100000@susu.bendor.com.au>
In-Reply-To: <Pine.LNX.4.31.1102231440230.20973-100000@susu.bendor.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201102231620.30283.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/2] mini2440: Consider correct NAND page size for boot.
To: barebox@lists.infradead.org

zoltan@bendor.com.au wrote:
> On Tue, 22 Feb 2011, Juergen Beisert wrote:
> > From: Juergen Beisert <juergen@kreuzholzen.de>
> >
> > When booting from NAND, its important to know the correct page size.
>
> Isn't that info available as soon as SteppingStone sucked in the first 4K
> into the internal SRAM?
>
> As far as I can follow the s3c2440 manual, bit 0 and the read-only bits 1
> to 3 of the NFCONF register convey that information and these bits are set
> by sampling a few GPIO (NCON and GPG13-GPG15) pins at reset. Supposedly
> these pins are pulled up/low during reset so that SteppingStone itself can
> read the boot code from the NAND.
>
> What am I missing?

I did a look at it. On my board this register states "0110" which means:
 - 8 bit NAND
 - 512 bytes per page (e.g. "normal" NAND)
 - 4 address cycles
And this setting is all right, my flash is a K9F1208U0A.

But Marek's board states "1110" which means:
 - 8 bit NAND
 - 2048 bytes per page (e.g. "advanced" NAND)
 - 5 address cycles
And this setting is bad, because his K9F1G08U0B uses 4 address cycles only.
Maybe it works because the NAND ignores the 5th address cycle?

Others here around with a mini2440? Can you send me your NAND device type and 
the content of register 0x4e000000?

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

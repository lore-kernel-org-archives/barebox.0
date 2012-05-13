Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STXmT-0003C8-Hd
 for barebox@lists.infradead.org; Sun, 13 May 2012 12:20:10 +0000
Date: Sun, 13 May 2012 14:20:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513122005.GZ27341@pengutronix.de>
References: <m3397emhaw.fsf@intrepid.localdomain>
 <20120512213845.GA22395@pengutronix.de>
 <m3k40gflaq.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3k40gflaq.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: put a valid "barebox" signature in the header on
 big-endian systems.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Sun, May 13, 2012 at 12:05:33PM +0200, Krzysztof Halasa wrote:
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> writes:
> =

> >> +++ b/arch/arm/include/asm/barebox-arm-head.h
> >> @@ -24,8 +24,7 @@ static inline void barebox_arm_head(void)
> >>  		"1: b 1b\n"
> >>  		"1: b 1b\n"
> >>  #endif
> >> -		".word 0x65726162\n"			/* 'bare' */
> >> -		".word 0x00786f62\n"			/* 'box' */
> >> +		".asciz \"barebox\"\n"
> >>  		".word _text\n"				/* text base. If copied there,
> >>  							 * barebox can skip relocation
> >>  							 */
> > Another downside of this patch (apart from the file type detection that
> > still needs adaption?) is that the magic is different depending on
> > endianess.
> =

> Actually it's the opposite - i.e., the magic is now always "barebox\0"
> and doesn't depend on endianness :-)
> =

> Without this patch, the magic changes with endianness (it becomes
> "erab\0xob" on BE).

This may have the upside that with this we are able to detect foreign
endian images like done in the zImage support. Here we use this to know
that we have to swap byte endianess before jumping to the kernel.

I probably should have chosen some arbitrary number rather than a
string, then nobody would have wondered about this ;)

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

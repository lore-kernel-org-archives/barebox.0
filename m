Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tcth0-00083M-L1
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 08:05:27 +0000
Date: Mon, 26 Nov 2012 09:05:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126080524.GU10369@pengutronix.de>
References: <1353154239-31574-1-git-send-email-antonynpavlov@gmail.com>
 <1353154239-31574-2-git-send-email-antonynpavlov@gmail.com>
 <20121120075925.GC10369@pengutronix.de>
 <CAA4bVAFgwUzppRGvq1SAnSYqwOA3pXKmihdOZ=6tO=vAKuNaoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFgwUzppRGvq1SAnSYqwOA3pXKmihdOZ=6tO=vAKuNaoQ@mail.gmail.com>
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
Subject: Re: [RFC 1/3] MIPS: add pre-bootloader (pbl) image support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 24, 2012 at 07:45:01PM +0400, Antony Pavlov wrote:
> Sorry for delay.
> 
> On 20 November 2012 11:59, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Sat, Nov 17, 2012 at 04:10:37PM +0400, Antony Pavlov wrote:
> >> This patch is based on ARM pbl support and allows
> >> creating a pre-bootloader binary for compressed image.
> >>
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> ---
> >> +     .macro  ADR rd label temp
> >> +     .set    push
> >> +     .set    noreorder
> >> +     move    \temp, ra                       # preserve ra beforehand
> >> +     bal     _pc
> >> +      nop
> >
> > This file contains some whitespace damages you could cleanup along the
> > way.
> 
> If you are about this fragment
> >> +     bal     _pc
> >> +      nop
> 
> then there is no whitespace damage --- the 'nop' instruction is in the
> delay slot of the branch instruction (bal).

Ok, forget this one. I'm not familiar with Mips assembly.

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

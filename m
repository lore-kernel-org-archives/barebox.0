Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHmM-0000ul-PG
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:22:52 +0000
Date: Tue, 14 Apr 2020 11:22:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414092249.GD27288@pengutronix.de>
References: <20200406122313.1476-1-antonynpavlov@gmail.com>
 <20200406153845.0aa8ff006f40897eecd1c9ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406153845.0aa8ff006f40897eecd1c9ed@gmail.com>
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
Subject: Re: [PATCH] uimage: add define for RISC-V architecture
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 06, 2020 at 03:38:45PM +0300, Antony Pavlov wrote:
> On Mon,  6 Apr 2020 15:23:13 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi Sascha,
> 
> It looks like barebox IN_ARCH_* constants in image.h and the same constants from U-Boot's image.h
> are differ.
> 
> > --- a/include/image.h
> > +++ b/include/image.h
> > @@ -75,6 +75,7 @@
> >  #define IH_ARCH_NDS32		20	/* ANDES Technology - NDS32  */
> >  #define IH_ARCH_OPENRISC	21	/* OpenRISC 1000  */
> >  #define IH_ARCH_ARM64		22	/* ARM64	*/
> > +#define IH_ARCH_RISCV		23	/* RISC-V	*/
> >  
> >  #if defined(__PPC__)
> >  #define IH_ARCH IH_ARCH_PPC
> 
> Does it matters?

Yes, it does. The numbers should be the same.

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

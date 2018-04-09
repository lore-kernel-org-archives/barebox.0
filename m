Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f5QiD-00079U-K0
 for barebox@lists.infradead.org; Mon, 09 Apr 2018 06:55:35 +0000
Date: Mon, 9 Apr 2018 08:55:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180409065521.xdup45765li67d4w@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
 <20180316125354.23462-62-s.hauer@pengutronix.de>
 <CAHQ1cqEAim+g-NWynFYkX_0MeB9PYzOiXPFiV5=uyfzqnDBy8A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEAim+g-NWynFYkX_0MeB9PYzOiXPFiV5=uyfzqnDBy8A@mail.gmail.com>
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
Subject: Re: [PATCH 61/78] ARM: aarch64: mmu: Make zero page faulting
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey,

On Tue, Mar 20, 2018 at 09:53:56PM -0700, Andrey Smirnov wrote:
> On Fri, Mar 16, 2018 at 5:53 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Make zero page faulting which allows us to catch NULL pointer derefs.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu_64.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> > index 20f6c387f3..094bc0ac62 100644
> > --- a/arch/arm/cpu/mmu_64.c
> > +++ b/arch/arm/cpu/mmu_64.c
> > @@ -316,6 +316,8 @@ static int mmu_init(void)
> >         for_each_memory_bank(bank)
> >                 create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
> >
> > +       create_sections(0x0, 0x0, 0x1000, 0x0);
> 
> Sascha:
> 
> Maybe add commit message as comment to the line above as well?

Sorry, somehow I ended up ignoring this mail. I added a separate patch
adding a comment.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O73AE-000236-0o
	for barebox@lists.infradead.org; Wed, 28 Apr 2010 09:02:39 +0000
Date: Wed, 28 Apr 2010 11:02:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100428090232.GE7634@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
	<1272013443-29196-8-git-send-email-s.hauer@pengutronix.de>
	<20100428023745.GH19722@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100428023745.GH19722@game.jcrosoft.org>
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
Subject: Re: [PATCH 07/14] add arm helper function to determine the program
	counter
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean,

Nice to hear from you ;)

On Wed, Apr 28, 2010 at 04:37:45AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:03 Fri 23 Apr     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/include/asm/common.h |   14 ++++++++++++++
> >  1 files changed, 14 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
> > index 9afcff7..6b8e179 100644
> > --- a/arch/arm/include/asm/common.h
> > +++ b/arch/arm/include/asm/common.h
> > @@ -1 +1,15 @@
> >  #define ARCH_SHUTDOWN
> > +
> > +static inline unsigned long get_program_counter(void)
> I think this could be more generic than arm and we could use a shorter name as
> get_pc

Lets move it to a more generic place once we get a second implementation
and it turns out useful on other archs.
Will change to get_pc.

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

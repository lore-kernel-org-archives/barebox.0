Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDSiU-0004Hi-D0
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 06:55:11 +0000
Date: Tue, 20 Jan 2015 07:54:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150120065445.GE18220@pengutronix.de>
References: <1421670584-24287-1-git-send-email-plagnioj@jcrosoft.com>
 <20150119182246.9b8de2e026a0d0b436ff9421@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150119182246.9b8de2e026a0d0b436ff9421@gmail.com>
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
Subject: Re: [PATCH 1/1] raspberry-pi: mac address detection support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 19, 2015 at 06:22:46PM +0400, Antony Pavlov wrote:
> On Mon, 19 Jan 2015 13:29:44 +0100
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > increase the mbox timeout as it take more time to retreive the mac
> > 
> > fix led register too
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ...
> > diff --git a/arch/arm/mach-bcm2835/mbox.c b/arch/arm/mach-bcm2835/mbox.c
> > index 2bca567..0e51f08 100644
> > --- a/arch/arm/mach-bcm2835/mbox.c
> > +++ b/arch/arm/mach-bcm2835/mbox.c
> > @@ -13,7 +13,7 @@
> >  
> >  #include <mach/mbox.h>
> >  
> > -#define TIMEOUT (MSECOND * 100) /* 100mS */
> > +#define TIMEOUT (MSECOND * 1000) /* 100mS */
> >  
> 
> +#define TIMEOUT (MSECOND * 1000) /* 1000mS */

I removed the comment while applying. No need to state the obvious.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL8kq-00057S-KW
 for barebox@lists.infradead.org; Tue, 22 May 2018 14:59:13 +0000
Received: by mail-wm0-x244.google.com with SMTP id a137-v6so16903095wme.1
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 07:59:01 -0700 (PDT)
Date: Tue, 22 May 2018 17:58:57 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180522145856.lwqyf52cgab74c2g@localhost.localdomain>
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-13-pmamonov@gmail.com>
 <71181caa-caa9-1f41-81ba-53aaf55aef9e@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71181caa-caa9-1f41-81ba-53aaf55aef9e@rempel-privat.de>
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
Subject: Re: [PATCH v2 12/12] fixup! MIPS: import optimized string functions
 from Linux
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2018 at 05:50:55PM +0200, Oleksij Rempel wrote:
> Please, no fixup in master log.

Ok, will fix it in the upcoming revision of the patch series.

Regards,
Peter

> 
> Am 21.05.2018 um 13:54 schrieb Peter Mamonov:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  arch/mips/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> > index ef23837f4..ce63ec1ae 100644
> > --- a/arch/mips/Kconfig
> > +++ b/arch/mips/Kconfig
> > @@ -342,6 +342,7 @@ config NMON_HELP
> >  
> >  config MIPS_OPTIMIZED_STRING_FUNCTIONS
> >  	bool "use assembler optimized string functions"
> > +	depends on !64BIT
> >  	default y
> >  	help
> >  	  Say yes here to use assembler optimized memcpy / memset functions.
> > 
> 
> 
> -- 
> Regards,
> Oleksij
> 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

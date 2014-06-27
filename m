Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Qao-0003pU-TA
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 07:29:07 +0000
Received: by mail-we0-f176.google.com with SMTP id u56so4861301wes.7
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 00:28:44 -0700 (PDT)
Date: Fri, 27 Jun 2014 09:28:42 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140627072840.GB30849@omega>
References: <1403772557-28482-3-git-send-email-holgerschurig@gmail.com>
 <20140626204232.GL14257@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140626204232.GL14257@pengutronix.de>
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
Subject: Re: [PATCH 2/4] sandbox: only access of_add_memory_bank if it's
 defined
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 10:42:32PM +0200, Sascha Hauer wrote:
> On Thu, Jun 26, 2014 at 10:49:15AM +0200, Holger Schurig wrote:
> > ... and it's defined only when CONFIG_OFTREE_MEM_GENERIC is on.
> > 
> > Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> > ---
> >  drivers/of/base.c |    6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index c440a69..818d76e 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -1697,6 +1697,7 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
> >  	return 0;
> >  }
> >  
> > +#ifdef CONFIG_OFTREE_MEM_GENERIC
> >  int of_add_memory(struct device_node *node, bool dump)
> >  {
> >  	const char *device_type;
> > @@ -1720,6 +1721,7 @@ int of_add_memory(struct device_node *node, bool dump)
> >  
> >  	return 0;
> >  }
> > +#endif
> 
> This will break MIPS support. MIPS has it's own implementation of
> of_add_memory_bank (see ./arch/mips/boot/dtb.c), so in MIPS case
> the Kconfig options means "I have my own version of of_add_memory_bank"
> 

Then maybe, move this implementation to "drivers/of/mem_generic.c". This
function doesn't use any static function of this file (What I see,
currently).

Then make a own header with dummy implementation:

#ifdef CONFIG_OFTREE_MEM_GENERIC
int of_add_memory(struct device_node *node, bool dump)
{
...
}
#else 
int of_add_memory(struct device_node *node, bool dump)
{
	return -EOPNOTSUPP;
}
#endif

The file drivers/of/mem_generic.c depends on PPC || ARM, so let
the buildsystem do the rest.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

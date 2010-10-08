Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P4CG4-0003Ha-7Q
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 12:41:09 +0000
Date: Fri, 8 Oct 2010 14:39:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101008123906.GD30252@game.jcrosoft.org>
References: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
	<20101008065933.GM28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101008065933.GM28242@pengutronix.de>
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
Subject: Re: [PATCH 1/5] defaultenv: introduce
	CONFIG_DEFAULT_ENVIRONMENT_GENERIC to enable it
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:59 Fri 08 Oct     , Sascha Hauer wrote:
> On Thu, Oct 07, 2010 at 06:37:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this will we usefull to enable functionnality if used
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/configs/neso_defconfig   |    3 ++-
> >  arch/arm/configs/pca100_defconfig |    3 ++-
> >  arch/arm/configs/pcm037_defconfig |    3 ++-
> >  arch/arm/configs/pcm038_defconfig |    3 ++-
> >  arch/arm/configs/pcm043_defconfig |    3 ++-
> >  common/Kconfig                    |    7 +++++++
> >  common/Makefile                   |    4 ++++
> >  7 files changed, 21 insertions(+), 5 deletions(-)
> > 
> >  
> > +config DEFAULT_ENVIRONMENT_GENERIC
> > +	bool
> > +	depends on DEFAULT_ENVIRONMENT
> > +	prompt "Default environment generic"
> > +	help
> > +	  Generic barebox default env
> 
> How about a bit more verbosity:
> 
> 	prompt "Add generic default environment"
> 	help
> 	  With this option barebox will use the generic default
> 	  environment found under defaultenv/ in the src tree.
> 	  The Directory given with DEFAULT_ENVIRONMENT_PATH
> 	  will be added to the default environment. This should
> 	  at least contain a /env/config file.
> 
> > +
> >  config DEFAULT_ENVIRONMENT_PATH
> >  	string
> >  	depends on DEFAULT_ENVIRONMENT
> > diff --git a/common/Makefile b/common/Makefile
> > index e56dbc2..b42ab7a 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -26,6 +26,10 @@ ifdef CONFIG_DEFAULT_ENVIRONMENT
> >  $(obj)/startup.o: include/generated/barebox_default_env.h
> >  $(obj)/env.o: include/generated/barebox_default_env.h
> >  
> > +ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
> > +CONFIG_DEFAULT_ENVIRONMENT_PATH += defaultenv
> > +endif
> 
> This reverses the order the different environment directories are
> parsed. Now the files from defaultenv will overwrite the ones
> from DEFAULT_ENVIRONMENT_PATH. I made it intentionally the other
> way round.
so we need to specify it in the Kconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrXCq-0001R5-8Y
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:30:02 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id CE5CFFF99A3
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:30:11 +0200 (CEST)
Date: Thu, 11 Aug 2011 17:11:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110811151113.GG22213@game.jcrosoft.org>
References: <1312973230-27870-1-git-send-email-plagnioj@jcrosoft.com>
	<1312973230-27870-3-git-send-email-plagnioj@jcrosoft.com>
	<20110811073132.GC31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110811073132.GC31404@pengutronix.de>
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
Subject: Re: [PATCH 3/3] defaultenv: add login autoboot support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:31 Thu 11 Aug     , Sascha Hauer wrote:
> On Wed, Aug 10, 2011 at 12:47:10PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if the login command is enable and a password set use login with timeout
> > to stop the boot
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/Makefile                    |   10 ++++++----
> >  defaultenv/common/bin/boot_timeout |   10 ++++++++++
> >  defaultenv/common/bin/init         |    9 +--------
> >  defaultenv/login/bin/boot_timeout  |   15 +++++++++++++++
> >  4 files changed, 32 insertions(+), 12 deletions(-)
> >  create mode 100644 defaultenv/common/bin/boot_timeout
> >  create mode 100644 defaultenv/login/bin/boot_timeout
> > 
> > diff --git a/common/Makefile b/common/Makefile
> > index 531000a..5eeb944 100644
> > --- a/common/Makefile
> > +++ b/common/Makefile
> > @@ -32,19 +32,21 @@ $(obj)/startup.o: include/generated/barebox_default_env.h
> >  $(obj)/env.o: include/generated/barebox_default_env.h
> >  
> >  ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
> > -DEFAULT_ENVIRONMENT_PATH = "defaultenv/common"
> > +DEFAULT_ENVIRONMENT_PATH-y = "defaultenv/common"
> > +
> > +DEFAULT_ENVIRONMENT_PATH-$(CONFIG_CMD_LOGIN) += "defaultenv/login"
> >  endif
> >  
> >  ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
> > -DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> > +DEFAULT_ENVIRONMENT_PATH-y += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> >  endif
> >  
> > -ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f '{}' \;; done)
> > +ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH-y); do find $${i} -type f -exec readlink -f '{}' \;; done)
> >  
> >  endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
> >  
> >  barebox_default_env: $(ENV_FILES)
> > -	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
> > +	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH-y)
> >  
> >  include/generated/barebox_default_env.h: barebox_default_env
> >  	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
> 
> I don't like this approach. It is quite intrusive and it handles only
> one variable (CONFIG_CMD_LOGIN). If we by applying this patch tell
> people that this is the way to customize the default env then this
> is going to be a mess soon.
> 
> I think you have to live with overwriting /env/bin/init in your board
> specific env or have to come up with a more general way to adjust
> the default environment.
> 
here the idea is different it's default compporment for any board
if you enable login then a board is protected

the idea is make the default env configurable depending on the command enable

The idea is not obsolutly not to allow custom config in the default env just
to make it configurable

The login case is good proof of concept

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

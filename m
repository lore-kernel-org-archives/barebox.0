Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVlZw-0005Zj-B9
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 17:05:14 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 496A2FFC105
 for <barebox@lists.infradead.org>; Mon, 14 Oct 2013 19:05:03 +0200 (CEST)
Date: Mon, 14 Oct 2013 19:06:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131014170627.GW32444@ns203013.ovh.net>
References: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
 <20131014154619.GV32444@ns203013.ovh.net>
 <1381766493.11504.83.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381766493.11504.83.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [SPAM] [PATCH] common: fix possible build problem without
 password support
To: Jan L??bbe <jlu@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On 18:01 Mon 14 Oct     , Jan L??bbe wrote:
> Hi,
> 
> On Mon, 2013-10-14 at 17:46 +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > >  quiet_cmd_pwd_h = PWDH    $@
> > > +ifdef CONFIG_PASSWORD
> > 
> > ??
> > 
> > so if no password then it do
> > 
> > cmd_pwd_h = echo "const char default_passwd[] = \"\";" > $@
> > 
> > that's all
> > 
> > so we do not need to check CONFIG_PASSSORD
> 
> No. Try adding 'set -x;' to the shell call and building without
> CONFIG_PASSWORD. In that case CONFIG_PASSWORD_DEFAULT is not set.
> An unset Kconfig variable is not equal to "".
> 
> > >  ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
> > >  PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
> 
> Try with:
> PASSWD_FILE := $(shell set -x; cd $(srctree); echo `find $(CONFIG_PASSWORD_DEFAULT) -type f`)

with set -x I've the issue ok

Best Regards,
J.
> 
> > >  cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
> > > @@ -134,6 +135,7 @@ endif
> > >  targets += include/generated/passwd.h
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

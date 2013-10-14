Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVkZ3-0003WM-VI
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 16:00:15 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1VVkYi-0004pP-1V
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 17:59:52 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1VVkaL-0006Z7-DW
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 18:01:33 +0200
Message-ID: <1381766493.11504.83.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 14 Oct 2013 18:01:33 +0200
In-Reply-To: <20131014154619.GV32444@ns203013.ovh.net>
References: <1381765165-22365-1-git-send-email-jlu@pengutronix.de>
 <20131014154619.GV32444@ns203013.ovh.net>
Mime-Version: 1.0
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
To: Barebox List <barebox@lists.infradead.org>

Hi,

On Mon, 2013-10-14 at 17:46 +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >  quiet_cmd_pwd_h = PWDH    $@
> > +ifdef CONFIG_PASSWORD
> 
> ??
> 
> so if no password then it do
> 
> cmd_pwd_h = echo "const char default_passwd[] = \"\";" > $@
> 
> that's all
> 
> so we do not need to check CONFIG_PASSSORD

No. Try adding 'set -x;' to the shell call and building without
CONFIG_PASSWORD. In that case CONFIG_PASSWORD_DEFAULT is not set.
An unset Kconfig variable is not equal to "".

> >  ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
> >  PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)

Try with:
PASSWD_FILE := $(shell set -x; cd $(srctree); echo `find $(CONFIG_PASSWORD_DEFAULT) -type f`)

> >  cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
> > @@ -134,6 +135,7 @@ endif
> >  targets += include/generated/passwd.h
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

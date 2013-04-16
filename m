Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo1.mail-out.ovh.net ([87.98.162.229]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1US5jE-0005gC-45
 for barebox@lists.infradead.org; Tue, 16 Apr 2013 13:15:21 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id ABD5BFF9E59
 for <barebox@lists.infradead.org>; Tue, 16 Apr 2013 15:15:15 +0200 (CEST)
Date: Tue, 16 Apr 2013 15:10:38 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130416131038.GA32215@game.jcrosoft.org>
References: <1365940704-4552-1-git-send-email-plagnioj@jcrosoft.com>
 <20130416124137.GI1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130416124137.GI1906@pengutronix.de>
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
Subject: Re: [For-master critical fix PATCH 1/1] login: disable input
 console if password wrong
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:41 Tue 16 Apr     , Sascha Hauer wrote:
> On Sun, Apr 14, 2013 at 01:58:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we garantie that barebox is secured again user interaction
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/Kconfig        |    1 +
> >  commands/login.c        |    5 ++++-
> >  common/Kconfig          |    3 +++
> >  common/console.c        |    6 ++++++
> >  common/console_common.c |   15 +++++++++++++++
> >  common/console_simple.c |    7 +++++++
> >  include/console.h       |   12 ++++++++++++
> >  7 files changed, 48 insertions(+), 1 deletion(-)
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index c1454c7..d78c925 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -87,6 +87,7 @@ config CMD_MENU_MANAGEMENT
> >  config CMD_LOGIN
> >  	tristate
> >  	select PASSWORD
> > +	select CONSOLE_INPUT_RESTRICTION
> 
> I don't think this is worth a kconfig option. Just compile it in
> unconditionally.

ok why not
> 
> > diff --git a/common/console.c b/common/console.c
> > index beb37bd..dcd4d92 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -234,6 +234,9 @@ int getc(void)
> >  	unsigned char ch;
> >  	uint64_t start;
> >  
> > +	if (!console_is_input_allow())
> > +		return -EPERM;
> 
> Can we rename this to console_input_allowed()?
don't care

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

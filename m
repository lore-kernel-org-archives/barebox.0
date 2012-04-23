Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SMCxe-0006Tu-9p
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 06:41:23 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5133EFFA3D2
 for <barebox@lists.infradead.org>; Mon, 23 Apr 2012 08:42:53 +0200 (CEST)
Date: Mon, 23 Apr 2012 08:21:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120423062146.GJ20601@game.jcrosoft.org>
References: <20120419053846.GA20601@game.jcrosoft.org>
 <1334814298-11468-9-git-send-email-plagnioj@jcrosoft.com>
 <20120423060327.GU3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120423060327.GU3852@pengutronix.de>
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
Subject: Re: [PATCH 09/11] complete: add go and sleep support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:03 Mon 23 Apr     , Sascha Hauer wrote:
> On Thu, Apr 19, 2012 at 07:44:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/go.c      |    2 ++
> >  commands/sleep.c   |    2 ++
> >  common/complete.c  |    5 +++++
> >  include/complete.h |    1 +
> >  4 files changed, 10 insertions(+), 0 deletions(-)
> > 
> > diff --git a/commands/go.c b/commands/go.c
> > index c821207..e9e9d40 100644
> > --- a/commands/go.c
> > +++ b/commands/go.c
> > @@ -25,6 +25,7 @@
> >  
> >  #include <common.h>
> >  #include <command.h>
> > +#include <complete.h>
> >  #include <fs.h>
> >  #include <fcntl.h>
> >  #include <linux/ctype.h>
> > @@ -91,4 +92,5 @@ BAREBOX_CMD_START(go)
> >  	.cmd		= do_go,
> >  	.usage		= "start application at address or file",
> >  	BAREBOX_CMD_HELP(cmd_go_help)
> > +	BAREBOX_CMD_COMPLETE(cammand_var_complete)
> >  BAREBOX_CMD_END
> > diff --git a/commands/sleep.c b/commands/sleep.c
> > index f772e87..c5f7867 100644
> > --- a/commands/sleep.c
> > +++ b/commands/sleep.c
> > @@ -22,6 +22,7 @@
> >  
> >  #include <common.h>
> >  #include <command.h>
> > +#include <complete.h>
> >  #include <clock.h>
> >  
> >  static int do_sleep(int argc, char *argv[])
> > @@ -46,4 +47,5 @@ static int do_sleep(int argc, char *argv[])
> >  BAREBOX_CMD_START(sleep)
> >  	.cmd		= do_sleep,
> >  	.usage		= "delay execution for n seconds",
> > +	BAREBOX_CMD_COMPLETE(cammand_var_complete)
> >  BAREBOX_CMD_END
> > diff --git a/common/complete.c b/common/complete.c
> > index 5213b10..9ecce25 100644
> > --- a/common/complete.c
> > +++ b/common/complete.c
> > @@ -193,6 +193,11 @@ int empty_complete(struct string_list *sl, char *instr)
> >  	return 1;
> >  }
> >  
> > +int cammand_var_complete(struct string_list *sl, char *instr)
> > +{
> > +	return 0;
> > +}
> 
> Two patches before this one you introduced empty_complete. This function
> does the same, except that it returns 0 instead of 1. The return value
> of the complete functions is never checked, so what is going on here?

the return value is checked.

no this different we return 0 as you can use env var complete

the empty_complete means no args.

Bst Regards,

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

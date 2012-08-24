Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4yy1-0005C9-IA
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 18:50:50 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 701C0DC1253
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 20:55:47 +0200 (CEST)
Date: Fri, 24 Aug 2012 20:51:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120824185102.GN6271@game.jcrosoft.org>
References: <20120824045246.GJ6271@game.jcrosoft.org>
 <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
 <1345784113-29643-2-git-send-email-plagnioj@jcrosoft.com>
 <CAONxwYM8=WMNH+gYV-bUZUmpUo0jhPxY0954wbvPdF7Avif0Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYM8=WMNH+gYV-bUZUmpUo0jhPxY0954wbvPdF7Avif0Qw@mail.gmail.com>
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
Subject: Re: [PATCH 2/5] globalvar: add support to set a value to of all
 globalvars beginning with 'match'
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On 11:08 Fri 24 Aug     , Roberto Nibali wrote:
> Hi
> 
> >  commands/global.c   |   58 ++++++++++++++++++++++++++++++++++++++++++++-------
> >  common/globalvar.c  |   10 +++++++++
> >  include/globalvar.h |    3 +++
> >  3 files changed, 64 insertions(+), 7 deletions(-)
> >
> > diff --git a/commands/global.c b/commands/global.c
> > index de6b13e..cb22e63 100644
> > --- a/commands/global.c
> > +++ b/commands/global.c
> > @@ -24,25 +24,26 @@
> >  #include <command.h>
> >  #include <globalvar.h>
> >  #include <environment.h>
> > +#include <getopt.h>
> >
> > -static int do_global(int argc, char *argv[])
> > +static int do_global_add(int argc, char *argv[])
> >  {
> >         int ret;
> >         char *value;
> >
> > -       if (argc != 2)
> > +       if (argc != 1)
> >                 return COMMAND_ERROR_USAGE;
> >
> > -       value = strchr(argv[1], '=');
> > +       value = strchr(argv[0], '=');
> >         if (value) {
> >                 *value = 0;
> >                 value++;
> >         }
> >
> > -       ret = globalvar_add_simple(argv[1]);
> > +       ret = globalvar_add_simple(argv[0]);
> >
> >         if (value) {
> > -               char *name = asprintf("global.%s", argv[1]);
> > +               char *name = asprintf("global.%s", argv[0]);
> >                 ret = setenv(name, value);
> >                 free(name);
> >         }
> > @@ -50,13 +51,56 @@ static int do_global(int argc, char *argv[])
> >         return ret ? 1 : 0;
> >  }
> >
> > +static int do_global_reset(int argc, char *argv[])
> > +{
> > +       char *value;
> > +
> > +       if (argc != 1)
> > +               return COMMAND_ERROR_USAGE;
> > +
> > +       value = strchr(argv[0], '=');
> > +       if (value) {
> > +               *value = 0;
> > +               value++;
> > +       } else {
> > +               value = "";
> > +       }
> > +
> > +       globalvar_reset_match(argv[0], value);
> > +
> > +       return 0;
> > +}
> > +
> > +static int do_global(int argc, char *argv[])
> > +{
> > +       int opt;
> > +       int do_reset = 0;
> > +
> > +       while ((opt = getopt(argc, argv, "r")) > 0) {
> > +               switch (opt) {
> > +               case 'r':
> > +                       do_reset = 1;
> > +                       break;
> > +               }
> > +       }
> > +
> > +       argc -= optind;
> > +       argv += optind;
> > +
> > +       if (do_reset)
> > +               return do_global_reset(argc, argv);
> 
> Since I just read the diff, I might fail to see the big picture,
> however, where's the call to globalvar_reset_match(), is it inside
> do_global_reset()?
no can not

you do this

globalvar toto.l=t
globalvar toto=a

so you expect 

global.toto.l=t
global.toto=a

and if we you the reset_match

you will have 
global.toto.l=a
global.toto=a

> 
> > +       return do_global_add(argc, argv);
> > +}
> > +
> >  BAREBOX_CMD_HELP_START(global)
> > -BAREBOX_CMD_HELP_USAGE("global <var>[=<value]\n")
> > +BAREBOX_CMD_HELP_USAGE("global [-r] <var>[=<value]\n")
> >  BAREBOX_CMD_HELP_SHORT("add a new global variable named <var>, optionally set to <value>\n")
> > +BAREBOX_CMD_HELP_SHORT("-r to set a value to of all globalvars beginning with 'match'")
> 
> Shouldn't this be REset instead of set? How about:
> 
> "-r to reset all matching global variables to a value."
> 
> Maybe giving an example could shed some light on the exact syntax of
> the exact kind of matching you had in mind.
it's realy set a value to a list of params

the text in english is clear

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

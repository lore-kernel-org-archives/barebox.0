Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UAJze-0001WY-0e
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 12:50:51 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A6466FF9606
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 14:06:06 +0100 (CET)
Date: Tue, 26 Feb 2013 13:49:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130226124947.GE10258@game.jcrosoft.org>
References: <1361370315-15701-1-git-send-email-plagnioj@jcrosoft.com>
 <20130226100935.GI25672@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130226100935.GI25672@pengutronix.de>
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
Subject: Re: [PATCH 1/1] Makefile: drop duplicate cmd_as_o_S support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:09 Tue 26 Feb     , Sascha Hauer wrote:
> On Wed, Feb 20, 2013 at 03:25:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > as we have it to in scripts/Makefile.lib
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  Makefile |    8 --------
> >  1 file changed, 8 deletions(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index a27c07a..7f97e8f 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1210,14 +1210,6 @@ quiet_cmd_rmdirs = $(if $(wildcard $(rm-dirs)),CLEAN   $(wildcard $(rm-dirs)))
> >  quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files)))
> >        cmd_rmfiles = rm -f $(rm-files)
> >  
> > -
> > -a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
> > -	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
> > -	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
> > -
> > -quiet_cmd_as_o_S = AS      $@
> > -cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
> > -
> >  # read all saved command lines
> 
> I dropped this one as it breaks compilation in a number of defconfigs:
> 
> cupid_defconfig:
> /bin/sh: 1: Syntax error: ";" unexpected
> make: *** [.tmp_kallsyms1.o] Error 2

I found the as_o_S is in Makefile.build not .lib

so not alwaysed included do not known why
this should be

> 
> I haven't investigated the reasons.

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

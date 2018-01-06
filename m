Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXj0S-0000yM-FS
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 07:35:06 +0000
Date: Sat, 6 Jan 2018 08:34:49 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106073449.GA30471@ravnborg.org>
References: <20171226183236.GA26708@ravnborg.org>
 <20171226183653.GD28706@ravnborg.org>
 <20180105104946.m24p2h6ho774s5i4@pengutronix.de>
 <20180105145717.by52sqmg55vfkjbf@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180105145717.by52sqmg55vfkjbf@pengutronix.de>
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
Subject: Re: [PATCH 4/4] build: fix that LZO file is always rebuilt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.
> > > +# (needed for the shell)
> > > +make-cmd = $(call escsq,$(subst \#,\\\#,$(subst $$,$$$$,$(cmd_$(1)))))
> > >  
> > 
> > This doesn't work for me. Without this patch I do not see any rebuilds
> > of lzo files, but with this patch I do.
> > 
> > Seems you are using another shell, dash vs. bash? Porting the second
> > hunk of the kernel commit 164f0d2efaaef83 fixes it for me.

$ sh --version
GNU bash, version 4.2.46(1)-release (x86_64-redhat-linux-gnu)

This is a CentOS based system.

> 
> Ok, applied with the missing hunk from 164f0d2efaaef83:
> 
> @@ -220,7 +222,7 @@ any-prereq = $(filter-out $(PHONY),$?) $(filter-out $(PHONY) $(wildcard $^),$^)
>  if_changed = $(if $(strip $(any-prereq) $(arg-check)),                       \
>         @set -e;                                                             \
>         $(echo-cmd) $(cmd_$(1));                                             \
> -       echo 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd)
> +       printf '%s\n' 'cmd_$@ := $(make-cmd)' > $(dot-target).cmd)
>

The above snip have no impact on my system - which is why I left it out.
To try to do minimal changes only.
I should have mentioned this - as well as the specific reference to the
kernel commit.

but in other words - tested with the above change. OK.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

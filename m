Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvOnl-0000JQ-Qh
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 07:52:22 +0000
Date: Thu, 9 Feb 2012 08:52:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120209075207.GT3852@pengutronix.de>
References: <alpine.DEB.2.02.1202071802010.5917@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A893183573C@DBDE01.ent.ti.com>
 <20120208085402.GO3852@pengutronix.de>
 <alpine.DEB.2.02.1202080534280.30661@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202080534280.30661@oneiric>
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
Subject: Re: need some clarification on how environments work
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Feb 08, 2012 at 06:01:08AM -0500, Robert P. J. Day wrote:
> On Wed, 8 Feb 2012, Sascha Hauer wrote:
> 
> ... snip ...
> 
> > This is not the whole truth. CONFIG_DEFAULT_ENVIRONMENT_PATH can be
> > a list of directories. All pathes in this list are copied into a
> > temporary directory. This means that you can compose your
> > environment out of different directories. This also means that you
> > can overwrite files with more specific versions.
> 
> > If CONFIG_DEFAULT_ENVIRONMENT is enabled 'defaultenv' will be added
> > to the start of the list. So defaultenv/ contains a 'config' files
> > with FIXMEs. This is normally overwritten with the contents of your
> > board specific config file in arch/<arch>/<board>/env/config.
> 
>   i think what is needed here is an agreement on *terminology*.  you
> can't document anything properly unless you can *name* it.  so what
> names should be used here?
> 
>   consider the file referred to above, whose name is *actually*
> arch/<arch>/boards/<board>/env/config (correct?), an example being,
> say, arch/arm/boards/panda/env/config.  what is the official name of
> this "config" file?

Since this mechanism is not limited to the config file maybe we can
speak of the generic environment and the board environment. Files in
the generic environment can be overwritten with files from the board
environment.

> 
>   sascha called it the "board-specific config file"?  everyone good
> with that?  it could just as easily be called the "board-specific
> environment file".  whatever.  a couple questions about it.  first,
> will there always be just one of them per board, and will it always be
> named "config"?  i *think* so but i refuse to make any assumptions.
> 
>   and second, is it an error if a board has no such file?  currently,
> the beagleboard has no such file.  is that an acceptable state of
> affairs?  or is it something that should be resolved?  the
> "freescale-mx23-evk" board directory also doesn't have one, and there
> might be others.  so what should be done there?

I think this should be resolved, but only by someone who is actively
working on this board to make sure the result really matches the board.

> 
>   and i want to correct what sascha wrote above, when he wrote:
> 
> > If CONFIG_DEFAULT_ENVIRONMENT is enabled 'defaultenv' will be added
> > to the start of the list. So defaultenv/ contains a 'config' files
> > with FIXMEs.
> 
>   actually, here's that part of common/Makefile:
> 
> ifdef CONFIG_DEFAULT_ENVIRONMENT
> $(obj)/startup.o: include/generated/barebox_default_env.h
> $(obj)/env.o: include/generated/barebox_default_env.h
> 
> ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
> DEFAULT_ENVIRONMENT_PATH = "defaultenv"
> endif
> 
>   so it would appear to be CONFIG_DEFAULT_ENVIRONMENT_GENERIC that
> dictates whether the file defaultenv/config is imported as part of the
> environment.

Even more specific it dictates that defaultenv/ is imported as part
of the environment.

BTW in some configs we have:

CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/freescale-mx53-loco/env/"

This means that defaultenv/ will be compiled in regardless of
CONFIG_DEFAULT_ENVIRONMENT_GENERIC being set or not. This should
be fixed to

CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx53-loco/env/"

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rv5HG-0003u8-UJ
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 11:01:32 +0000
Date: Wed, 8 Feb 2012 06:01:08 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120208085402.GO3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202080534280.30661@oneiric>
References: <alpine.DEB.2.02.1202071802010.5917@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A893183573C@DBDE01.ent.ti.com>
 <20120208085402.GO3852@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, 8 Feb 2012, Sascha Hauer wrote:

... snip ...

> This is not the whole truth. CONFIG_DEFAULT_ENVIRONMENT_PATH can be
> a list of directories. All pathes in this list are copied into a
> temporary directory. This means that you can compose your
> environment out of different directories. This also means that you
> can overwrite files with more specific versions.

> If CONFIG_DEFAULT_ENVIRONMENT is enabled 'defaultenv' will be added
> to the start of the list. So defaultenv/ contains a 'config' files
> with FIXMEs. This is normally overwritten with the contents of your
> board specific config file in arch/<arch>/<board>/env/config.

  i think what is needed here is an agreement on *terminology*.  you
can't document anything properly unless you can *name* it.  so what
names should be used here?

  consider the file referred to above, whose name is *actually*
arch/<arch>/boards/<board>/env/config (correct?), an example being,
say, arch/arm/boards/panda/env/config.  what is the official name of
this "config" file?

  sascha called it the "board-specific config file"?  everyone good
with that?  it could just as easily be called the "board-specific
environment file".  whatever.  a couple questions about it.  first,
will there always be just one of them per board, and will it always be
named "config"?  i *think* so but i refuse to make any assumptions.

  and second, is it an error if a board has no such file?  currently,
the beagleboard has no such file.  is that an acceptable state of
affairs?  or is it something that should be resolved?  the
"freescale-mx23-evk" board directory also doesn't have one, and there
might be others.  so what should be done there?

  and i want to correct what sascha wrote above, when he wrote:

> If CONFIG_DEFAULT_ENVIRONMENT is enabled 'defaultenv' will be added
> to the start of the list. So defaultenv/ contains a 'config' files
> with FIXMEs.

  actually, here's that part of common/Makefile:

ifdef CONFIG_DEFAULT_ENVIRONMENT
$(obj)/startup.o: include/generated/barebox_default_env.h
$(obj)/env.o: include/generated/barebox_default_env.h

ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
DEFAULT_ENVIRONMENT_PATH = "defaultenv"
endif

  so it would appear to be CONFIG_DEFAULT_ENVIRONMENT_GENERIC that
dictates whether the file defaultenv/config is imported as part of the
environment.

  anyway, feel free to clarify all of this while i think up more
questions. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

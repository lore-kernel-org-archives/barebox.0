Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rv2kS-0006vt-7u
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 08:19:29 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Wed, 8 Feb 2012 08:19:18 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A893183573C@DBDE01.ent.ti.com>
References: <alpine.DEB.2.02.1202071802010.5917@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202071802010.5917@oneiric>
Content-Language: en-US
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
Subject: RE: need some clarification on how environments work
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Robert P. J. Day
> Sent: Wednesday, February 08, 2012 5:42 AM
> To: U-Boot Version 2 (barebox)
> Subject: need some clarification on how environments work
> 
> 
>   ok, i'm trying to figure out how environments work so bear with me
> as i'm going to ask a number of questions.  i'm reading this page:
> 
> http://wiki.barebox.org/doku.php?id=user:environment
> 
> and based on that, i took a look at what i have running on my beagle
> xM having configured and built *entirely* using defaults.
> confusingly, i have no /dev/env0 as that web page seems to suggest.
> here's what's in my dev directory:
> 
> barebox@Texas Instrument's Beagle:/ ls -l dev
> cr-------- 4294967295 zero
> crw-------  134217728 ram0
> crw-------       7496 defaultenv
> crw------- 4294967295 mem
> crw-------       1024 twl4030
> crw------- 3963617280 disk0
> crw-------  123346944 disk0.0
> 
>   so i have a "defaultenv" file there.  i puzzled over this for a
> while until i noticed that there is no arch/arm/boards/beagle/env/
> directory, as there is for most of the other boards.
> 
>   so let's step back and look at the relevant source in
> common/Makefile:
> 
> =====
> 
> ifdef CONFIG_DEFAULT_ENVIRONMENT
> $(obj)/startup.o: include/generated/barebox_default_env.h
> $(obj)/env.o: include/generated/barebox_default_env.h
> 
> ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
> DEFAULT_ENVIRONMENT_PATH = "defaultenv"
> endif
> 
> ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
> DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> endif
> 
> ENV_FILES := $(shell cd $(srctree); for i in
> $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f
> '{}' \;; done)
> 
> endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
> 
> barebox_default_env: $(ENV_FILES)
>         $(Q)$(srctree)/scripts/genenv $(srctree) $(objtree)
> $(DEFAULT_ENVIRONMENT_PATH)
> 
> =====
> 
>    as well as the menu selections from "make menuconfig":
> 
>       [*] Compile in default environment
>       [*]   Default environment generic
>       ()    Default environment path
> 
> so now, the questions.
> 
>   first, what is the "default" environment?  is that the one found
> for the board in arch/arm/boards/<board>/env/config?  so that there is
> *no* current default environment for the beagleboard right now?
> 
>   also, from the Kconfig help text:
> 
> CONFIG_DEFAULT_ENVIRONMENT:
> 
> Enabling this option will give you a default environment when
> the environment found in the environment sector is invalid
> 
>   is that true?  as in, the "default" environment will only be used if
> what's in the environment sector is found to be invalid?
> 
>   next, what is meant by the "generic" default environment?  from the
> Kconfig file,
> 
> "With this option barebox will use the generic default
> environment found under defaultenv/ in the src tree.
> The Directory given with DEFAULT_ENVIRONMENT_PATH
> will be added to the default environment. This should
> at least contain a /env/config file.
> This will be able to overwrite the files from defaultenv."
> 
>   ok, i can appreciate that -- it's a "generic" environment, defined
> by the file defaultenv/config, and it's apparently what i got, is that
> it?  but why the reference to DEFAULT_ENVIRONMENT_PATH, which is an
> entirely separate Kconfig option?
> 
>   and regarding the final setting, CONFIG_DEFAULT_ENVIRONMENT_PATH,
> how does that affect the first two settings?  i'm just trying to
> puzzle all this out.

I have recently finished creating the default env for omap3evm; so
will be able to share my uderstanding. Hope to send the patches by
end of the day (atleast an RFC, if I am unable to boot linux) OR
may be earlier.

CONFIG_DEFAULT_ENVIRONMENT appears to control whether "any" default
env should be included in the barebox. Haven't tried env from NAND
device (hopefully mounting as /dev/env0) so far, but I assume from
boot sequence that I observe that env from NAND will be used and
there is no fallback.

CONFIG_DEFAULT_ENVIRONMENT_GENERIC leads to inclusion of a generic
"template" env into barebox - not really useful, but atleast you
have a template to work with and al the FIXMEs included there will
get you started.

If CONFIG_DEFAULT_ENVIRONMENT_PATH is used the "specific" path
you have specified, will now be used for the default env. And it
overrides the "generic" env path. So now you have a board specific
env.

In a boot log I sent yesterday, you will notice this:

Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

(http://lists.infradead.org/pipermail/barebox/2012-February/005987.html)

I did plan to look at the origin of message "no valid environment found
on /dev/env0", but Linux not booting took the focus elsewhere.

~sanjeev
> 
> rday
> 
> -- 
> 
> ==============================================================
> ==========
> Robert P. J. Day                                 Ottawa, 
> Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       
> http://twitter.com/rpjday
> LinkedIn:                               
> http://ca.linkedin.com/in/rpjday
> ==============================================================
> ==========
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

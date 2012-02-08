Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ruv8Z-00024m-QS
 for barebox@lists.infradead.org; Wed, 08 Feb 2012 00:11:52 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1Ruv8W-0003Ob-5O
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 19:11:48 -0500
Date: Tue, 7 Feb 2012 19:11:42 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202071802010.5917@oneiric>
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
Subject: need some clarification on how environments work
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  ok, i'm trying to figure out how environments work so bear with me
as i'm going to ask a number of questions.  i'm reading this page:

http://wiki.barebox.org/doku.php?id=user:environment

and based on that, i took a look at what i have running on my beagle
xM having configured and built *entirely* using defaults.
confusingly, i have no /dev/env0 as that web page seems to suggest.
here's what's in my dev directory:

barebox@Texas Instrument's Beagle:/ ls -l dev
cr-------- 4294967295 zero
crw-------  134217728 ram0
crw-------       7496 defaultenv
crw------- 4294967295 mem
crw-------       1024 twl4030
crw------- 3963617280 disk0
crw-------  123346944 disk0.0

  so i have a "defaultenv" file there.  i puzzled over this for a
while until i noticed that there is no arch/arm/boards/beagle/env/
directory, as there is for most of the other boards.

  so let's step back and look at the relevant source in
common/Makefile:

=====

ifdef CONFIG_DEFAULT_ENVIRONMENT
$(obj)/startup.o: include/generated/barebox_default_env.h
$(obj)/env.o: include/generated/barebox_default_env.h

ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
DEFAULT_ENVIRONMENT_PATH = "defaultenv"
endif

ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
endif

ENV_FILES := $(shell cd $(srctree); for i in
$(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f
'{}' \;; done)

endif # ifdef CONFIG_DEFAULT_ENVIRONMENT

barebox_default_env: $(ENV_FILES)
        $(Q)$(srctree)/scripts/genenv $(srctree) $(objtree)
$(DEFAULT_ENVIRONMENT_PATH)

=====

   as well as the menu selections from "make menuconfig":

      [*] Compile in default environment
      [*]   Default environment generic
      ()    Default environment path

so now, the questions.

  first, what is the "default" environment?  is that the one found
for the board in arch/arm/boards/<board>/env/config?  so that there is
*no* current default environment for the beagleboard right now?

  also, from the Kconfig help text:

CONFIG_DEFAULT_ENVIRONMENT:

Enabling this option will give you a default environment when
the environment found in the environment sector is invalid

  is that true?  as in, the "default" environment will only be used if
what's in the environment sector is found to be invalid?

  next, what is meant by the "generic" default environment?  from the
Kconfig file,

"With this option barebox will use the generic default
environment found under defaultenv/ in the src tree.
The Directory given with DEFAULT_ENVIRONMENT_PATH
will be added to the default environment. This should
at least contain a /env/config file.
This will be able to overwrite the files from defaultenv."

  ok, i can appreciate that -- it's a "generic" environment, defined
by the file defaultenv/config, and it's apparently what i got, is that
it?  but why the reference to DEFAULT_ENVIRONMENT_PATH, which is an
entirely separate Kconfig option?

  and regarding the final setting, CONFIG_DEFAULT_ENVIRONMENT_PATH,
how does that affect the first two settings?  i'm just trying to
puzzle all this out.

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

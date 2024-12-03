Delivery-date: Tue, 03 Dec 2024 12:10:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQnV-003TXl-29
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 12:10:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIQnV-0000C8-0X
	for lore@pengutronix.de; Tue, 03 Dec 2024 12:10:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2naY7O8wao91tTiLtK9/0epKIWvRLJZ2k7Jt9U9w+A=; b=PWWmjqyH2dr7vpxN12l9P5+nd/
	6fp5v7Jgubtn/ZumrhgR3uypoGLQr0No6JkOY1favDVSBt/veHy9/DW853gv2WGsiy7dBPOvUCpYz
	dFZKHr2iXoulI0XJPjTLQI1cCAj5U5fSsKzFGDNfawEBtVPrpOduSSz4WXAfVIEgGmhdQt2/9VtBd
	jnihnUi8Z9nfrSEqXjoTEJ8nu+0eMP3U+UzUsRa6wzM7HXlbr1H5Am18RZmAGJ98fCAGmRNQu5kii
	PhmK104Cyd87OUXueieIDYIlmLNyyydjpnVhVJZxintBqOXNYKzXgDJfEW32oT2oRl74SzWWXYy9S
	ES96E/Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQmy-00000009D7g-2PIS;
	Tue, 03 Dec 2024 11:09:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIQcW-00000009AXN-0kZn
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 10:59:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIQcU-0005Ab-TU
	for barebox@lists.infradead.org; Tue, 03 Dec 2024 11:59:06 +0100
Message-ID: <20ac7593-93a6-442e-a6bc-5f9146f8d82c@pengutronix.de>
Date: Tue, 3 Dec 2024 11:59:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
References: <20241203104225.3851406-1-a.fatoum@pengutronix.de>
 <20241203104225.3851406-2-a.fatoum@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20241203104225.3851406-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_025908_378982_F34C1589 
X-CRM114-Status: GOOD (  41.21  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] kbuild: sync scripts/Kbuild.include with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.12.24 11:42, Ahmad Fatoum wrote:
> The scripts/Kbuild.include file has a collection of helpers for use
> across in Kbuild. Let's bring up our version in-sync with Linux
> v6.13-rc1 by importing the following Linux commits:
> 
>   875ef1a57f kbuild: use .NOTINTERMEDIATE for future GNU Make versions
>   174a1dcc96 kbuild: sink stdout from cmd for silent build
>   a7f3257da8 kbuild: remove the target in signal traps when interrupted
>   6768fa4bcb kbuild: add read-file macro
>   fccb3d3eda kbuild: add test-{ge,gt,le,lt} macros
>   8402ee182c kbuild: remove leftover comment for filechk utility
>   12fec3d601 kbuild: replace $(dot-target).tmp in filechk with $(tmp-target)
>   e1f86d7b4b kbuild: warn if FORCE is missing for filechk
>   8962b6b475 kbuild: print short log in addition to the whole command with V=1
>   6ae4b9868a kbuild: allow to combine multiple V= levels
>   214c0eea43 kbuild: add $(objtree)/ prefix to some in-kernel build artifacts

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Makefile               |  19 ++++---
>  scripts/Kbuild.include | 109 ++++++++++++++++++++++++++++++++++-------
>  scripts/tags.sh        |   2 +-
>  3 files changed, 102 insertions(+), 28 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 0b61d2875471..1516e5685cbf 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -66,9 +66,8 @@ unexport GREP_OPTIONS
>  #
>  #	$(Q)ln $@ :<
>  #
> -# If KBUILD_VERBOSE equals 0 then the above command will be hidden.
> -# If KBUILD_VERBOSE equals 1 then the above command is displayed.
> -# If KBUILD_VERBOSE equals 2 then give the reason why each target is rebuilt.
> +# If KBUILD_VERBOSE contains 1, the whole command is echoed.
> +# If KBUILD_VERBOSE contains 2, the reason for rebuilding is printed.
>  #
>  # To put more focus on warnings, be less verbose as default
>  # Use 'make V=1' to see the full commands
> @@ -80,12 +79,11 @@ ifndef KBUILD_VERBOSE
>    KBUILD_VERBOSE = 0
>  endif
>  
> -ifeq ($(KBUILD_VERBOSE),1)
> +quiet = quiet_
> +Q = @
> +ifneq ($(findstring 1, $(KBUILD_VERBOSE)),)
>    quiet =
>    Q =
> -else
> -  quiet=quiet_
> -  Q = @
>  endif
>  
>  # If the user is running make -s (silent mode), suppress echoing of
> @@ -317,7 +315,7 @@ include scripts/Kbuild.include
>  include scripts/Makefile.compiler
>  
>  # Read KERNELRELEASE from include/config/kernel.release (if it exists)
> -KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
> +KERNELRELEASE = $(call read-file, include/config/kernel.release)
>  KERNELVERSION = $(VERSION)$(if $(PATCHLEVEL),.$(PATCHLEVEL)$(if $(SUBLEVEL),.$(SUBLEVEL)))$(EXTRAVERSION)
>  BUILDSYSTEM_VERSION =
>  export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION BUILDSYSTEM_VERSION
> @@ -1326,8 +1324,9 @@ help:
>  		printf "  %-24s - Build for %s\\n" $(b) $(subst _defconfig,,$(b));) \
>  		echo '')
>  
> -	@echo  '  make V=0|1 [targets] 0 => quiet build (default), 1 => verbose build'
> -	@echo  '  make V=2   [targets] 2 => give reason for rebuild of target'
> +	@echo  '  make V=n   [targets] 0: quiet build (default), 1: verbose build'
> +	@echo  '                       2: give reason for rebuild of target'
> +	@echo  '                       V=1 and V=2 can be combined with V=12'
>  	@echo  '  make O=dir [targets] Locate all output files in "dir", including .config'
>  	@echo  '  make C=1   [targets] Check all c source with $$CHECK (sparse by default)'
>  	@echo  '  make C=2   [targets] Force check of all c source with $$CHECK'
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index 72c6a3c5d7d1..8c311b997e24 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -10,13 +10,37 @@ empty   :=
>  space   := $(empty) $(empty)
>  space_escape := _-_SPACE_-_
>  pound := \#
> +define newline
> +
> +
> +endef
> +
> +###
> +# Comparison macros.
> +# Usage: $(call test-lt, $(CONFIG_LLD_VERSION), 150000)
> +#
> +# Use $(intcmp ...) if supported. (Make >= 4.4)
> +# Otherwise, fall back to the 'test' shell command.
> +ifeq ($(intcmp 1,0,,,y),y)
> +test-ge = $(intcmp $(strip $1)0, $(strip $2)0,,y,y)
> +test-gt = $(intcmp $(strip $1)0, $(strip $2)0,,,y)
> +else
> +test-ge = $(shell test $(strip $1)0 -ge $(strip $2)0 && echo y)
> +test-gt = $(shell test $(strip $1)0 -gt $(strip $2)0 && echo y)
> +endif
> +test-le = $(call test-ge, $2, $1)
> +test-lt = $(call test-gt, $2, $1)
>  
>  ###
>  # Name of target with a '.' as filename prefix. foo/bar.o => foo/.bar.o
>  dot-target = $(dir $@).$(notdir $@)
>  
>  ###
> -# The temporary file to save gcc -MD generated dependencies must not
> +# Name of target with a '.tmp_' as filename prefix. foo/bar.o => foo/.tmp_bar.o
> +tmp-target = $(dir $@).tmp_$(notdir $@)
> +
> +###
> +# The temporary file to save gcc -MMD generated dependencies must not
>  # contain a comma
>  depfile = $(subst $(comma),_,$(dot-target).d)
>  
> @@ -36,6 +60,20 @@ escsq = $(subst $(squote),'\$(squote)',$1)
>  # Quote a string to pass it to C files. foo => '"foo"'
>  stringify = $(squote)$(quote)$1$(quote)$(squote)
>  
> +###
> +# The path to Kbuild or Makefile. Kbuild has precedence over Makefile.
> +kbuild-file = $(or $(wildcard $(src)/Kbuild),$(src)/Makefile)
> +
> +###
> +# Read a file, replacing newlines with spaces
> +#
> +# Make 4.2 or later can read a file by using its builtin function.
> +ifneq ($(filter-out 4.0 4.1, $(MAKE_VERSION)),)
> +read-file = $(subst $(newline),$(space),$(file < $1))
> +else
> +read-file = $(shell cat $1 2>/dev/null)
> +endif
> +
>  ###
>  # Easy method for doing a status message
>         kecho := :
> @@ -56,16 +94,15 @@ kecho := $($(quiet)kecho)
>  # - If no file exist it is created
>  # - If the content differ the new file is used
>  # - If they are equal no change, and no timestamp update
> -# - stdin is piped in from the first prerequisite ($<) so one has
> -#   to specify a valid file as first prerequisite (often the kbuild file)
>  define filechk
> +	$(check-FORCE)
>  	$(Q)set -e;						\
>  	mkdir -p $(dir $@);					\
> -	trap "rm -f $(dot-target).tmp" EXIT;			\
> -	{ $(filechk_$(1)); } > $(dot-target).tmp;		\
> -	if [ ! -r $@ ] || ! cmp -s $@ $(dot-target).tmp; then	\
> +	trap "rm -f $(tmp-target)" EXIT;			\
> +	{ $(filechk_$(1)); } > $(tmp-target);			\
> +	if [ ! -r $@ ] || ! cmp -s $@ $(tmp-target); then	\
>  		$(kecho) '  UPD     $@';			\
> -		mv -f $(dot-target).tmp $@;			\
> +		mv -f $(tmp-target) $@;				\
>  	fi
>  endef
>  
> @@ -81,13 +118,39 @@ build := -f $(srctree)/scripts/Makefile.build obj
>  # $(Q)$(MAKE) $(clean)=dir
>  clean := -f $(srctree)/scripts/Makefile.clean obj
>  
> -# echo command.
> -# Short version is used, if $(quiet) equals `quiet_', otherwise full one.
> -echo-cmd = $(if $($(quiet)cmd_$(1)),\
> -	echo '  $(call escsq,$($(quiet)cmd_$(1)))$(echo-why)';)
> +# pring log
> +#
> +# If quiet is "silent_", print nothing and sink stdout
> +# If quiet is "quiet_", print short log
> +# If quiet is empty, print short log and whole command
> +silent_log_print = exec >/dev/null;
> + quiet_log_print = $(if $(quiet_cmd_$1), echo '  $(call escsq,$(quiet_cmd_$1)$(why))';)
> +       log_print = echo '$(pound) $(call escsq,$(or $(quiet_cmd_$1),cmd_$1 $@)$(why))'; \
> +                   echo '  $(call escsq,$(cmd_$1))';
>  
> -# printing commands
> -cmd = @set -e; $(echo-cmd) $(cmd_$(1))
> +# Delete the target on interruption
> +#
> +# GNU Make automatically deletes the target if it has already been changed by
> +# the interrupted recipe. So, you can safely stop the build by Ctrl-C (Make
> +# will delete incomplete targets), and resume it later.
> +#
> +# However, this does not work when the stderr is piped to another program, like
> +#  $ make >&2 | tee log
> +# Make dies with SIGPIPE before cleaning the targets.
> +#
> +# To address it, we clean the target in signal traps.
> +#
> +# Make deletes the target when it catches SIGHUP, SIGINT, SIGQUIT, SIGTERM.
> +# So, we cover them, and also SIGPIPE just in case.
> +#
> +# Of course, this is unneeded for phony targets.
> +delete-on-interrupt = \
> +	$(if $(filter-out $(PHONY), $@), \
> +		$(foreach sig, HUP INT QUIT TERM PIPE, \
> +			trap 'rm -f $@; trap - $(sig); kill -s $(sig) $$$$' $(sig);))
> +
> +# print and execute commands
> +cmd = @$(if $(cmd_$(1)),set -e; $($(quiet)log_print) $(delete-on-interrupt) $(cmd_$(1)),:)
>  
>  ###
>  # if_changed      - execute command if any prerequisite is newer than
> @@ -142,7 +205,7 @@ if_changed_dep = $(if $(if-changed-cond),$(cmd_and_fixdep),@:)
>  
>  cmd_and_fixdep =                                                             \
>  	$(cmd);                                                              \
> -	scripts/basic/fixdep $(depfile) $@ '$(make-cmd)' > $(dot-target).cmd;\
> +	$(objtree)/scripts/basic/fixdep $(depfile) $@ '$(make-cmd)' > $(dot-target).cmd;\
>  	rm -f $(depfile)
>  
>  # Usage: $(call if_changed_rule,foo)
> @@ -169,8 +232,8 @@ if_changed_rule = $(if $(if-changed-cond),$(rule_$(1)),@:)
>  # (5) No dir/.target.cmd file (used to store command line)
>  # (6) No dir/.target.cmd file and target not listed in $(targets)
>  #     This is a good hint that there is a bug in the kbuild file
> -ifeq ($(KBUILD_VERBOSE),2)
> -why =                                                                        \
> +ifneq ($(findstring 2, $(KBUILD_VERBOSE)),)
> +_why =                                                                        \
>      $(if $(filter $@, $(PHONY)),- due to target is PHONY,                    \
>          $(if $(wildcard $@),                                                 \
>              $(if $(newer-prereqs),- due to: $(newer-prereqs),                \
> @@ -187,11 +250,23 @@ why =                                                                        \
>           )                                                                   \
>       )
>  
> -echo-why = $(call escsq, $(strip $(why)))
> +why = $(space)$(strip $(_why))
>  endif
>  
> +###############################################################################
> +
>  # delete partially updated (i.e. corrupted) files on error
>  .DELETE_ON_ERROR:
>  
>  # do not delete intermediate files automatically
> +#
> +# .NOTINTERMEDIATE is more correct, but only available on newer Make versions.
> +# Make 4.4 introduced .NOTINTERMEDIATE, and it appears in .FEATURES, but the
> +# global .NOTINTERMEDIATE does not work. We can use it on Make > 4.4.
> +# Use .SECONDARY for older Make versions, but "newer-prereq" cannot detect
> +# deleted files.
> +ifneq ($(and $(filter notintermediate, $(.FEATURES)),$(filter-out 4.4,$(MAKE_VERSION))),)
> +.NOTINTERMEDIATE:
> +else
>  .SECONDARY:
> +endif
> diff --git a/scripts/tags.sh b/scripts/tags.sh
> index 4e18ae5282a6..6e0e0a7c2270 100755
> --- a/scripts/tags.sh
> +++ b/scripts/tags.sh
> @@ -8,7 +8,7 @@
>  # Uses the following environment variables:
>  # SUBARCH, SRCARCH, srctree
>  
> -if [ "$KBUILD_VERBOSE" = "1" ]; then
> +if [[ "$KBUILD_VERBOSE" =~ "1" ]]; then
>  	set -x
>  fi
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSr1-0001zv-5C
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:02:24 +0000
Date: Mon, 3 Dec 2012 11:02:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203100221.GO10369@pengutronix.de>
References: <1354511336-28449-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354511336-28449-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] Makefile: move ctags and cscope support to a shell script
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 03, 2012 at 09:08:56AM +0400, Antony Pavlov wrote:
> The scripts/tags.sh file copied from linux-3.6.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Making the toplevel Makefile smaller is a good move.

Applied, thanks

Sascha

> ---
>  Makefile        |  111 +----------------------
>  scripts/tags.sh |  265 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 268 insertions(+), 108 deletions(-)
>  create mode 100755 scripts/tags.sh
> 
> diff --git a/Makefile b/Makefile
> index 05b8be5..e3a23dd 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1166,115 +1166,10 @@ htmldocs: Doxyfile.version
>  
>  # Generate tags for editors
>  # ---------------------------------------------------------------------------
> +quiet_cmd_tags = GEN     $@
> +      cmd_tags = $(CONFIG_SHELL) $(srctree)/scripts/tags.sh $@
>  
> -#We want __srctree to totally vanish out when KBUILD_OUTPUT is not set
> -#(which is the most common case IMHO) to avoid unneeded clutter in the big tags file.
> -#Adding $(srctree) adds about 20M on i386 to the size of the output file!
> -
> -ifeq ($(src),$(obj))
> -__srctree =
> -else
> -__srctree = $(srctree)/
> -endif
> -
> -ifeq ($(ALLSOURCE_ARCHS),)
> -ifeq ($(ARCH),um)
> -ALLINCLUDE_ARCHS := $(ARCH) $(SUBARCH)
> -else
> -ALLINCLUDE_ARCHS := $(ARCH)
> -endif
> -else
> -#Allow user to specify only ALLSOURCE_PATHS on the command line, keeping existing behavour.
> -ALLINCLUDE_ARCHS := $(ALLSOURCE_ARCHS)
> -endif
> -
> -ALLSOURCE_ARCHS := $(ARCH)
> -
> -define find-sources
> -        ( find $(__srctree) $(RCS_FIND_IGNORE) \
> -	       \( -name include -o -name arch \) -prune -o \
> -	       -name $1 -print; \
> -	  for ARCH in $(ALLSOURCE_ARCHS) ; do \
> -	       find $(__srctree)arch/$${ARCH} $(RCS_FIND_IGNORE) \
> -	            -name $1 -print; \
> -	  done ; \
> -	  find $(__srctree)include $(RCS_FIND_IGNORE) \
> -	       \( -name config -o -name 'asm-*' \) -prune \
> -	       -o -name $1 -print; \
> -	  for ARCH in $(ALLINCLUDE_ARCHS) ; do \
> -	       test -e $(__srctree)include/asm-$${arch} && \
> -	         find $(__srctree)include/asm-$${arch} $(RCS_FIND_IGNORE) \
> -	           -name $1 -print; \
> -	      test -e $(__srctree)arch/$${arch}/include/asm && \
> -	        find $(__srctree)arch/$${arch}/include/asm $(RCS_FIND_IGNORE) \
> -	            -name $1 -print; \
> -	  done ; \
> -	  find $(__srctree)include/asm-generic $(RCS_FIND_IGNORE) \
> -	       -name $1 -print )
> -endef
> -
> -define all-sources
> -	$(call find-sources,'*.[chS]')
> -endef
> -define all-kconfigs
> -	$(call find-sources,'Kconfig*')
> -endef
> -define all-defconfigs
> -	$(call find-sources,'defconfig')
> -endef
> -
> -define xtags
> -	if $1 --version 2>&1 | grep -iq exuberant; then \
> -	    $(all-sources) | xargs $1 -a \
> -		-I __initdata,__exitdata,__acquires,__releases \
> -		-I EXPORT_SYMBOL,EXPORT_SYMBOL_GPL \
> -		--extra=+f --c-kinds=+px \
> -		--regex-asm='/ENTRY\(([^)]*)\).*/\1/'; \
> -	    $(all-kconfigs) | xargs $1 -a \
> -		--langdef=kconfig \
> -		--language-force=kconfig \
> -		--regex-kconfig='/^[[:blank:]]*config[[:blank:]]+([[:alnum:]_]+)/\1/'; \
> -	    $(all-defconfigs) | xargs -r $1 -a \
> -		--langdef=dotconfig \
> -		--language-force=dotconfig \
> -		--regex-dotconfig='/^#?[[:blank:]]*(CONFIG_[[:alnum:]_]+)/\1/'; \
> -	elif $1 --version 2>&1 | grep -iq emacs; then \
> -	    $(all-sources) | xargs $1 -a; \
> -	    $(all-kconfigs) | xargs $1 -a \
> -		--regex='/^[ \t]*config[ \t]+\([a-zA-Z0-9_]+\)/\1/'; \
> -	    $(all-defconfigs) | xargs -r $1 -a \
> -		--regex='/^#?[ \t]?\(CONFIG_[a-zA-Z0-9_]+\)/\1/'; \
> -	else \
> -	    $(all-sources) | xargs $1 -a; \
> -	fi
> -endef
> -
> -quiet_cmd_cscope-file = FILELST cscope.files
> -      cmd_cscope-file = (echo \-k; echo \-q; $(all-sources)) > cscope.files
> -
> -quiet_cmd_cscope = MAKE    cscope.out
> -      cmd_cscope = cscope -b
> -
> -cscope: FORCE
> -	$(call cmd,cscope-file)
> -	$(call cmd,cscope)
> -
> -quiet_cmd_TAGS = MAKE   $@
> -define cmd_TAGS
> -	rm -f $@; \
> -	$(call xtags,etags)
> -endef
> -
> -TAGS: FORCE
> -	$(call cmd,TAGS)
> -
> -quiet_cmd_tags = MAKE   $@
> -define cmd_tags
> -	rm -f $@; \
> -	$(call xtags,ctags)
> -endef
> -
> -tags: FORCE
> +tags TAGS cscope: FORCE
>  	$(call cmd,tags)
>  
>  
> diff --git a/scripts/tags.sh b/scripts/tags.sh
> new file mode 100755
> index 0000000..79fdafb
> --- /dev/null
> +++ b/scripts/tags.sh
> @@ -0,0 +1,265 @@
> +#!/bin/sh
> +# Generate tags or cscope files
> +# Usage tags.sh <mode>
> +#
> +# mode may be any of: tags, TAGS, cscope
> +#
> +# Uses the following environment variables:
> +# ARCH, SUBARCH, SRCARCH, srctree, src, obj
> +
> +if [ "$KBUILD_VERBOSE" = "1" ]; then
> +	set -x
> +fi
> +
> +# This is a duplicate of RCS_FIND_IGNORE without escaped '()'
> +ignore="( -name SCCS -o -name BitKeeper -o -name .svn -o \
> +          -name CVS  -o -name .pc       -o -name .hg  -o \
> +          -name .git )                                   \
> +          -prune -o"
> +
> +# Do not use full path if we do not use O=.. builds
> +# Use make O=. {tags|cscope}
> +# to force full paths for a non-O= build
> +if [ "${KBUILD_SRC}" = "" ]; then
> +	tree=
> +else
> +	tree=${srctree}/
> +fi
> +
> +# Find all available archs
> +find_all_archs()
> +{
> +	ALLSOURCE_ARCHS=""
> +	for arch in `ls ${tree}arch`; do
> +		ALLSOURCE_ARCHS="${ALLSOURCE_ARCHS} "${arch##\/}
> +	done
> +}
> +
> +# Detect if ALLSOURCE_ARCHS is set. If not, we assume SRCARCH
> +if [ "${ALLSOURCE_ARCHS}" = "" ]; then
> +	ALLSOURCE_ARCHS=${SRCARCH}
> +elif [ "${ALLSOURCE_ARCHS}" = "all" ]; then
> +	find_all_archs
> +fi
> +
> +# find sources in arch/$ARCH
> +find_arch_sources()
> +{
> +	for i in $archincludedir; do
> +		prune="$prune -wholename $i -prune -o"
> +	done
> +	find ${tree}arch/$1 $ignore $prune -name "$2" -print;
> +}
> +
> +# find sources in arch/$1/include
> +find_arch_include_sources()
> +{
> +	include=$(find ${tree}arch/$1/ -name include -type d);
> +	if [ -n "$include" ]; then
> +		archincludedir="$archincludedir $include"
> +		find $include $ignore -name "$2" -print;
> +	fi
> +}
> +
> +# find sources in include/
> +find_include_sources()
> +{
> +	find ${tree}include $ignore -name config -prune -o -name "$1" -print;
> +}
> +
> +# find sources in rest of tree
> +# we could benefit from a list of dirs to search in here
> +find_other_sources()
> +{
> +	find ${tree}* $ignore \
> +	     \( -name include -o -name arch -o -name '.tmp_*' \) -prune -o \
> +	       -name "$1" -print;
> +}
> +
> +find_sources()
> +{
> +	find_arch_sources $1 "$2"
> +}
> +
> +all_sources()
> +{
> +	find_arch_include_sources ${SRCARCH} '*.[chS]'
> +	if [ ! -z "$archinclude" ]; then
> +		find_arch_include_sources $archinclude '*.[chS]'
> +	fi
> +	find_include_sources '*.[chS]'
> +	for arch in $ALLSOURCE_ARCHS
> +	do
> +		find_sources $arch '*.[chS]'
> +	done
> +	find_other_sources '*.[chS]'
> +}
> +
> +all_kconfigs()
> +{
> +	for arch in $ALLSOURCE_ARCHS; do
> +		find_sources $arch 'Kconfig*'
> +	done
> +	find_other_sources 'Kconfig*'
> +}
> +
> +all_defconfigs()
> +{
> +	find_sources $ALLSOURCE_ARCHS "defconfig"
> +}
> +
> +docscope()
> +{
> +	(echo \-k; echo \-q; all_sources) > cscope.files
> +	cscope -b -f cscope.out
> +}
> +
> +dogtags()
> +{
> +	all_sources | gtags -i -f -
> +}
> +
> +exuberant()
> +{
> +	all_sources | xargs $1 -a                               \
> +	-I __initdata,__exitdata,__acquires,__releases          \
> +	-I __read_mostly,____cacheline_aligned                  \
> +	-I ____cacheline_aligned_in_smp                         \
> +	-I ____cacheline_internodealigned_in_smp                \
> +	-I EXPORT_SYMBOL,EXPORT_SYMBOL_GPL                      \
> +	-I DEFINE_TRACE,EXPORT_TRACEPOINT_SYMBOL,EXPORT_TRACEPOINT_SYMBOL_GPL \
> +	--extra=+f --c-kinds=+px                                \
> +	--regex-asm='/^(ENTRY|_GLOBAL)\(([^)]*)\).*/\2/'        \
> +	--regex-c='/^SYSCALL_DEFINE[[:digit:]]?\(([^,)]*).*/sys_\1/' \
> +	--regex-c++='/^TRACE_EVENT\(([^,)]*).*/trace_\1/'		\
> +	--regex-c++='/^DEFINE_EVENT\([^,)]*, *([^,)]*).*/trace_\1/'	\
> +	--regex-c++='/PAGEFLAG\(([^,)]*).*/Page\1/'			\
> +	--regex-c++='/PAGEFLAG\(([^,)]*).*/SetPage\1/'			\
> +	--regex-c++='/PAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> +	--regex-c++='/TESTSETFLAG\(([^,)]*).*/TestSetPage\1/'		\
> +	--regex-c++='/TESTPAGEFLAG\(([^,)]*).*/Page\1/'			\
> +	--regex-c++='/SETPAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> +	--regex-c++='/__SETPAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> +	--regex-c++='/TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> +	--regex-c++='/__TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> +	--regex-c++='/CLEARPAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> +	--regex-c++='/__CLEARPAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> +	--regex-c++='/__PAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> +	--regex-c++='/__PAGEFLAG\(([^,)]*).*/__ClearPage\1/'		\
> +	--regex-c++='/PAGEFLAG_FALSE\(([^,)]*).*/Page\1/'		\
> +	--regex-c++='/TESTSCFLAG\(([^,)]*).*/TestSetPage\1/'		\
> +	--regex-c++='/TESTSCFLAG\(([^,)]*).*/TestClearPage\1/'		\
> +	--regex-c++='/SETPAGEFLAG_NOOP\(([^,)]*).*/SetPage\1/'		\
> +	--regex-c++='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
> +	--regex-c++='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/'	\
> +	--regex-c++='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
> +	--regex-c++='/__TESTCLEARFLAG_FALSE\(([^,)]*).*/__TestClearPage\1/' \
> +	--regex-c++='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
> +	--regex-c='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
> +	--regex-c='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
> +
> +	all_kconfigs | xargs $1 -a                              \
> +	--langdef=kconfig --language-force=kconfig              \
> +	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/\2/'
> +
> +	all_kconfigs | xargs $1 -a                              \
> +	--langdef=kconfig --language-force=kconfig              \
> +	--regex-kconfig='/^[[:blank:]]*(menu|)config[[:blank:]]+([[:alnum:]_]+)/CONFIG_\2/'
> +
> +	all_defconfigs | xargs -r $1 -a                         \
> +	--langdef=dotconfig --language-force=dotconfig          \
> +	--regex-dotconfig='/^#?[[:blank:]]*(CONFIG_[[:alnum:]_]+)/\1/'
> +}
> +
> +emacs()
> +{
> +	all_sources | xargs $1 -a                               \
> +	--regex='/^(ENTRY|_GLOBAL)(\([^)]*\)).*/\2/'            \
> +	--regex='/^SYSCALL_DEFINE[0-9]?(\([^,)]*\).*/sys_\1/'   \
> +	--regex='/^TRACE_EVENT(\([^,)]*\).*/trace_\1/'		\
> +	--regex='/^DEFINE_EVENT([^,)]*, *\([^,)]*\).*/trace_\1/' \
> +	--regex='/PAGEFLAG\(([^,)]*).*/Page\1/'			\
> +	--regex='/PAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> +	--regex='/PAGEFLAG\(([^,)]*).*/ClearPage\1/'		\
> +	--regex='/TESTSETFLAG\(([^,)]*).*/TestSetPage\1/'	\
> +	--regex='/TESTPAGEFLAG\(([^,)]*).*/Page\1/'		\
> +	--regex='/SETPAGEFLAG\(([^,)]*).*/SetPage\1/'		\
> +	--regex='/__SETPAGEFLAG\(([^,)]*).*/__SetPage\1/'	\
> +	--regex='/TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> +	--regex='/__TESTCLEARFLAG\(([^,)]*).*/TestClearPage\1/'	\
> +	--regex='/CLEARPAGEFLAG\(([^,)]*).*/ClearPage\1/'	\
> +	--regex='/__CLEARPAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> +	--regex='/__PAGEFLAG\(([^,)]*).*/__SetPage\1/'		\
> +	--regex='/__PAGEFLAG\(([^,)]*).*/__ClearPage\1/'	\
> +	--regex='/PAGEFLAG_FALSE\(([^,)]*).*/Page\1/'		\
> +	--regex='/TESTSCFLAG\(([^,)]*).*/TestSetPage\1/'	\
> +	--regex='/TESTSCFLAG\(([^,)]*).*/TestClearPage\1/'	\
> +	--regex='/SETPAGEFLAG_NOOP\(([^,)]*).*/SetPage\1/'	\
> +	--regex='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
> +	--regex='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/' \
> +	--regex='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
> +	--regex='/__TESTCLEARFLAG_FALSE\(([^,)]*).*/__TestClearPage\1/' \
> +	--regex='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
> +	--regex='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
> +	--regex='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
> +
> +	all_kconfigs | xargs $1 -a                              \
> +	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/\3/'
> +
> +	all_kconfigs | xargs $1 -a                              \
> +	--regex='/^[ \t]*\(\(menu\)*config\)[ \t]+\([a-zA-Z0-9_]+\)/CONFIG_\3/'
> +
> +	all_defconfigs | xargs -r $1 -a                         \
> +	--regex='/^#?[ \t]?\(CONFIG_[a-zA-Z0-9_]+\)/\1/'
> +}
> +
> +xtags()
> +{
> +	if $1 --version 2>&1 | grep -iq exuberant; then
> +		exuberant $1
> +	elif $1 --version 2>&1 | grep -iq emacs; then
> +		emacs $1
> +	else
> +		all_sources | xargs $1 -a
> +        fi
> +}
> +
> +
> +# Support um (which uses SUBARCH)
> +if [ "${ARCH}" = "um" ]; then
> +	if [ "$SUBARCH" = "i386" ]; then
> +		archinclude=x86
> +	elif [ "$SUBARCH" = "x86_64" ]; then
> +		archinclude=x86
> +	else
> +		archinclude=${SUBARCH}
> +	fi
> +fi
> +
> +remove_structs=
> +case "$1" in
> +	"cscope")
> +		docscope
> +		;;
> +
> +	"gtags")
> +		dogtags
> +		;;
> +
> +	"tags")
> +		rm -f tags
> +		xtags ctags
> +		remove_structs=y
> +		;;
> +
> +	"TAGS")
> +		rm -f TAGS
> +		xtags etags
> +		remove_structs=y
> +		;;
> +esac
> +
> +# Remove structure forward declarations.
> +if [ -n "$remove_structs" ]; then
> +    LANG=C sed -i -e '/^\([a-zA-Z_][a-zA-Z0-9_]*\)\t.*\t\/\^struct \1;.*\$\/;"\tx$/d' $1
> +fi
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

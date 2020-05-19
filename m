Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jax0p-000235-Nn
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:50:10 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id 04J7neLa004846
 for <barebox@lists.infradead.org>; Tue, 19 May 2020 16:49:41 +0900
Received: by mail-vs1-f44.google.com with SMTP id e10so7220005vsp.12
 for <barebox@lists.infradead.org>; Tue, 19 May 2020 00:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200519071353.395493-1-masahiroy@kernel.org>
 <20200519071353.395493-6-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-6-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:49:04 +0900
Message-ID: <CAK7LNARk8aNg3NigHxytmHcEAOdk76kKyu5dWc+pU3LO+=+n8Q@mail.gmail.com>
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
Subject: Re: [PATCH 6/8] kbuild: unify barebox and pbl build commands
To: Barebox List <barebox@lists.infradead.org>

Just some typos.


On Tue, May 19, 2020 at 4:14 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The current Linux uses the unified build command for built-in objects
> and module objects. This is possible because part-of-module is set to
> y when the target is being built for a module. If so, quiet_modtag is
> set to [M], and modkern_cflags is set to KBUILD_CFLAGS_MODULE instead
> of KBUILD_CFLAGS_KERNEL.
>
> Currently, barebox uses a separate build command for pbl, but the
> difference between cmd_cc_o_c and cmd_pbl_cc_o_c is just
> "-D__PBL__ $(PBL_CPPFLAGS)".
>
> By using the same approach as Linux, it can be unified.

it can be unified  -> they can be unified


>
> Set pbl-of-pbl flag to y when the target is being built for pbl.


pbl-of-pbl  ->  part-of-pbl




> Merge cmd_as_o_S and cmd_link_o_target as well.
>
> This also changes the shortlog style as follows:
>
>   PBLCC  ->  CC [P]
>   PBLAS  ->  AS [P]
>   PBLLD  ->  LD [P]
>
> This is more consistent with the policy in the Linux build system.
>
> In Linux, a capital letter enclosed square blackets indicates which
> target the object is being built for.
>
>   CC      object built for built-in
>   CC [M]  object built for modules
>   CC [U]  object built for userspace (proposed for Linux 5.8-rc1)
>
> The idea behind this is we use the same compiler $(CC) for them.
> Only the difference is the compiler flags. On the other hand, host
> programs are compiled by a different tool, $(HOSTCC), hence the
> shortlog is 'HOSTCC'.
>
> Barebox supports module builds (it seems), but the [P] notation does
> not conflict with [M] because pbl has a limited memory footprint.
> We never expect pbl can support the module feature.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  scripts/Makefile.build | 35 ++++++++---------------------------
>  scripts/Makefile.lib   |  9 ++++++---
>  2 files changed, 14 insertions(+), 30 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index f575a07fd..31341d23c 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -117,25 +117,18 @@ cmd_cc_i_c       = $(CPP) $(c_flags)   -o $@ $<
>  # (See cmd_cc_o_c + relevant part of rule_cc_o_c)
>
>  quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
> -      cmd_cc_o_c = $(CC) $(c_flags) -c -o $@ $<
> -quiet_cmd_pbl_cc_o_c = PBLCC   $@
> -      cmd_pbl_cc_o_c = $(CC) -D__PBL__ $(c_flags) $(PBL_CPPFLAGS) -c -o $@ $<
> +      cmd_cc_o_c = $(CC) $(c_flags) $(if $(part-of-pbl),-D__PBL__ $(PBL_CPPFLAGS)) -c -o $@ $<
>
>  define rule_cc_o_c
>         $(call cmd,checksrc)
>         $(call cmd_and_fixdep,cc_o_c)
>  endef
>
> -define rule_pbl_cc_o_c
> -       $(call cmd,checksrc)
> -       $(call cmd_and_fixdep,pbl_cc_o_c)
> -endef
> -
>  # Built-in and composite module parts
>
>  %.pbl.o: %.c FORCE
>         $(call cmd,force_checksrc)
> -       $(call if_changed_rule,pbl_cc_o_c)
> +       $(call if_changed_rule,cc_o_c)
>
>  %.o: %.c FORCE
>         $(call cmd,force_checksrc)
> @@ -168,11 +161,8 @@ cmd_as_s_S       = $(CPP) $(a_flags)   -o $@ $<
>  quiet_cmd_as_o_S = AS $(quiet_modtag)  $@
>  cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
>
> -quiet_cmd_pbl_as_o_S = PBLAS   $@
> -cmd_pbl_as_o_S       = $(CC) -D__PBL__ $(a_flags) $(PBL_CPPFLAGS) -c -o $@ $<
> -
>  %.pbl.o: %.S FORCE
> -       $(call if_changed_dep,pbl_as_o_S)
> +       $(call if_changed_dep,as_o_S)
>
>  %.o: %.S FORCE
>         $(call if_changed_dep,as_o_S)
> @@ -198,31 +188,22 @@ $(sort $(subdir-obj-y)): $(subdir-ym) ;
>  #
>  # Rule to compile a set of .o files into one .o file
>  #
> -ifdef builtin-target
> -quiet_cmd_link_o_target = LD      $@
> +
>  # If the list of objects to link is empty, just create an empty built-in.o
> -cmd_link_o_target = $(if $(strip $(obj-y)),\
> -                     $(LD) $(ld_flags) -r -o $@ $(filter $(obj-y), $^),\
> +quiet_cmd_link_o_target = LD $(quiet_modtag)  $@
> +cmd_link_o_target = $(if $(strip $(real-prereqs)),\
> +                     $(LD) $(ld_flags) -r -o $@ $(real-prereqs),\
>                       rm -f $@; $(AR) rcs $@)
>
>  $(builtin-target): $(obj-y) FORCE
>         $(call if_changed,link_o_target)
>
>  targets += $(builtin-target)
> -endif # builtin-target
> -
> -ifdef pbl-target
> -quiet_cmd_pbl_link_o_target = PBLLD   $@
> -# If the list of objects to link is empty, just create an empty built-in-pbl.o
> -cmd_pbl_link_o_target = $(if $(strip $(pbl-y)),\
> -                     $(LD) $(ld_flags) -r -o $@ $(filter $(pbl-y), $^),\
> -                     rm -f $@; $(AR) rcs $@)
>
>  $(pbl-target): $(pbl-y) FORCE
> -       $(call if_changed,pbl_link_o_target)
> +       $(call if_changed,link_o_target)
>
>  targets += $(pbl-target)
> -endif # pbl-target
>
>  #
>  # Rule to compile a set of .o files into one .a file
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index a6cba747f..55d251844 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -154,7 +154,10 @@ __cpp_flags     =                          $(call flags,_cpp_flags)
>  endif
>
>  part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
> -quiet_modtag = $(if $(part-of-module),[M],   )
> +part-of-pbl    = $(if $(filter $(basename $@).o, $(pbl-y) $(pbl-target)),y)
> +quiet_modtag = $(if $(part-of-pbl),[P],$(if $(part-of-module),[M],   ))
> +
> +pbl_cppflags = $(if $(part-of-pbl), -D__PBL__ $(PBL_CPPFLAGS))
>
>  modkern_cflags =                                          \
>         $(if $(part-of-module),                           \
> @@ -166,11 +169,11 @@ modkern_aflags = $(if $(part-of-module),                          \
>                         $(KBUILD_AFLAGS_KERNEL) $(AFLAGS_KERNEL))
>
>  c_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
> -                $(__c_flags) $(modkern_cflags) \
> +                $(__c_flags) $(modkern_cflags) $(pbl_cppflags) \
>                  -D"KBUILD_STR(s)=\#s" $(basename_flags) $(modname_flags)
>
>  a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(KBUILD_CPPFLAGS) \
> -                $(__a_flags) $(modkern_aflags)
> +                $(__a_flags) $(modkern_aflags) $(pbl_cppflags)
>
>  cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
>
> --
> 2.25.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

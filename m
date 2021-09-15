Delivery-date: Wed, 15 Sep 2021 13:44:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQTKk-0005Is-2R
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 13:44:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQTKi-0001XW-Uo
	for lore@pengutronix.de; Wed, 15 Sep 2021 13:44:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=307hxwggi+t7mJby0qBgR1bgIVdwDemeDCg2m7AA42w=; b=zYd52biDbYXK+pfYgyU8JcJ8FT
	0GDeIZM+WYuf7CDmM0s4jknvFYRqZwDeyp8AUCflEIBH1ixt7/pYQZbtY9Y+X8OPP9EWuWxrpL5N5
	/XRAAvXQdGt2kb0IqN6+pcV3j7TuN5QZ0W+U1FM0Mo9S2nV1F8loUpt2MLow0tO/BrxbMzCyAoQc6
	uA1kXB8JDsRlIQf/cyg7TBgOw9z1cPsjW4EHIqzk5nkeaa2+mHc1dXW17SFrZO8At30BL6cPh4HV2
	PY4VB65K45zmppttHcsp4iAl2MS6xRfThC7KVhbwnmgyqOH38Z/Qvmj2by9Amrli94EElypTdU7lX
	rxOIOosg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQTJ9-008uYn-Io; Wed, 15 Sep 2021 11:42:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQTJ4-008uYT-F6
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 11:42:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQTJ2-0001Un-9c; Wed, 15 Sep 2021 13:42:24 +0200
To: Trent Piepho <tpiepho@gmail.com>, barebox@lists.infradead.org
Cc: Trent Piepho <trent.piepho@igorinstitute.com>
References: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b70fcd46-c1ef-9aa8-9810-cb9af6bf0966@pengutronix.de>
Date: Wed, 15 Sep 2021 13:42:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210908185946.638301-1-trent.piepho@igorinstitute.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_044226_569642_232A3FD0 
X-CRM114-Status: GOOD (  39.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: Allow adding device tree fragments via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Trent,

On 08.09.21 20:59, Trent Piepho wrote:
> This introduces config variables that allow adding additional fragments
> to the Barbox device tree(s).
> 
> Example uses are adjusting the flash partition layout, adding barebox
> state varibles, or adding an I2C device.  These can be now be done with
> build configuration only, without needing to patch the existing dts
> files in the Barebox source.
> 
> The advantage is greater when an external build system, such as Yocto or
> Buildroot, is being used to build Barebox.  The build system can drop in
> a dts fragment to partition flash and build from unaltered Barebox
> source.  This avoids the need for cumbersome maintenance of patch files
> to modify Barebox's source for each flash partition layout.> 
> Two variables are added, which function identically.  The idea is that
> one can be used in Barebox in-tree or out-of-tree defconfig files and
> the other injected by an external build system.  Injecting the latter
> variable will not clobber the value of the former.

I don't see the utility of using this new mechanism for in-tree boards.
I suggest dropping EXTRA_DTS_FRAGMENTS.
 
> Preprocessing the dts file gains another layer, where a generated dts
> source consisting of an include directive for the original dts source is
> followed by more includes for each fragment.  This is piped to the
> existing preprocessor call on stdin to avoid another temporary file.
> cpp/dtc will correctly identify errors in the source files they occur
> in.  The -MT option is used so the cpp auto-dependencies reference the
> original dts source and not the generated code passed on stdin.

If you go this route wouldn't you want to apply device tree overlays?
Blindly applying fragments doesn't mesh well with multi-image.
I assume with overlays, you could skip an overlay if it has a differing
compatible. If we don't use overlays, you should at least define
a symbol with the name of the device tree file, so fragments have
a chance of being multi-image compatible via preprocessor logic.

Cheers,
Ahmad

> 
> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
>  common/Kconfig       | 20 ++++++++++++++++++++
>  scripts/Makefile.lib |  7 ++++++-
>  2 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index a9feae2ae..1b95ded87 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1091,6 +1091,26 @@ config SYSTEMD_OF_WATCHDOG
>  	  in the kernel device tree. If the kernel is booted without a device
>  	  tree or with one that lacks aliases, nothing is added.
>  
> +config EXTRA_DTS_FRAGMENTS
> +	string "additional dts file fragments"
> +	depends on OFTREE
> +	help
> +	  List of dts fragment files that will be appended to Barebox's device
> +	  tree(s) source when building the dtb file(s).  If multiple files are
> +	  listed, they will be appended in order.  Relative filenames will use
> +	  the dtc include search path.
> +
> +config EXTERNAL_DTS_FRAGMENTS
> +	string "external dts file fragments"
> +	depends on OFTREE
> +	help
> +	  This is like EXTRA_DTS_FRAGMENTS, but it's intended that it not be put
> +	  into Barebox defconfig files and instead used by an external build
> +	  system, like Yocto or buildroot, to add dts fragments from outside the
> +	  Barebox source tree into the Barebox build.  The build system can
> +	  override this variable without modifying anything set by the Barebox
> +	  defconfig.
> +
>  menu "OP-TEE loading"
>  
>  config OPTEE_SIZE
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 80d76b177..093dd3cdd 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -201,6 +201,7 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
>  ld_flags       = $(KBUILD_LDFLAGS) $(ldflags-y)
>  
>  dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
> +		 -Wp,-MT,$(basename $(notdir $@)).o                      \
>  		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
>  		 -I$(srctree)/dts/include                                \
>  		 -I$(srctree)/include                                    \
> @@ -335,8 +336,12 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
>  $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
>  	$(call if_changed,dt_S_dtb)
>  
> +dts-frags = $(subst $(quote),,$(CONFIG_EXTRA_DTS_FRAGMENTS) $(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
> -cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> +# For compatibility between make 4.2 and 4.3
> +H := \#
> +cmd_dtc = /bin/echo -e $(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
> +	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
>  		-i $(srctree)/dts/src/$(SRCARCH) \
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


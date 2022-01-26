Delivery-date: Wed, 26 Jan 2022 13:31:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nChSa-00DoXF-Cj
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 13:31:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nChSY-0003eN-N5
	for lore@pengutronix.de; Wed, 26 Jan 2022 13:31:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJ4UslKVnAXKa/dmiY0qDVzlnfc5C+Ogq5ezZ6af0fU=; b=n2B5mCuOSH/J4x
	SqnP6QmrJnanf9P3/8SIocBGKHKPIqf3ZQSxPNIHezArs5uM2d2mGlh14g0qh4lVaPZgjzkQz9A2S
	ioajCNbG+2jJNtNJADX25XnUABY2z5BRINCmMDIUVHXMfEQhNaIsHStERoZRjllV7Ln2Za7k/hDv/
	nomCl1z2g3O/qRYi4dg6w1bmiVNhuvpnXBXSNoFpBBUdXgy7kLLKe3GBBUQhSb9TaKVMDZvYtns+E
	trOPyn+YQB7lK4selQehJMq2lSSmSyG61WwwrWYmvcJiDVz/+mm20kHcrqd5yz/Z/btq8MEQ7RNHl
	n/BBl+yayNo8+R1AU10A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nChQz-00Bi1Y-4j; Wed, 26 Jan 2022 12:29:57 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nChQs-00BhzU-0D
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 12:29:51 +0000
Received: by mail-lj1-x232.google.com with SMTP id q22so12443748ljh.7
 for <barebox@lists.infradead.org>; Wed, 26 Jan 2022 04:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YRCtx2mxa1H2zqL8ModsM7M3+U+zirfRd5H4blswE/4=;
 b=XzWioAV6I/wQ25h9pVBKLvD4Lxy1iVnzB5CW/KjpEzPwAUfSuixBjkw9dAXUQowNAc
 jNC9i856jH52fc0V2CPA5kPJDjcDrH0gBk9R3ifl9nXDnKGHPYOnup6moLbRNv0s+0v9
 iqRQ/B3fVgIFrbmM5VnG1wCN8r9ZfVoYg4KMMNIpKopecZBQoOB+x4guiAf4GoAI8qAk
 /k+c1qp464ekWyfrSa5mSZHB5mrp3xsXukcULj4E0yXw7KjFbHOSGqvE33E2bARPYr+j
 8nfOM4acY9orsucK3+fGSzGZnzT2pwxtx8CW6gh/KKxUYi83Q8CG2dryUeUeb77zs6WH
 v9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YRCtx2mxa1H2zqL8ModsM7M3+U+zirfRd5H4blswE/4=;
 b=oONAva45D3kvFAIYwfLAbZ+F37N3I+lU2X1wF/VXQ10SQpz4mRKLPncb+f2A3z3ut+
 CBbqCj5+FvJ5dn3j5y0DNU3aOJ7kKY8oa9vef3xf2q/ujS1zZNA18uIfGnRo+bh2VnUU
 GI/iYHCJtxrHAMRjNcV3pgB5incMO8FITrZo610U/l69sUXRjpYkrkCholwKoi8zRD0u
 VDVJnb9E4Yi3JDUTN5BdGZAC38B2BJ99VFeg5dmNnGz46FSzX0Nmk9zLQxcgAvdVrdah
 G02YD6hDtyTtSdxMMqYRzhaLLO0+9VXjG+JSvznhzz68uLJvDYS8s6xSnM2gYqdhWlyD
 ObGw==
X-Gm-Message-State: AOAM532Sb34uyUNFr2DvFKWQgsSogN+58j4v83DH2oXcyLpBc8i6Uhbf
 9KIpfszT8fNmiR1wG119K9M=
X-Google-Smtp-Source: ABdhPJxsOfjPo690+tPYmEqmMUD419Tov81ADSdCMSJEM/DEoqGaTjMhdS3h8XGQJQAl7omBFYcZyQ==
X-Received: by 2002:a2e:bc04:: with SMTP id b4mr8929701ljf.404.1643200188223; 
 Wed, 26 Jan 2022 04:29:48 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id d2sm389141lfn.156.2022.01.26.04.29.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jan 2022 04:29:47 -0800 (PST)
Date: Wed, 26 Jan 2022 15:29:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>, Ahmad
 Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20220126152945.bb1104efad47e5a22be66fb9@gmail.com>
In-Reply-To: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
References: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_042950_105754_692E2B9F 
X-CRM114-Status: GOOD (  36.73  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] kbuild: dtc: Allow adding device tree fragments
 via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 22 Sep 2021 11:13:36 -0700
Trent Piepho <trent.piepho@igorinstitute.com> wrote:

Hi!

This patch was applied to barebox source tree as =

  =

  2ae7ac7ab2 kbuild: dtc: Allow adding device tree fragments via config

With this patch I see build error if device tree file name starts with digi=
t (0-9),
e.g.:

  barebox$ git checkout v2022.01.0

  barebox$ make mrproper

  barebox$ export ARCH=3Darm
  barebox$ export CROSS_COMPILE=3Darm-none-eabi-
  barebox$ sed -i "s/virt2real.dtb/2virt2real.dtb/" arch/arm/dts/Makefile
  barebox$ mv arch/arm/dts/virt2real.dts arch/arm/dts/2virt2real.dts

  barebox$ make virt2real_defconfig
  ...
  barebox$ make -s
  <stdin>:1:9: error: macro names must be identifiers                      =
                        make[1]:  [scripts/Makefile.lib:352: arch/arm/dts/2=
virt2real.dtb] Error 1
  make:  [Makefile:952: arch/arm/dts] Error 2




> This introduces a config variable that allows adding additional fragments
> to the Barebox device tree(s).
> =

> Example uses are adjusting the flash partition layout, adding barebox
> state variables, or adding an I2C device.  These can be now be done with
> build configuration only, without needing to patch the existing dts
> files in the Barebox source.
> =

> The advantage is greater when an external build system, such as Yocto or
> Buildroot, is being used to build Barebox.  The build system can drop in
> a dts fragment to partition flash and build from unaltered Barebox
> source.  This avoids the need for cumbersome maintenance of patch files
> to modify Barebox's source for each flash partition layout.
> =

> Preprocessing the dts file gains another layer, where a generated dts
> source consisting of an include directive for the original dts source is
> followed by more includes for each fragment.  This is piped to the
> existing preprocessor call on stdin to avoid another temporary file.
> cpp/dtc will correctly identify errors in the source files they occur
> in.  The -MT option is used so the cpp auto-dependencies reference the
> original dts source and not the generated code passed on stdin.
> =

> A preprocessor macro named after the base dts file, e.g. foo-bar.dts
> will define foo_bar_dts, will be defined so that the fragments can
> possibly operate differently based on which image's dts is being built.
> =

> Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> ---
> Changes from v1:
>   - Remove 2nd config variable for in-tree fragments.
>   - Add macro to preproccessed dts
> =

>  common/Kconfig       | 18 ++++++++++++++++++
>  scripts/Makefile.lib |  8 +++++++-
>  2 files changed, 25 insertions(+), 1 deletion(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index a9feae2ae..6fdc14148 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1091,6 +1091,24 @@ config SYSTEMD_OF_WATCHDOG
>  	  in the kernel device tree. If the kernel is booted without a device
>  	  tree or with one that lacks aliases, nothing is added.
>  =

> +config EXTERNAL_DTS_FRAGMENTS
> +	string "external dts file fragments"
> +	depends on OFTREE
> +	help
> +	  List of dts fragment files that will be appended to Barebox's device
> +	  tree(s) source when building the dtb file(s).  If multiple files are
> +	  listed, they will be appended in order.  Relative filenames will use
> +	  the dtc include search path.
> +
> +	  A preprocessor macro based on the name of the main dts will be
> +	  defined, which allows the dts fragments to based on which image of a
> +	  multi image build they are being used in.
> +
> +	  It not intended that this be put into into Barebox defconfig files.
> +	  Instead, it's an external build system, like Yocto or buildroot, to
> +	  add dts fragments from outside the Barebox source tree into the
> +	  Barebox build.
> +
>  menu "OP-TEE loading"
>  =

>  config OPTEE_SIZE
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 80d76b177..4496f1a70 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -201,6 +201,7 @@ cpp_flags      =3D -Wp,-MD,$(depfile) $(NOSTDINC_FLAG=
S) $(__cpp_flags)
>  ld_flags       =3D $(KBUILD_LDFLAGS) $(ldflags-y)
>  =

>  dtc_cpp_flags  =3D -Wp,-MD,$(depfile).pre -nostdinc                     =
   \
> +		 -Wp,-MT,$(basename $(notdir $@)).o                      \
>  		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
>  		 -I$(srctree)/dts/include                                \
>  		 -I$(srctree)/include                                    \
> @@ -335,8 +336,13 @@ cmd_dt_S_dtb =3D $(srctree)/scripts/gen-dtb-s $(subs=
t -,_,$(*F)) $< $(CONFIG_IMD)
>  $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
>  	$(call if_changed,dt_S_dtb)
>  =

> +dts-frags =3D $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc =3D DTC     $@
> -cmd_dtc =3D $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) =
$< ; \
> +# For compatibility between make 4.2 and 4.3
> +H :=3D \#
> +cmd_dtc =3D /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreac=
h f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
> +	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
>  		-i $(srctree)/dts/src/$(SRCARCH) \
> -- =

> 2.31.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Wed, 26 Jan 2022 23:12:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCqWb-00EEy5-Iu
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 23:12:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCqWZ-0000Ek-Gz
	for lore@pengutronix.de; Wed, 26 Jan 2022 23:12:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgbg+BzdOL2fW3cAcYYehlGhfU2O3yBQlpqEmvnhDK4=; b=gIPUMs5WHJFSQw
	XHgRwalNt2GSdTHQl9HxMiJa+MtQc09XvkOFnS49b4jUW0c+xrKx44Lrrpob/XsqsS6JCt173axpS
	mZ6I/wiSGfn97yHBWM4ijxZr1OsccEJ83vm0ikM8GolYnqsrUrAXNNwNGOv9ndMcDrvSZeP9kp5Ev
	fto330+BbuisrRn3Ac/j2HZc3jL3TcP5vhlRnKsvHP+hTCIIbZ3PFkhKyEJFLhYIMUAkGhZ8hoLGi
	gcisXrH7kb7rrpXALR0akkvsScMYXghpPFljLQ6w2SGeLMwkSchZCDWgXmacUuoebMDBDMByoziQr
	sMTsNOvCEA1MkJWp5GoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCqUo-00DdbA-8B; Wed, 26 Jan 2022 22:10:30 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCqUj-00Ddap-9A
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 22:10:27 +0000
Received: by mail-lj1-x232.google.com with SMTP id t9so1503117lji.12
 for <barebox@lists.infradead.org>; Wed, 26 Jan 2022 14:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pWe+d79t+HRxmD19ARRWrqnacrz7sIAl/Ie0fBReHP0=;
 b=BeWr7Uyvu7kU3PKKW/NpYWsBgZpZGbAO7YIdYJeiLh6Miy9TzA3vxvZ6vFd+nXgEgF
 lFtDvy57NOV933OBwG9vfuOzlxacmlCkKcgEOUsSrdPmYMbTfw18lXtGbsE5vyZ6B8fP
 95bJpLiIGlyAk4GTzriMwzm2CrtwEgG39mJ0ByqMr12quOmlgYRx+57KRzxQ4K+gwtGW
 /+AtaM8cNmXga8omGa+NK7t7YfeV01ZzSR2Z1nBASXX90vhR1ehbjLGhllF7BOcUqXwH
 z9W0cXAEcWZFUrvqDZzmhAHlTmJ09FXh3cw+MJDnYKqLvuZjcTylTUmLlXVVwDOtL9Ff
 z9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pWe+d79t+HRxmD19ARRWrqnacrz7sIAl/Ie0fBReHP0=;
 b=A3Sq/wrDP0aJgkE7YDyzQO3rQxtJrj7oaat/JiJUv0g36rvsxgUDPOyrJDIx9TQ+7V
 AA/hOQzeX+gkSqFqVrymlM/kSZwlckSrx0y89xd/XB6949SEMKkqp8ojALuQk9Wioblv
 PeTP+gkyDyudVe95XZxj/bhop015O0YvgLPE9vjJs+ydHAAignWdJoKcmzbKqz20fpOA
 CEEBR5xqcH38diufqSdVuf0siSj5Oh1IM+3Lg/hbHw6MXfANlJerbWhwq5CpiitXnFx5
 PTk62Q18cMVtwoHX/RuVtKhjrEEUQ4RStxxZfabjPA7thytI1+xLlE31cTJfuwF1WgkT
 wPqQ==
X-Gm-Message-State: AOAM5314ftafVUReauOr5r0ONCApI7WBUb56QnKjvRxjVRHBHIdmYEtF
 6s2070lfbWk7/DxdqkhnUd+dKD7GxkFBND7em0Hivg==
X-Google-Smtp-Source: ABdhPJxZIluD1aKn4fZFPQ3O0srGe9UWR4OrpHsiM13oO7B0lkcC6VXOGHTNPolufzz5RnfwTqsMt2Eul+1GhT5BaSU=
X-Received: by 2002:a2e:9916:: with SMTP id v22mr792398lji.232.1643235021335; 
 Wed, 26 Jan 2022 14:10:21 -0800 (PST)
MIME-Version: 1.0
References: <20210922181336.1350460-1-trent.piepho@igorinstitute.com>
 <20220126152945.bb1104efad47e5a22be66fb9@gmail.com>
In-Reply-To: <20220126152945.bb1104efad47e5a22be66fb9@gmail.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 26 Jan 2022 14:10:10 -0800
Message-ID: <CAMHeXxOV7bunucQWHCaZBVm8GD-+qpqp9JfShuP-aE6fqz=PFA@mail.gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_141025_560958_4099DFF6 
X-CRM114-Status: GOOD (  42.92  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/1] kbuild: dtc: Allow adding device tree fragments
 via config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are no defconfigs that begin with a digit, but I guess there are
dts names that do.

Should probably just change the macro name from FOO_BOARD_DTS to DTS_FOO_BOARD.


On Wed, Jan 26, 2022 at 4:29 AM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Wed, 22 Sep 2021 11:13:36 -0700
> Trent Piepho <trent.piepho@igorinstitute.com> wrote:
>
> Hi!
>
> This patch was applied to barebox source tree as
>
>   2ae7ac7ab2 kbuild: dtc: Allow adding device tree fragments via config
>
> With this patch I see build error if device tree file name starts with digit (0-9),
> e.g.:
>
>   barebox$ git checkout v2022.01.0
>
>   barebox$ make mrproper
>
>   barebox$ export ARCH=arm
>   barebox$ export CROSS_COMPILE=arm-none-eabi-
>   barebox$ sed -i "s/virt2real.dtb/2virt2real.dtb/" arch/arm/dts/Makefile
>   barebox$ mv arch/arm/dts/virt2real.dts arch/arm/dts/2virt2real.dts
>
>   barebox$ make virt2real_defconfig
>   ...
>   barebox$ make -s
>   <stdin>:1:9: error: macro names must be identifiers                                              make[1]:  [scripts/Makefile.lib:352: arch/arm/dts/2virt2real.dtb] Error 1
>   make:  [Makefile:952: arch/arm/dts] Error 2
>
>
>
>
> > This introduces a config variable that allows adding additional fragments
> > to the Barebox device tree(s).
> >
> > Example uses are adjusting the flash partition layout, adding barebox
> > state variables, or adding an I2C device.  These can be now be done with
> > build configuration only, without needing to patch the existing dts
> > files in the Barebox source.
> >
> > The advantage is greater when an external build system, such as Yocto or
> > Buildroot, is being used to build Barebox.  The build system can drop in
> > a dts fragment to partition flash and build from unaltered Barebox
> > source.  This avoids the need for cumbersome maintenance of patch files
> > to modify Barebox's source for each flash partition layout.
> >
> > Preprocessing the dts file gains another layer, where a generated dts
> > source consisting of an include directive for the original dts source is
> > followed by more includes for each fragment.  This is piped to the
> > existing preprocessor call on stdin to avoid another temporary file.
> > cpp/dtc will correctly identify errors in the source files they occur
> > in.  The -MT option is used so the cpp auto-dependencies reference the
> > original dts source and not the generated code passed on stdin.
> >
> > A preprocessor macro named after the base dts file, e.g. foo-bar.dts
> > will define foo_bar_dts, will be defined so that the fragments can
> > possibly operate differently based on which image's dts is being built.
> >
> > Signed-off-by: Trent Piepho <trent.piepho@igorinstitute.com>
> > ---
> > Changes from v1:
> >   - Remove 2nd config variable for in-tree fragments.
> >   - Add macro to preproccessed dts
> >
> >  common/Kconfig       | 18 ++++++++++++++++++
> >  scripts/Makefile.lib |  8 +++++++-
> >  2 files changed, 25 insertions(+), 1 deletion(-)
> >
> > diff --git a/common/Kconfig b/common/Kconfig
> > index a9feae2ae..6fdc14148 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1091,6 +1091,24 @@ config SYSTEMD_OF_WATCHDOG
> >         in the kernel device tree. If the kernel is booted without a device
> >         tree or with one that lacks aliases, nothing is added.
> >
> > +config EXTERNAL_DTS_FRAGMENTS
> > +     string "external dts file fragments"
> > +     depends on OFTREE
> > +     help
> > +       List of dts fragment files that will be appended to Barebox's device
> > +       tree(s) source when building the dtb file(s).  If multiple files are
> > +       listed, they will be appended in order.  Relative filenames will use
> > +       the dtc include search path.
> > +
> > +       A preprocessor macro based on the name of the main dts will be
> > +       defined, which allows the dts fragments to based on which image of a
> > +       multi image build they are being used in.
> > +
> > +       It not intended that this be put into into Barebox defconfig files.
> > +       Instead, it's an external build system, like Yocto or buildroot, to
> > +       add dts fragments from outside the Barebox source tree into the
> > +       Barebox build.
> > +
> >  menu "OP-TEE loading"
> >
> >  config OPTEE_SIZE
> > diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> > index 80d76b177..4496f1a70 100644
> > --- a/scripts/Makefile.lib
> > +++ b/scripts/Makefile.lib
> > @@ -201,6 +201,7 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
> >  ld_flags       = $(KBUILD_LDFLAGS) $(ldflags-y)
> >
> >  dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
> > +              -Wp,-MT,$(basename $(notdir $@)).o                      \
> >                -I$(srctree)/arch/$(SRCARCH)/dts/include                \
> >                -I$(srctree)/dts/include                                \
> >                -I$(srctree)/include                                    \
> > @@ -335,8 +336,13 @@ cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD)
> >  $(obj)/%.dtb.S: $(obj)/%.dtb $(srctree)/scripts/gen-dtb-s FORCE
> >       $(call if_changed,dt_S_dtb)
> >
> > +dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
> >  quiet_cmd_dtc = DTC     $@
> > -cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
> > +# For compatibility between make 4.2 and 4.3
> > +H := \#
> > +cmd_dtc = /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
> > +     $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
> >       $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
> >               -i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> >               -i $(srctree)/dts/src/$(SRCARCH) \
> > --
> > 2.31.1
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
>
>
> --
> Best regards,
>   Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


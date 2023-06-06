Delivery-date: Tue, 06 Jun 2023 10:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SJW-00CpSW-7E
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SJT-00072a-P4
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLYkYnxiVyNKIiNhZsgGCq0ogzdakqNbqgualtlgqEU=; b=laoJQ34Q8bVCvFNhiOyeu+GP/T
	v536FRpsyygx09wko4tlBXYrN7Ctf/666t7aIKzkyrWZzFdZSlc3TL/JpiR9eH/KiTaoG6T2XFwlS
	87JiX4RP2TRYERR+KeB3H6rNDHWcmy5DrN6xoj8ku4R92K6AUeo+51ifdWprlMim++Agy6cma0RVk
	Z2eNcHPiiFk/TrmdIslRQccVk7avklTlo+63ReuiJcZITQn+dU8IkHZh5jC8z6Sbpm4JXw1rR9Wrv
	hGszkR5TvBDAHP6cH7SsU0xFYjxRgEpc2p4Dar9BzJaeRViu1bkljMnPTrY7s5OJfTBmewL7gl8nl
	v2LFnLBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SII-000qfG-2n;
	Tue, 06 Jun 2023 08:43:58 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SIG-000qeS-19
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:43:57 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-653bed78635so2557061b3a.0
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 01:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686041032; x=1688633032;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uLYkYnxiVyNKIiNhZsgGCq0ogzdakqNbqgualtlgqEU=;
        b=IOeEYGElelVTPnTTF3gF6P8guFEN65XrTP8uf0Gfaf3rs8e9dWCyPdIzcuFYljUaeo
         LVgao74zOgBqJY+m8UXxIw9dnH08YWPNhpqGSBthtOl4hI84iUWK8nCXIeL7bdBxzX0j
         ROjZTm4VQWfTz+GszjuK2blo/K6sgG11PneFkVbxvZAX874t7q4ODlfB7+fGkho5qH2s
         3Grdz/Scq63xjJueq5kjIqrtXgK5F2Hf43/HjX7ql0MvQlhR9bY7LdUx4JmWV7ZtBxgs
         ZNKpbpxyX/dJWSCECx1APDafHNrThu1rk24vNaGb5pg+H7nlf1EwUW2IeMVThU5hkpVd
         9hag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686041032; x=1688633032;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uLYkYnxiVyNKIiNhZsgGCq0ogzdakqNbqgualtlgqEU=;
        b=abFWs7Foq6ptd4Ee6pw9BNq2IZ36OE0qsv4jEhvLyXGcXXR3+VX6gAr93oKHVVliql
         G83zh/2xaCfUyV5lmOfO90TOijAPjExDX3NlTFosi1sIstAWt542ubqr+IA+62UudqQJ
         LpCQthAXtT7EQIMnt2Jj9of7zYBFvbFe5iQ/BP3Nmlev6wjQvdh9pEcmHue0d1+ToJdo
         snkrpXIOZVmgMbI86w1V5DSNW0IzU07CI7RKbqusiZVfe5VOoactmuG2Dj14yFNiG8cg
         mY4uT67h8YIdUcjVXlviy4SlEojz1pIjQfMAqPgzPq79Xc3SNjSlRaCM5vWaLpjN6VLF
         VTOA==
X-Gm-Message-State: AC+VfDwp0MnKEcD6TuLmjnxeJJgSG3yfmmyT/zJOzJ3tFyI4TVOJxE4p
	2K03SZ31actIsAs2TAJwx22sSfXrBs4vTVwurZ9tAay3ul2S9Q==
X-Google-Smtp-Source: ACHHUZ7mY1HOryvKyVAsKCSj3g1STvHJ01Tf6drO+j4N4Y0o6HiUlxT+EvBJUIWo6RvBmhFMNKtCudGnmGTaZU1FlnU=
X-Received: by 2002:a17:90b:3cf:b0:253:2f1b:612b with SMTP id
 go15-20020a17090b03cf00b002532f1b612bmr1875973pjb.11.1686041032301; Tue, 06
 Jun 2023 01:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230605202634.42175-1-denorl2009@gmail.com> <af965bd5-aa07-b585-c3d1-494814d875e9@pengutronix.de>
In-Reply-To: <af965bd5-aa07-b585-c3d1-494814d875e9@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Tue, 6 Jun 2023 11:43:40 +0300
Message-ID: <CALHb5uihW+CbF-_TtKeMZYOvNB0NPY=8xad=ge3pmGLz+n4TuQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_014356_399225_7C976DA9 
X-CRM114-Status: GOOD (  24.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/17] MIPS: fix and improve 64BIT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Tue, 6 Jun 2023 at 11:02, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Denis,
>
> On 05.06.23 22:10, Denis Orlov wrote:
> > The existing 64BIT support for MIPS was somewhat incomplete with no
> > board having MIPS64 CPUs specified to be available as targets. Define
> > Malta as supporting those and fix all the compilation and linking
> > errors. Make some optional features available with 64BIT too.
>
> Would be cool to test this in CI. Could you add:
>
>   - a defconfig that enables this board (I'd call it mips64_defconfig
>     and if another MIPS64 SoC is added, we will add it there, like
>     we do now for e.g. multi_v8_defconfig on ARM)
>
>   - a Labgrid env file that configures QEMU appropriately
>     See test/mips/qemu-malta_defconfig.yaml for an example

Good idea, will do that and send another patch a bit later.

>
> If you like, you can go further and send a patch adding it to
> CI's test-labgrid-pytest.yml workflow, but I can do that too.

Yeah, that sounds interesting, will also try to do that.

Regards,
Denis

>
> Cheers,
> Ahmad
>
> >
> > Denis Orlov (17):
> >   MIPS: malta: allow to choose MIPS64 target CPU in config
> >   MIPS: malta: use CKSEG instead of KSEG macros
> >   MIPS: reloc: fix relocation with CONFIG_64BIT enabled
> >   MIPS: o32: provide ta0..ta3 register definitions
> >   MIPS: pbl: use o32/n64 compatible register definitions
> >   MIPS: pbl: fix linking errors with CONFIG_64BIT
> >   MIPS: use MIPS32/MIPS64 generic instruction macros
> >   MIPS: malta: fix GT64120 base virtual address on 64BIT
> >   MIPS: fix addresses of exception vectors in 64-bit mode
> >   MIPS: fix *ADDR macro usage warnings on CONFIG_64BIT
> >   MIPS: Makefile: sign-extend TEXT_BASE value on CONFIG_64BIT
> >   MIPS: enable 64-bit kernel segment addressing on CONFIG_64BIT
> >   MIPS: traps: fix passing wrong sp when returning from exception
> >   MIPS: pbl_macros: use generic load/store macros in
> >     copy_to_link_location
> >   MIPS: add 64-bit support for optimized string functions
> >   MIPS: make setjmp/longjmp/initjmp available in 64BIT builds
> >   MIPS: main_entry-pbl: fix conversion warnings on CONFIG_64BIT
> >
> >  arch/mips/Kconfig                             |  6 +-
> >  arch/mips/Makefile                            | 14 +++--
> >  arch/mips/boards/qemu-malta/lowlevel.S        |  4 +-
> >  arch/mips/boot/main_entry-pbl.c               | 11 ++--
> >  arch/mips/boot/main_entry.c                   |  2 +-
> >  arch/mips/boot/start.S                        |  4 +-
> >  arch/mips/include/asm/asm.h                   | 10 +--
> >  arch/mips/include/asm/debug_ll_ns16550.h      |  6 +-
> >  arch/mips/include/asm/dma.h                   | 16 ++---
> >  arch/mips/include/asm/io.h                    |  2 +-
> >  arch/mips/include/asm/pbl_macros.h            | 62 +++++++++++--------
> >  arch/mips/include/asm/pbl_nmon.h              | 10 +--
> >  arch/mips/include/asm/regdef.h                |  6 ++
> >  arch/mips/include/asm/setjmp.h                |  2 +-
> >  arch/mips/lib/genex.S                         |  8 +--
> >  arch/mips/lib/memcpy.S                        | 37 +++++++++--
> >  arch/mips/lib/reloc.c                         |  7 +--
> >  arch/mips/lib/setjmp.S                        | 48 +++++++-------
> >  arch/mips/lib/traps.c                         |  2 +-
> >  .../mach-malta/include/mach/mach-gt64120.h    |  2 +-
> >  arch/mips/mach-malta/pci.c                    |  2 +-
> >  21 files changed, 156 insertions(+), 105 deletions(-)
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>



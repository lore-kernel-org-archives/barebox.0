Delivery-date: Fri, 02 Apr 2021 07:57:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSCoP-0007vo-Ph
	for lore@lore.pengutronix.de; Fri, 02 Apr 2021 07:57:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSCoO-0005WR-VC
	for lore@pengutronix.de; Fri, 02 Apr 2021 07:57:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jO+1RZCXqTcmvd1Fnw6XdkWweML1/jrk0bQts0ZxA3Y=; b=QMsoUWvV1NvJnFzK95tRN9fwa
	njh9OHWbcddRqFnMuEm6SWdqoapweEnNATofS9KU34HrTk8C7Vn1p2LR3vwtAYT+6TK2JRrBnWvNy
	1jXqxBZqhbssaXxi4sRc343O14jBdbZnJKjCsrseKC44KjCDs1qX/j42TlEIweD0Cg08gdVwcAloj
	L34S0U0yzRsMZ4QdWggAkQTy/63cCeasCte/XWI0wUsyFS3/EhcioJvVPoNOtRalL+74/SDGyLE2s
	cN+F0L08pZWhaLXh8Hfs7WitsrJba3cWJqXFPaAu4vhVVD6Jk0ZnpE8F/zsBAOltJn70xlmfoGyil
	Q5H3ADEcQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSCnD-00C20m-Jh; Fri, 02 Apr 2021 05:56:27 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSCn4-00C209-3g
 for barebox@lists.infradead.org; Fri, 02 Apr 2021 05:56:21 +0000
Received: by mail-lj1-x231.google.com with SMTP id f16so4625811ljm.1
 for <barebox@lists.infradead.org>; Thu, 01 Apr 2021 22:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GDq76xk57wbghgTQwGLTVEDROID2Scetni3RgtZKAig=;
 b=oAMYdcbtkRUpxcQqp1jS87zQmqgEoYK3cHx2z7dybHdhAUJXf2D6Thdz1BrQCH+Wk4
 hxhHzlSNxAddGsEdjx6XUVV2GlCz5bLZbT681mrYccMQiMVsAUl0EGVUNRMK2IALtj4X
 l0Ex167ZsDseo2lDWwEULYtWfNiOkPxzuyR5avttmgnXk755VZmnwm5G+5QHlxk4McCI
 XPmyz7KIwTiqHIZJ9pi0XMkVdCptaO2Co7rVK3NS1PQcxiAy/VwfS9hw0bzAjoxXa1wc
 WhLuSzmeQ97E9T1S/JP2squV8LQtOBcZfjwS332OwuuO+jTWME9byebRwc+7GamTsW1D
 kZew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GDq76xk57wbghgTQwGLTVEDROID2Scetni3RgtZKAig=;
 b=HdVwjY37KF/MzTBsPcBjOfx56/1nmaVpp5HcKJA5VPlRPRRgLduopORtVWqoU3dN6v
 Z5yRhwpkzQOnys/5ATNS8jrNFTS+OWwwoX59JgkYa6Kt02DvWaFhgjHGsSAXg30KcVA1
 M8qylbJPyqfkM/RKSDDK+jGvtUbp3UB6DT9LaKri0a5yoU6oNNJ+OZtX1Iu3SEKO8ZdC
 Cy+xKUqqYnQ18W8PYUWRq5ziojKRE480v9e3gKIMgbEziY8E79KJiuctwp9swcvZsbpT
 6bU4YwO5SMv54w3Pk3zBZ5IzzJCLAwQqwXrHPyQXzy5rWFj8jIpCES3XYkCcTkrRjZoK
 lknw==
X-Gm-Message-State: AOAM530LuT+cZ/uSA7qhc48kqGr8v4QezYqxX4FNFqOmy4ygiE6zS/l7
 t6YSkNltRokoaMw1zaYv9pk=
X-Google-Smtp-Source: ABdhPJzai+tO5vjNNPOOiMG5L7ibWSO7hRZpwmXJ+tQWaHcZHdvTBHd3l6fqABSrCOinLuqV1ZlFNQ==
X-Received: by 2002:a2e:b7c1:: with SMTP id p1mr7378067ljo.198.1617342975070; 
 Thu, 01 Apr 2021 22:56:15 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id m24sm750795lfq.184.2021.04.01.22.56.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 01 Apr 2021 22:56:14 -0700 (PDT)
Date: Fri, 2 Apr 2021 08:56:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
In-Reply-To: <20210324082304.30858-1-a.fatoum@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_065618_373013_2D659DCE 
X-CRM114-Status: GOOD (  23.01  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 24 Mar 2021 09:23:02 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Current RISC-V erizo barebox master succesfully runs on QEMU
but hangs on FPGA.

git bisection shows this:

    barebox$ git bisect good 809e66d4ef
    ...
    barebox$ git bisect bad
    fef19e17f651a7f4b6063a76c506a67cabfe4a69 is the first bad commit
    commit fef19e17f651a7f4b6063a76c506a67cabfe4a69
    Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
    Date:   Wed Mar 24 09:23:02 2021 +0100

        RISC-V: cpu: request stack memory region

I see that request_sdram_region("stack", ...) hangs in input_data_len().

On FPGA I load barebox image at 0x80000000 (erizo RAM start)
not at 0x0 (link address).
The problem is that input_data_end in input_data_len()
contains link-time address, not actual run-time address.

I have added this hack

--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -46,7 +46,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, =
unsigned long memsize,
                relocate_to_adr(membase);
 =

        pg_len =3D pg_end - pg_start;
-       uncompressed_len =3D input_data_len();
+       uncompressed_len =3D get_unaligned((const u32 *)(input_data_end - 4=
 + get_runtime_offset()));
 =

        barebox_base =3D riscv_mem_barebox_image(membase, endmem,
                                               uncompressed_len + MAX_BSS_S=
IZE);

Alas, this hack does not fix the problem completely.


> Now that the stack base region is determined dynamically,
> mem_malloc_resource can no longer reserve the stack space.
> Do as ARM does and add a RISC-V specific initcall to reserve
> the main thread's stack space.
> =

> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Fix for master as otherwise stack could be overwritten at runtime
> ---
>  arch/riscv/cpu/core.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
> index bdcd500ed748..982d378eddec 100644
> --- a/arch/riscv/cpu/core.c
> +++ b/arch/riscv/cpu/core.c
> @@ -2,6 +2,9 @@
>  /*
>   * Copyright (C) 2012 Regents of the University of California
>   * Copyright (C) 2017 SiFive
> + * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
> + *
> + * Common RISC-V core initcalls.
>   *
>   * All RISC-V systems have a timer attached to every hart.  These timers=
 can
>   * either be read from the "time" and "timeh" CSRs, and can use the SBI =
to
> @@ -14,8 +17,17 @@
>  #include <of.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
> +#include <memory.h>
> +#include <asm-generic/memory_layout.h>
>  #include <io.h>
>  =

> +static int riscv_request_stack(void)
> +{
> +	extern unsigned long riscv_stack_top;
> +	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top - =
STACK_SIZE, STACK_SIZE));
> +}
> +coredevice_initcall(riscv_request_stack);
> +
>  static struct device_d timer_dev;
>  =

>  static int riscv_probe(struct device_d *parent)
> -- =

> 2.29.2
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


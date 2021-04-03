Delivery-date: Sat, 03 Apr 2021 10:23:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSbZS-0001Bt-J5
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 10:23:54 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSbZR-0000Z5-O6
	for lore@pengutronix.de; Sat, 03 Apr 2021 10:23:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tg5u1lM7j9HsSotYwMYoMESrXJJXsssV0luFBNguG/k=; b=UddMvSC/jvh/hzv42LOAralsz
	/8LPDS+ucDCCekGiENCvU85MAXpP7CfQrjk5SyfAez6ZJsLEVlLaCGHQ9bphdc6oGWhszsU2YHEXL
	ZWfav17wSWhv9aLjVAuwwGKDVoau9HUApSIjhSg4psT7xfzfPqa/UZVJ+JeRyTxqNmOqQ6pD/k8rV
	Wf73aRmJGqU+GXXiQUqe7kFBp5MfPRD9VHiaiabQfxh4vNmPlppJihxiYcOxgknnm18Xk/JkBDOWm
	NBBvboj8mV1VxV4Dobh6URL4e+EJX8fBKnWHqacUuGLumT+MusW021TOcMJKYSaxeNXsfwYBQyW0l
	2jFHsUOlQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSbYK-00ET9U-Hc; Sat, 03 Apr 2021 08:22:44 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSbYD-00ET93-6T
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 08:22:39 +0000
Received: by mail-lf1-x12e.google.com with SMTP id m12so10420378lfq.10
 for <barebox@lists.infradead.org>; Sat, 03 Apr 2021 01:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0JzcXeNPxnhPnetx+q8S7RvLU2zH55BOQeKpFhHdebM=;
 b=PIyb36kr6eyNMxhKuv4pb3IlkZrBajYAM5nsb06mTzsVsTwOH5TmkOeX897t/RquKi
 Qss+GYMxaXM2l+/0EpxrN0TRv2BcskkQy484nHXcDiuZf+JdEvz6rr++ovFJct34i/ly
 TvYT0FvqGQrLAWex9TsTzJFCRwkv3euEvWagimCmoeCclD1ge6/hFy0t6htRnxZXu28K
 1Kxw0dNVWyErJZc6Js2n2w7ymTf/tgcMkQRm7FePXtiurybrFWkUrrjTwyCxiulbOCwd
 e3W0ObiY62x3r+pWMGr2DfRnyxi1DTGNPr9ELFirTmSnAx9UjmvVBM7lnmnAgU9QF5fh
 XuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0JzcXeNPxnhPnetx+q8S7RvLU2zH55BOQeKpFhHdebM=;
 b=SP57I4wKRhC1C5bG7gSOL+MsQp/U9XWNKaZF3fX4+tR4+s0V8RGyc6VaE2tQqm8Kgv
 ZewQI7m6bfBNmPV99oWzmBBp3kNi5+P7WFEYE+KBg4W+/gVNVIyQrKXeS3s5Qjm/rhwV
 cPS15KCCTfNmdBxCj6JeWNKiq6X4ZF78dfN7e6oKLFPt3tMggiz8bie0aLlHKYXWaHtd
 svea0QcfgA5V2626n32P9K0qWwd95FcZfujU4KJbZbHXQ/PXGgtF7Z8ff9JnpiyVxnw6
 1k6tPlPUN49q9tnOULA5SwFV6SFLQX0ur95RNRjHsOTtjWqziKDKnlY8WMm5O9S7Ta+3
 pgeg==
X-Gm-Message-State: AOAM533/vNbfViLzPs/3PzOjp89c2qqgXARwnLx0RB8JwVBsnbN3/xEl
 sP2LlBgamr4G3q6v2S1SCGNvAXZgW/E=
X-Google-Smtp-Source: ABdhPJziXcqUrDci8TKi2KUH761i2Xxt/PXkqztZoJtcppkzZIXA/wn03XbXYt18SrMyLBp/Oxf8Mw==
X-Received: by 2002:a19:e05d:: with SMTP id g29mr11409252lfj.495.1617438153250; 
 Sat, 03 Apr 2021 01:22:33 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id y14sm1087234lfl.165.2021.04.03.01.22.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 03 Apr 2021 01:22:32 -0700 (PDT)
Date: Sat, 3 Apr 2021 11:22:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-Id: <20210403112231.e59203a78be74f94457288b2@gmail.com>
In-Reply-To: <20210403070332.3642879-1-ahmad@a3f.at>
References: <20210403070332.3642879-1-ahmad@a3f.at>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_092237_320459_C4A77C35 
X-CRM114-Status: GOOD (  31.04  )
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
Subject: Re: [PATCH master] RISC-V: boot: uncompress: determine piggy data
 bounds before relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat,  3 Apr 2021 09:03:32 +0200
Ahmad Fatoum <ahmad@a3f.at> wrote:

Hi Ahmad!

I have just tested this patch on erizo FPGA. Barebox work fine.

-- 
Best regards,
  Antony Pavlov

> Like on ARM, the PBL common code does not relocate the piggy data and
> instead keeps pointers into the old image's location.
> 
> For relocate_to_current_adr, this doesn't matter, because both
> destination and source address are the same, but when running from ROM
> or flash relocate_to_adr will only copy up to __bss_start, so
> determining the piggy data bounds _must_ happen before relocation.
> 
> We did so, but input_data_len, which references the image end was
> executed after relocation unearthing two bugs at once:
> 
>   - The compiler cached input_data_end from before relocation, so
>     the runtime offset wasn't being added
> 
>   - Even with runtime offset added, we were pointing at the new
>     address, but the old piggy data wasn't copied there (On erizo,
>     it's still in ROM)
> 
> Fix these by evaluating the bounds before relocation and add a comment,
> why it needs to be there. The same comment will also be added at the
> code's origin in the ARM architecture support.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Please apply to master.
> ---
>  arch/riscv/boot/uncompress.c      | 6 +++---
>  arch/riscv/include/asm/sections.h | 4 +++-
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index 411cefb0e31b..b4e010998a4a 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -32,8 +32,11 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	void *pg_start, *pg_end;
>  	unsigned long pc = get_pc();
>  
> +	/* piggy data is not relocated, so determine the bounds now */
>  	pg_start = input_data + get_runtime_offset();
>  	pg_end = input_data_end + get_runtime_offset();
> +	pg_len = pg_end - pg_start;
> +	uncompressed_len = input_data_len();
>  
>  	/*
>  	 * If we run from inside the memory just relocate the binary
> @@ -45,9 +48,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	else
>  		relocate_to_adr(membase);
>  
> -	pg_len = pg_end - pg_start;
> -	uncompressed_len = input_data_len();
> -
>  	barebox_base = riscv_mem_barebox_image(membase, endmem,
>  					       uncompressed_len + MAX_BSS_SIZE);
>  
> diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
> index 725fd8db474e..6673648bcd58 100644
> --- a/arch/riscv/include/asm/sections.h
> +++ b/arch/riscv/include/asm/sections.h
> @@ -15,9 +15,11 @@ extern char __dynsym_end[];
>  extern char input_data[];
>  extern char input_data_end[];
>  
> +unsigned long get_runtime_offset(void);
> +
>  static inline unsigned int input_data_len(void)
>  {
> -	return get_unaligned((const u32 *)(input_data_end - 4));
> +	return get_unaligned((const u32 *)(input_data_end + get_runtime_offset() - 4));
>  }
>  
>  #endif
> -- 
> 2.30.0
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


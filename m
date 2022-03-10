Delivery-date: Thu, 10 Mar 2022 15:34:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJsG-0012Q1-FP
	for lore@lore.pengutronix.de; Thu, 10 Mar 2022 15:34:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nSJsF-0007nA-8s
	for lore@pengutronix.de; Thu, 10 Mar 2022 15:34:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PMSA/9NjVZER2Er9EcSNnQC9c2E43IWO+B/aYbXqok=; b=UtwGz0wrbi4pwi
	/7zgo8dLUtZ6ePzm5NNE+cDHiXSKpFEKg/R2ZA9TBaV07XeIxlXws3mZOiCQzC1cPeEjhTW2n+Q/3
	1veH8q9uXr38VOsw6NX1uj4tWj6z+Dmkz2SYd0L8/u2WbjRMsTLUUKLEXrxEOtVYPOWfPdua3GnM8
	aRDZgiARQJKNUSjAK1tBCz0bqZnO1mvjdEzdhSW70lQ56NRrjjCA2LKrEivsYbast9hfD950rJzdc
	OoRJSFyHX6BUvG+59bysjQsfFtM3MnPO7I71ZTKqztJGCol147VmKqT3JRmUDtqzYSTPiQ4ORMi7O
	R/dtOTEugeb+PcdfQy6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSJqh-00D84S-LU; Thu, 10 Mar 2022 14:33:03 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSJqc-00D82g-17
 for barebox@lists.infradead.org; Thu, 10 Mar 2022 14:32:59 +0000
Received: by mail-lf1-x136.google.com with SMTP id e6so3155598lfc.1
 for <barebox@lists.infradead.org>; Thu, 10 Mar 2022 06:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ofz8IFQBJNoY6NiK4l6RYmH7dD5ys1vn20yCSW2ZJyg=;
 b=jKJpxWFm88he8Qdcy0KjiCoj05H5nC15jkmVBm1TY0d7teHBJqqfoZGWHXqTz7GhLq
 vzYtCuSPsbDALvzemUUk5P00WpTycO7WYwTbA3rYQURk8cBAQGi6fmaN8rGbMA+tlzUu
 92UEV6hEFjRL++1z37uuHmKWK6A8zP9rXxufnyKsc39wMjAStx2ughaT8O0d1uV0/V4A
 mcjU2SM4CcBVcBQjXN/V334kqBsR46Lkkp1mpD3YnNEPDbyvkldNi1nh0Svu4OiDtJcH
 EMj6BdIn/KaqYpZ4h9i5IPOqFhJKTWAIEVo/8zQS8B1LewCQUdg4da11cM+VKDN+rCe8
 sAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ofz8IFQBJNoY6NiK4l6RYmH7dD5ys1vn20yCSW2ZJyg=;
 b=650JrPWi91KHRBTGVnFVqNz0MhTojSN6a5QYeWoSePUAGCtcVUl9+wtdJySMlgJooh
 hz+j8swnxjcvv8ZsmuT3C3TOE2B3g9HF+RQLZ2ufFxFS6x6dSOel5Z8Wo+w+VDmyRRtP
 B0Sq7UvOlK812GXenrKyjQ3r9GYv5XV9MrwN8eH30rvKtgrGDWUHrJS6C7aWvLpVWZ5C
 86EX4uJ+WMpi9R8Vij74byBGMuK04sSLnbvDkkD7DTz53ZqS0PF+GM9mkdi1cXleCaIO
 /tYenY34tcrj6iu4Qn3Nx4wkbREwYEoaX8rtwR6wAy5n0k1M+SG1sgHZ2H/D3QB4CqCq
 8lLQ==
X-Gm-Message-State: AOAM533CG+HNI0IyP1MufNbtZ2UJWFTj/SVaNLZ298lJsRm+hdI1VwsQ
 qkszruO5UYnu5TKCd6eocYnKfbALYPI=
X-Google-Smtp-Source: ABdhPJyh12tCboAZQQn82hKAjGbDPkRBt5H048J+W5AZj0pi7Vqz3IDlaim4eTN8zusYeEmRe+LoWg==
X-Received: by 2002:a05:6512:952:b0:443:7f74:1418 with SMTP id
 u18-20020a056512095200b004437f741418mr3323415lft.36.1646922775599; 
 Thu, 10 Mar 2022 06:32:55 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id
 g10-20020a19ac0a000000b00441e497867fsm1006213lfc.93.2022.03.10.06.32.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 10 Mar 2022 06:32:54 -0800 (PST)
Date: Thu, 10 Mar 2022 17:32:53 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-Id: <20220310173253.de205299b310b63f0094730e@gmail.com>
In-Reply-To: <20220310134040.30631-1-denorl2009@gmail.com>
References: <20220310134040.30631-1-denorl2009@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_063258_121689_B01F98B5 
X-CRM114-Status: GOOD (  24.25  )
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
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/1] MIPS: fix optimised memset returning garbage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 10 Mar 2022 16:40:39 +0300
Denis Orlov <denorl2009@gmail.com> wrote:

Hi Denis!

I'm very glad to see that you have found this anoying bug!

Some tips:

* you comment from "PATCH 0/1" is very informative but after applying "PATC=
H 1/1"
to the mainline this very informative comment remain in maillist archive bu=
t not
in the barebox git repo; Could you please combine "PATCH 0/1" comment and "=
PATCH 1/1"
comment and resend single "PATCH v2" ?

* I propose this ammendment for your comment:

> --- a/PATCH-0/1
> +++ b/PATCH-0/1
> @@ -108,8 +108,8 @@ List-Archive: <https://lore.barebox.org/barebox/>
>  There is currently a bug in memset implementation from
>  arch/mips/lib/memset.S that is used when MIPS_OPTIMIZED_STRING_FUNCTIONS
>  option is enabled. It stems from a missing '.set noreorder' directive
> -before the first branch. This results in an assembler stuffing a 'nop'
> -instruction in a delay slot instead of an instruction writing the return
> +before the first beqz instruction. This results in an assembler stuffing=
 a 'nop'
> +instruction in the beqz delay slot instead of an instruction writing the=
 return
>  value into v0 register that was supposed to go there. That leads to an
>  error that appears when reading memory from SPI Flash and that was
>  mentioned here:

-- =

Best regards,
=A0 Antony Pavlov



> There is currently a bug in memset implementation from
> arch/mips/lib/memset.S that is used when MIPS_OPTIMIZED_STRING_FUNCTIONS
> option is enabled. It stems from a missing '.set noreorder' directive
> before the first branch. This results in an assembler stuffing a 'nop'
> instruction in a delay slot instead of an instruction writing the return
> value into v0 register that was supposed to go there. That leads to an
> error that appears when reading memory from SPI Flash and that was
> mentioned here:
> http://lists.infradead.org/pipermail/barebox/2021-June/036557.html.
> =

> There are a few ways of fixing this bug. The directive '.set noreorder'
> that shows up a bit later in code could be moved up and placed right
> before the memset label (as it was originally in Linux codebase - see
> a583158c9ce822c96a718fbf877cec1e5f9ad75d). Or, rather, the move and the
> branch instruction could be swapped, thus allowing the assembler to
> properly place move in delay slot (as it is done in Linux now - see
> 68dec269ee29c3abfd09596fbee7e40d875a6ab3) - that is what is done in
> patch.
> =

> Denis Orlov (1):
>   MIPS: fix optimised memset returning garbage
> =

>  arch/mips/lib/memset.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> -- =

> 2.20.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


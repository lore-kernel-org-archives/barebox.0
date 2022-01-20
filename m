Delivery-date: Thu, 20 Jan 2022 09:39:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASz2-007UNu-8a
	for lore@lore.pengutronix.de; Thu, 20 Jan 2022 09:39:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nASz0-00080q-MB
	for lore@pengutronix.de; Thu, 20 Jan 2022 09:39:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLL96oIpQwzuCIzuQy+h9f4jiAcwsvxjaTtYIOfOBxM=; b=mqhg41IOCHGcQ3
	gv7ejqcxRQp/tocdNUwj8uaxsI39W3OYSXdVTTpXdJRQ/nmE+ef0bSWAmMh29S/0xT48acN9cXxYD
	IMSAohHjgaI6ap0+cOfWrrdZ9qOZSaiR/tGq27KL4GUckUJMvMK6hTL8/5Q0VZkepXBAKpBNEUhcU
	zdtlPtUcCTSg38gd5srDAAuLWdWNpMCQlMZQmmpE0xm2A6hrP2KA2Pay4Yp6VcbY1OSoPf5om6hc/
	1Kt23nGWcXIYRRXijggnwzzdY2A1g7E/2S6RVu1LOQhlKJDpmOc2dJ74Xpuqeu/YQdGAqaKljUOZK
	RrZgsP0zkP++N///HYYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nASxl-009px4-Ct; Thu, 20 Jan 2022 08:38:33 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nASwR-009p6S-Uf
 for barebox@lists.infradead.org; Thu, 20 Jan 2022 08:37:16 +0000
Received: by mail-lf1-x133.google.com with SMTP id x7so18720793lfu.8
 for <barebox@lists.infradead.org>; Thu, 20 Jan 2022 00:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pDUiP07sm4Ww6LEhoHY8QbyXcUBEyWx5kmncQ/3fhpQ=;
 b=c2QatNodaLoNkICGc1IylZOcveqbQfqtOpcA5Lry3+jEdKyMqGelwe9FUbb9CFqLrc
 pMn6qc0RECXecX5YnOXoUEqfHY8HCIp2ujRRl+LbWdzZuXnGgp0L32XHrG1kKLYWcWZK
 s1QGbka3QRRMshlhKdROiy4QVoXjvPOBDw3cnSiV409YkuVbbdZCK46F6lAWV8KMMFe9
 EcNg3R+pSFUB6bODqAn9GtnYM/9nzIiLcJuel+rHTXgygosR25Fh1+IgG+7rSUuCGOSh
 6NlP2raSdlTEmovw07DrALsGBt5mtJQW6kqVmwGjOXhl4e6fcVRGqoJHJzOFWsonihY8
 WOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pDUiP07sm4Ww6LEhoHY8QbyXcUBEyWx5kmncQ/3fhpQ=;
 b=ZiSnWhOjt2f18741HQA8nsK8QqUQyUsttNdK9qagAwxTKEGSPtz/qrgWj/OLT9i/gE
 Xku99alJQPXG4dXXiJD+9n2vC9VzVDZj3CKDscg/B679itg9SK3xEsJJ+5gJPNhhF0uW
 ONXU/cYhZR31MDfFmF5dgH2fQMEr2PyReZSosUbjQ7zr78Pxi5/hNb9jz3g3mJVhGP2i
 Zl4C1/Z0FBr93ID1Z/WkrJcOS7IGwBF5WgMTbwsEukKM11Ku8xrF/Lg0FD3HgbTTk1m6
 NzlkOTkiS7/ViklClB9pJ5JMILLqt4ATmIb7dmYhdQgKrU0sovc6eumcDuQ0/HqlMeiV
 rYHw==
X-Gm-Message-State: AOAM533IrpKOd/uMc/Oxz3ExDf2ZCWwx2Znl48qw0kJE6O7/jzMA2TPd
 2FhHVm7kgAK7MA0AKH9cAMxoUoVdoA7QeLjLUFQYQEqo5Rg9Zg==
X-Google-Smtp-Source: ABdhPJx+eNNvKp/5RH0n0Y4w1ORxxeliAR2RmbxDmMk6Kuf/2gtYz//P34ZY9dYu60Dc/5KHuB0gjSVMVC6SQS3wHHA=
X-Received: by 2002:a19:ee1a:: with SMTP id g26mr17470286lfb.279.1642667829079; 
 Thu, 20 Jan 2022 00:37:09 -0800 (PST)
MIME-Version: 1.0
References: <20220120074733.176041-1-r.czerwinski@pengutronix.de>
In-Reply-To: <20220120074733.176041-1-r.czerwinski@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 20 Jan 2022 00:36:58 -0800
Message-ID: <CAMHeXxNgfUoMQe3aiK8wkV5ZdSbaBCSB3YXKM4-8zVUMemOvZA@mail.gmail.com>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_003712_162918_B94CDE08 
X-CRM114-Status: GOOD (  15.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: dtc: use env to resolve echo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's another in scripts/Kbuild.include

On Thu, Jan 20, 2022 at 12:04 AM Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:
>
> Posix does not mandate to have binaries within a certain path, but
> rather that the utilities may be available. Use env to resolve and call
> echo from PATH.
>
> Fixes: 2ae7ac7ab2f1 ("kbuild: dtc: Allow adding device tree fragments via config")
>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  scripts/Makefile.lib | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 13b1789c01..94ca1b771b 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -340,7 +340,7 @@ dts-frags = $(subst $(quote),,$(CONFIG_EXTERNAL_DTS_FRAGMENTS))
>  quiet_cmd_dtc = DTC     $@
>  # For compatibility between make 4.2 and 4.3
>  H := \#
> -cmd_dtc = /bin/echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"\n') | \
> +cmd_dtc = /usr/bin/env echo -e '$(H)define $(subst -,_,$(*F))_dts 1\n'$(foreach f,$< $(dts-frags),'$(H)include "$(f)"') | \
>         $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) - ; \
>         $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>                 -i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> --
> 2.34.1
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


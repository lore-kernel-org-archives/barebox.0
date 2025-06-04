Delivery-date: Wed, 04 Jun 2025 12:01:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMkvd-003cB9-2j
	for lore@lore.pengutronix.de;
	Wed, 04 Jun 2025 12:01:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMkvc-0002hz-Q2
	for lore@pengutronix.de; Wed, 04 Jun 2025 12:01:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YZilOeTDID42x2y9nq5rKf9OM2cav68UDfAXpnc1uKw=; b=ndpMkJp7L4cXo4XtZvhLBr95Um
	GB2lpHMV+3CNQSWdmkQOh0vbhSuPC9Gg1ouNgBX2DtjQxdvQC3Y2ffEGgx5ODVJiDwUaAUkaWGmTn
	OvaIxGi06+PhV1JQpQsEP7JFPLxaD6w/qHq7bPw4I5HLS7LOBDdDAlvLaoQc0GN3OLmahz72sCi0W
	eyAx9wFAwhCRMFb8chbtQu1OhQPtNSUtQQ2gSuocXhrv7kx4CcQ9CntkA8vVcP/rvaAlzv3RSrSEk
	CvNsHCbGRVYGdk7XTKD0IspwMwtRUELUK8zdnXE6eF7SGaHffxmMPvhZlEu9BG0sU4PjJith5fVOa
	GZh6Cyyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkv9-0000000D5Zi-0ax2;
	Wed, 04 Jun 2025 10:00:31 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMkv6-0000000D5ZJ-0rND
	for barebox@lists.infradead.org;
	Wed, 04 Jun 2025 10:00:29 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ad89ee255easo1197731566b.3
        for <barebox@lists.infradead.org>; Wed, 04 Jun 2025 03:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749031226; x=1749636026; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YZilOeTDID42x2y9nq5rKf9OM2cav68UDfAXpnc1uKw=;
        b=ENeKiRMQGqS4plNC3k4hLBnfP4Ex4qFoAP/T1weAxEmZtS7tUuojv3YOGq4uEnSyuw
         PplM1EZWRK3qEZZN7jWq2Oxy7hZPl8O7r1TMJrkiRpreRwJp6L25DT1M4lC/anxUOS0I
         0D4w1zTUUv6SGLMY0uyUcNpeZmQ8glTc3gF5SKDM6fsuZacn5mJh/UqNpKAPuwy5tnpQ
         Yx/Qk+8eJTLdLyw8xfDz3KvOSQiyqlipaRcdWZ13yBo8i/waIXMqph7j1LSEIcWyEIfW
         P6TTOSxndK+5jneMHDdq+/JMCl4Zvl10uTuIBnZluvH//+d0PBYtI9Sfi2m2CdGacrHw
         093A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749031226; x=1749636026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YZilOeTDID42x2y9nq5rKf9OM2cav68UDfAXpnc1uKw=;
        b=bGBiDBm467pkznI46ZIVkuHBakY6tPhG2gjtxsCOXNMNFfQXuISdc4aqkZMdKicQko
         DmOiPYP9B+Cdcl4EaTzQnWh6b+yamUNMG36jgiwp/98gJnLMuA6jnILiKnsBOJBhmoyC
         EeGsED/GiRdhCDemv4gNbZ0YOZZO291wbT/eOX1ihWsP50+VnD6Aho4v68q/FtcOJLPp
         jdTxrUq9Uk3eYQw46Sk/o0jcgsfHLFFU3bD4vG/OVH6+4NunSr66UgqngT3o/Y/oj7AW
         288mBwY7aW8DQ56K4SnfnAV/V5gi3hYRBOvOTs1G4TO795XigJ7wqah9ht4G0iBlwyWR
         Dedw==
X-Gm-Message-State: AOJu0Yz5rBeDr1APJd9uJSOuqUZ5JLkOAuLkvN90zFiwSbjSroIk/J5P
	lld1Q1y28PgY0sOHYaLYNUi94rc/lLajWxNAhGxqnwl2mMucu1ASH6rke9HQJGcv6Z1OgyDdqyB
	u1TF8ryrkCSPO35SWFLCZbwAfUD7+vFhmyIsGNrPr1s9LdVrHubF3
X-Gm-Gg: ASbGncsjZZJBjktABVHoQcyALNoOVG8vvKnkQYt8TH1CRknxdzwRFJESYUmQhJ2/JHu
	lJAjXf+RChEN5kr7E4yRHSDC4VMzSb3meNtxrS0ngNj8wCVo/Kkhy4NHjgv/XQ6XmLn/ukJoqn6
	mJkgYt971D6jU5H1ht/TynIdcl3ZPFSHrFFqxP8VZ745OKgAaQgoy3mf+BCQ4mhebiU6swnDHBn
	VCY
X-Google-Smtp-Source: AGHT+IH8sqsYWTRkJFFTUG15EgrHz4Q9xS2SNqiVs/1jryTYqNjn55672ljDAzF35EkwnVhb8ZRFEVWgOePRfaFGDUc=
X-Received: by 2002:a17:906:c113:b0:ad8:88f6:a7d with SMTP id
 a640c23a62f3a-addf903406cmr190079266b.58.1749031226338; Wed, 04 Jun 2025
 03:00:26 -0700 (PDT)
MIME-Version: 1.0
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
In-Reply-To: <20250603092044.1464440-1-f.pflug@pengutronix.de>
From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Date: Wed, 4 Jun 2025 12:00:15 +0200
X-Gm-Features: AX0GCFunAMPiJ1bKE2KqgFnG4pM8XwkKIi122gZMeiCfgiuZ3NnBJej2EAkbnkg
Message-ID: <CAK8z29Ugrzjjo9y8SbW5LLJ1aY4e1Df8Pf6S6-eDgJ3tzk-kXA@mail.gmail.com>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, 
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_030028_246894_4218D82E 
X-CRM114-Status: GOOD (  20.35  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: optee-early: drop superfluous sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, 3 Jun 2025 at 11:20, Fabian Pflug <f.pflug@pengutronix.de> wrote:
>
> We expect start_optee_early() to be called with caches disabled, so there
> is no point in calling sync_caches_for_execution inside.
>
> Therefore let's verify the assumption that caches are indeed disabled
> and drop the useless call.
>
> Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/lib32/optee-early.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
> index 735d829c99..0cda0ab163 100644
> --- a/arch/arm/lib32/optee-early.c
> +++ b/arch/arm/lib32/optee-early.c
> @@ -7,6 +7,7 @@
>   */
>  #include <asm/cache.h>
>  #include <asm/setjmp.h>
> +#include <asm/system.h>
>  #include <tee/optee.h>
>  #include <debug_ll.h>
>  #include <string.h>
> @@ -24,13 +25,16 @@ int start_optee_early(void *fdt, void *tee)
>         if (ret < 0)
>                 return ret;
>
> +       /* We expect this function to be called with data caches disabled */
> +       if (get_cr() & CR_C)
> +               return -ENXIO;
> +

I don't think returning an error here is correct, we should probably
just panic()
with a useful error message. None of the current callers of the function check
the return code, so at best the board starts without OP-TEE, at worst
it randomly
hangs because no PSCI provider can be found.

>         memcpy((void *)hdr->init_load_addr_lo, tee + sizeof(*hdr), hdr->init_size);
>         tee_start = (void *) hdr->init_load_addr_lo;
>
>         /* We use setjmp/longjmp here because OP-TEE clobbers most registers */
>         ret = setjmp(tee_buf);
>         if (ret == 0) {
> -               sync_caches_for_execution();
>                 tee_start(0, 0, fdt);
>                 longjmp(tee_buf, 1);
>         }
> --
> 2.39.5
>

- Rouven



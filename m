Delivery-date: Mon, 15 Mar 2021 09:46:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLirS-0000cP-Pk
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:46:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLirR-0004R4-Ft
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:46:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HPql0snnKHn6XLLkCiW2lqlIT+2TunJOwj+J37J8MVU=; b=mpD0O/qFkVVElY67IP5tI/y7l
	MWGJL5fkORNSaFDAnXppIWjIL2mu7MbNPqgXCovHl94HqLL/oETSvMyNwkVMP2wp7oUbtXtJGB0a7
	zUZ/RDQqIhVDW+oBMihzhdBHyD9L94by3zXJvKm4SLxB59UCkbCep25xozW+QapDHaIscKQAEu/na
	8EDSaCoaVVv5lXwtCtlxayFvt1jygkr01Cbf/wIQeWtogGNolm0a+Kr3DR/3B3JUuWc5tD4Tpd8Yp
	X69HCxNn/zlsKWJMEaa3z2cJScsihDQVSvM2KaxD/Y8kqNHugAdjQSIrvVQt81BWh9U2EFCTLyu6z
	gEbHHwhuQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLipv-00FGwj-9Y; Mon, 15 Mar 2021 08:44:29 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLikX-00FFlF-JZ
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:39:01 +0000
Received: by mail-lj1-x234.google.com with SMTP id u4so15193618ljo.6
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 01:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IvxQMj6cBRV+2f1OzDE72rpEaxgsOXjWLZ7ITTPjDzg=;
 b=MQqHmVCSBBFHXEoVoRY+oW/hir0REuphnfZ5y4J6ENcP+P/21cXPa3vlatL5HHidfH
 pvHaQ0J8e+FBy5oYUCLaB1LTp41GxYfqTttsLgrqij4g3EFgkft947+/LcVKqy7kmMGp
 1MBHcVJVUX1bsDzTv+nb6j6y/wpbDkMk2rNCEJ54IWTAc/wzceRdR7CNXyoFveOBZ9IT
 FK6wWSOdhAXn6AgysnUl9gmdbPhjLeHWUieoD80s/wGTShAVGAIijSJ9asBOWLE7NK55
 JcEkf+5/1ewDVfg6GbF4SViYU4rzYboDZ/zRCcbOzR6qRoducmXTVE/qU6z4AzDavP/9
 HjHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IvxQMj6cBRV+2f1OzDE72rpEaxgsOXjWLZ7ITTPjDzg=;
 b=We2BTKmTgJUFfw/yCFSfd7n5JKwiI7wMekRwEmgIFayRYv624Y+fdIray+XxUR1MOM
 4XBOjSf/yYxJXu+s5jxAWPLcL1R61Yq2PTURUUC82lTz+ict/Tmpj1Hb3q6j9OKxtoYS
 LNCR/+nHTxLiMZt1eYP+4FeVT2pVuPpfqQMETpA2cXjEesBa0jh/QLFCh1JRdKo3m6tb
 JIpp5+iHFm7Lg629YhTtmilE47+8KGdetwmXvir6Y1vFggHSWFoxHOUoypo/PT3mm45r
 qPfuXP4KbKodgpUH1gIUCKiXfJR0ZfgT9XHXXyjJ852miUocxaTQViNJCsDd2vEMFyOc
 3vZA==
X-Gm-Message-State: AOAM533LY3rCFLxVkjGwi9plW8yTkcAQ4K4FKRsr5MQnjxOiTxDLtD5y
 sm3sTYoRxqmx+SdbMq08+gk=
X-Google-Smtp-Source: ABdhPJxmVjPoC6W4U2HWgliN0o6ETwqKYtJYImT26pZq56mnMoT3nYu5GwhzPYgq07DAdtXgeKS+Zg==
X-Received: by 2002:a2e:b895:: with SMTP id r21mr10015694ljp.506.1615797531902; 
 Mon, 15 Mar 2021 01:38:51 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id 201sm2608629lfg.211.2021.03.15.01.38.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Mar 2021 01:38:51 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:38:50 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Rouven Czerwinski
 <r.czerwinski@pengutronix.de>
Message-Id: <20210315113850.6e3ff16601a355dfffc9fe3d@gmail.com>
In-Reply-To: <20210314130301.620307-2-ahmad@a3f.at>
References: <20210314122804.4128-17-a.fatoum@pengutronix.de>
 <20210314130301.620307-1-ahmad@a3f.at>
 <20210314130301.620307-2-ahmad@a3f.at>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_083854_183239_FC663B0C 
X-CRM114-Status: GOOD (  14.98  )
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
Subject: Re: [PATCH 2/2] fixup! RISC-V: add 64-bit support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 14 Mar 2021 14:03:01 +0100
Ahmad Fatoum <ahmad@a3f.at> wrote:

Hi!

> We don't yet require support for float and atomic ops, so remove
> their letter.
> =

> Suggested-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 133e43af41bf..6df7d9d9eeac 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -6,7 +6,7 @@ ifeq ($(CONFIG_ARCH_RV32I),y)
>  	riscv-cflags-y +=3D -march=3Drv32im -mabi=3Dilp32
>  	riscv-ldflags-y +=3D -melf32lriscv
>  else
> -	riscv-cflags-y +=3D -march=3Drv64imafd  -mabi=3Dlp64
> +	riscv-cflags-y +=3D -march=3Drv64im  -mabi=3Dlp64
                                      ^^^^^
Can you drop extra whitespace here, please?


>  	riscv-ldflags-y +=3D -melf64lriscv
>  endif
>  =

> -- =

> 2.30.0
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


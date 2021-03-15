Delivery-date: Mon, 15 Mar 2021 09:47:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLit1-0000cp-0B
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 09:47:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLisz-0004hP-PI
	for lore@pengutronix.de; Mon, 15 Mar 2021 09:47:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FHLN1UXtI5qWdJG2zo60rG8CF8VMqYOU0asLHwx/ziI=; b=nIUbt9lOXi+o6UyOY68/m/0tK
	c+x0G5/0iKu5tmQFsnNq7beQtdMQcIEMAB0P6b5DeBMw/H9QowIIPfLFZANs0/EmAv6BEwpFGCVlt
	kSsjhsCYzdoBRKM0YA1NYhqGSbCmwviuGktZhq6HDquzR51U2iByXbmLMq3xsTpjyn7H7iUHsRj4G
	Gxu4SurtgIg7AGdXMC9dXzyr/kzgYHq33QtUzGGaACoXjqYrLB1YGM5+0UnGO0raD3AKryYfjaNlC
	PvvWFG0jht3ORYrbXkFljtHNn7SpBo2rewvlyxz6sxFugmufTTwMUdOn67CsjCLoYbJVGp8r3UZVm
	gLFV5If0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLirm-00FHSj-C5; Mon, 15 Mar 2021 08:46:22 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLipQ-00FGoi-P7
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 08:44:01 +0000
Received: by mail-lf1-x12b.google.com with SMTP id m22so55495516lfg.5
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 01:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1fjAbais8UXrkJv0/+key7kVjQ5ph4vmdzMzxC1xSN4=;
 b=kQ3qoLJugjSkURYLduKl4glLKEZ/7RCCae861Dx26slHBL0qUsNEn7yqJM7BpFxLbp
 ZhY9VDPDrcouyYnNTwxDRfyLaqQ+KBQBBGlju2wmUQvqrYkzcKrIK6fwIYKRDUKmbMpB
 oF8AHSa3UDh4XzRkrUYC4EzSECPFpbEgaLfdcVss6no7NjVC03HK2hSSTOeycKlXlbf/
 UtQ9oYtb3SmN22t11Q0xfFuR4SnIWXZyWE+anR0hLSG1Z1JOH+POZSTa9vQPB4fW7TyO
 /SJ1yWGeEbq7pQ/f0TDACSj4UZgGbF+8BBKNufSOb9YRjXUe9cLpZaC0tNZCL6kHWQow
 a63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1fjAbais8UXrkJv0/+key7kVjQ5ph4vmdzMzxC1xSN4=;
 b=edoKo2ibwUPxhgd5m9uhBouOdvllgerIiQ1MCR8/TrJbgrksnLmkykeKla4gHqGeSp
 Gj5C38O1NVUUdYbltAC1+Vhc3P7yjM7rBOzF9BwckC3JxuSmUJdgJSznWfl5m5cM6ZRE
 vwH4YPrW0UTMiBCqosPJE8wGH7Vs0u5cAjgM8+mNeXDz0go359MW4o7eL/ky8cAXkon9
 cZMERHzsLLIa1gesL1ivMP//GQTifp5OzZxxefHRfQgEsD08qN4eW2G4nRTGA/yisBxJ
 gEXtqM2q4vLik/G7uvJapaNIHrbBPMChCG3J1wKS6pxn5/WTA64aS6Ovs2YemTDb5BUC
 8yZQ==
X-Gm-Message-State: AOAM530A3BZQk1nhfgWV9oEqyXhE8rhDkX0jO0QB357s+9qMFOpKK4gk
 lgrWBXAmGyxy+1ilcL06qAM2bIIgWwAFZA==
X-Google-Smtp-Source: ABdhPJwMqeBMPhZpEuckW9ZWSaIsF7gPpkxhvzZmIQL5mEN22pKgzd3EVvhGr61lpM17cwbyQlrrIg==
X-Received: by 2002:ac2:5617:: with SMTP id v23mr7244052lfd.123.1615797834832; 
 Mon, 15 Mar 2021 01:43:54 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id t11sm2639953lfc.100.2021.03.15.01.43.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Mar 2021 01:43:54 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:43:53 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
In-Reply-To: <20210314122804.4128-15-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_084358_106403_F3E9BFF7 
X-CRM114-Status: GOOD (  12.09  )
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
Subject: Re: MIPS RELOCATABLE:  [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 14 Mar 2021 13:27:58 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

> diff --git a/common/Kconfig b/common/Kconfig
> index 36207274f07f..37204fb40a44 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -44,7 +44,7 @@ config BLOCK_WRITE
>  =

>  config USE_COMPRESSED_DTB
>  	bool
> -	depends on ARM
> +	depends on ARM || RISCV
>  	select UNCOMPRESS
>  	select LZO_DECOMPRESS
>  =

> @@ -358,7 +358,7 @@ config KALLSYMS
>  	  This is useful to print a nice backtrace when an exception occurs.
>  =

>  config RELOCATABLE
> -	depends on PPC || ARM
> +	depends on PPC || ARM || RISCV
>  	bool "generate relocatable barebox binary"
>  	help
>  	  A non relocatable barebox binary will run at it's compiled in

Hmmm. AFAIR MIPS barebox is relocatable. Why CONFIG_RELOCATABLE does not de=
pend on MIPS?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


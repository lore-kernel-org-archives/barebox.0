Delivery-date: Thu, 15 Sep 2022 08:17:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYiBX-005TVm-RD
	for lore@lore.pengutronix.de; Thu, 15 Sep 2022 08:17:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oYiBW-0003TY-I7
	for lore@pengutronix.de; Thu, 15 Sep 2022 08:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JGXu/0GyIGpW7+l4mtLSF+LniTgToQSQhpTTE5EZ+0=; b=Xmw7D/gYlNqH++
	TvzeEjorSfAMM0+GMxXbFKlAxLhd9zxbjY4nTz29kKCCDY9Ta4VA7kDJUNrh0CfO4OSpoUhjAbvQk
	/qY6at8t/vFRz8ZwMoHr5j2FMWDqWzqsk0AVDdemdlekXjunhG9WCzn5//fTcKeJ6vnqTF4kOHHqy
	w/GRRIBSSUopzejpafboreFvuHvCumQUkCKMHYfa8C1H5z3JJqYkYR49UFNFJhEVBF0YYJTPOhDW2
	NR8IPzJF7oFhMFgpUSJEpxLCkQg1GvaT3MjQ/kvThcaVLyJeNRFDdrZSh+B2kjDa4mYZcI6Cp9cGI
	qLy76RTaLjmr2N7wQLgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYi9X-001vTl-HO; Thu, 15 Sep 2022 06:15:11 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYi9S-001vIk-7s
	for barebox@lists.infradead.org; Thu, 15 Sep 2022 06:15:07 +0000
Received: by mail-lf1-x131.google.com with SMTP id a2so4707958lfb.6
        for <barebox@lists.infradead.org>; Wed, 14 Sep 2022 23:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=0JGXu/0GyIGpW7+l4mtLSF+LniTgToQSQhpTTE5EZ+0=;
        b=GDORLXvSsTTyvuykPUaNYRuOXLRbuQ0h0ogerT/R+iRnbYYFlDCcRAu6F17+Y94Wgq
         BfQwyU8Q44+0n2jQ2HhSslrX3SpwjA8Hui+PmdTNN15OuDKOK0v63Hk0g+0gGJbaH1wZ
         X869LJS4AZPb1UHQ9ToLT8GSAeiwV97vYkayiqaSP9ZqPX+YRs5HnL1Jjxfq7Fcm30j4
         KoyA2hDKPFk2GlSmcdo4PFHNIdM1+c7TzHhqk8fbGNHYUhTMmfhkfNdBlryPPGnidYV6
         g4uAWUuXWDLML1LmDEt2m+Iq0MwvbYQWLLNvy8pAbna+Z8hfkyHuyUbfFhTekGX/4AyF
         /ySg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=0JGXu/0GyIGpW7+l4mtLSF+LniTgToQSQhpTTE5EZ+0=;
        b=z8EBDJYvAcEkdpWFkijOj6ECWHs1IbNs93GRM9lCrJlPPeTh2z+FfM16x1CmIIZGiw
         8YUvh2DB+m95bCrLynTOgoKTY9cHg43v9CFe0xq/06kW9t05Xr3MG70MUuh/irt1PGFW
         Y8QPt5fI+NKJDXe9gJTJGspCl51DG8ga1DLnLH13nkURkZF7/4CSmL7Qu6j2SZkHbAxB
         NJpTi/DwyGBqNdf/G/bXQiuZA97mRCTGq2DMfQR2YOPGuLCwJEIeFgzecSunDBtIIclq
         W81Cl+ms+mIhvypU2sChtjjCS2kHP7JXz1/mLDKqXY+0MnjOn7cVoyT+L0TLvosoTNuH
         fIrg==
X-Gm-Message-State: ACgBeo3gEnwaElz7DXS8ndfP1o8JylbCCoA5t5rdQTeFtjP0Z3A8z8ak
	pEfYt1W7kr/gsNaGvQZ+H9c=
X-Google-Smtp-Source: AA6agR7Qz16mRY847Ows7vdqinbx4OM+Y18bSi4zwP5VjI4EG8Z1izVLyGrFZ/E3ZAE12WrMa+whUw==
X-Received: by 2002:a05:6512:2349:b0:49a:93c6:7b96 with SMTP id p9-20020a056512234900b0049a93c67b96mr6743042lfu.318.1663222501508;
        Wed, 14 Sep 2022 23:15:01 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24bd0000000b00492dfcc0e58sm2098489lfq.53.2022.09.14.23.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 23:15:00 -0700 (PDT)
Date: Thu, 15 Sep 2022 09:18:20 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20220915091820.aa57cf6dd4cabd1878e6d849@gmail.com>
In-Reply-To: <20220912084627.84575-1-antonynpavlov@gmail.com>
References: <20220912084627.84575-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_231506_303618_E710F2C8 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] Documentation/conf.py: fix copyright years
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 12 Sep 2022 11:46:27 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi Sascha!

Here is the barebox documentation generated in my gitlab CI/CD system with 'make docs':
  https://frantony.gitlab.io/-/barebox/-/jobs/3029093142/artifacts/Documentation/html/index.html

and this is the barebox documentation from barebox.org:
  https://www.barebox.org/doc/latest/index.html

The index.html pages look different (different color scheme is used, no barebox logo in the left top
conner after 'make docs' etc).

Could you please publish an instruction how to reproduce barebox html documentation from barebox.org?


> N.B. N-dash is used!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/conf.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/conf.py b/Documentation/conf.py
> index bcd8633c919..5fb8b07c380 100644
> --- a/Documentation/conf.py
> +++ b/Documentation/conf.py
> @@ -44,7 +44,7 @@ master_doc = 'index'
>  
>  # General information about the project.
>  project = u'barebox'
> -copyright = u'2014, The barebox project'
> +copyright = u'2014–2022, The barebox project'
>  
>  # The version info for the project you're documenting, acts as replacement for
>  # |version| and |release|, also used in various other places throughout the
> -- 
> 2.37.2
> 


-- 
Best regards,
  Antony Pavlov



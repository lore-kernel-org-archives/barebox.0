Delivery-date: Wed, 15 Feb 2023 14:45:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSI6Q-008SCZ-B3
	for lore@lore.pengutronix.de; Wed, 15 Feb 2023 14:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pSI6N-0003pQ-Nh
	for lore@pengutronix.de; Wed, 15 Feb 2023 14:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3NCHUWs2Ky7Kv4kxKQdEorn7AcUoGanRqu5eFpJhWT8=; b=XOGSOanYb7CRY1W/gYgfkEp3/X
	KovAs/6umb0NBgrKfp2QFjHe8Meqw89NnH/Td0kf7LtxXdyc0MW7I3LHcXvTK8mdGvStf6SDFzOFV
	N8ioYmPrwCfLHBj5EWgFeX1G0Ew6zjjDjQAEm9CBGVsnfYZ61Ff07K2d8gfdUjGvR/wui8UjPhChf
	6cQeAQRQzGI5mvFWuBBQgdbCLJ9TgEUTx9F+tgVgXQPLYG8tbkkUcjBDMCErAAdnlc40pas5uV00b
	o8EmF2t7AjUuiOBIQVsEjctDvz+KPxOig6u54nC40EgtRxeQyHvDIHNdvHOfIQKlVbb5S2odaxTN6
	IzBrbSUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSI4r-0064ge-T0; Wed, 15 Feb 2023 13:44:06 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSI4m-0064dZ-33
	for barebox@lists.infradead.org; Wed, 15 Feb 2023 13:44:01 +0000
Received: by mail-lf1-x12a.google.com with SMTP id o20so27686028lfk.5
        for <barebox@lists.infradead.org>; Wed, 15 Feb 2023 05:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3NCHUWs2Ky7Kv4kxKQdEorn7AcUoGanRqu5eFpJhWT8=;
        b=hIJJYgONt0srORv2vghJ6Ws2D2vjVh5DRjbdvdeZlkIbdtP9sMyj0qhYR+3gLRiSN3
         Aw7/bAgXOYgO1NZ6z3yLbqp/QpFclHkX/7emm27FX4dcsAeUS+wh95KOo/19rLlGFCY0
         6VQ5sPmjUf9wLfopyabpEfMTrOaOQqASrvcCw9PSm/zGmv2v6ykuocpAtxZ1anSG/PHS
         CSAfIH0lsl+WQsgJGUbIraZjB/xOpN9S7MtBVDheQytzmFMy3N6zZAAfOERTQHxr9g0w
         3zm1pIzpRwtKhSNFFy+CynX4ltGUm/5PGGGRqWoL3Zlquq0W29IhYqLo6sg5BWeU75kH
         ncdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3NCHUWs2Ky7Kv4kxKQdEorn7AcUoGanRqu5eFpJhWT8=;
        b=yIB23N+tCPAXckTK7YOontFcYfQRtFpB74dJI0tl5GV/7RU8LNymgqLp18kN6cohFe
         KsqppH8mOnpK2mNrurUM/wg1TmYrY3gSsOAPg+l8AlNMbg9timNCYHUfahHyamE9rF/0
         meiEFpKcL1J8NJ2L5MAirElbyh2K0DtsRLb+4RZ8SA2gCZ5oouXkEwhOwMxgsSPKlA9x
         M5y85ngQSI9VxC7kzX1Lqycd0qLHrha4VSJyVvde+3k1S99a3AL744nA21ZRmLtZW3Zm
         IapTf58XKwEvtCBEW+8+A4ZGUpdM5KznLw2jvk2XLWn97g+rfRhTEIJ1D0F6Vfg8awyx
         XCzw==
X-Gm-Message-State: AO0yUKVlAIwcmf0Jhh187Lp2ZKC0s43YZ+O727rBYixO8dK1cnZrEvs7
	q13ToftHaeR3OMs8PvPWV+bDj+mbul7FFc0IeuMLjkD3tNo=
X-Google-Smtp-Source: AK7set9yyZb0vAFvxwU0GbQF2/p1S0G+XPQGh1QSIf2KIPZOrUrNvlnYjGOUqukpn9F60GhFX74nq43Rju2ny3t9CPE=
X-Received: by 2002:a19:c215:0:b0:4d8:1c0e:bfc7 with SMTP id
 l21-20020a19c215000000b004d81c0ebfc7mr537990lfc.13.1676468636491; Wed, 15 Feb
 2023 05:43:56 -0800 (PST)
MIME-Version: 1.0
References: <20230203135011.2061939-1-m.felsch@pengutronix.de>
 <12e370a3183d04572da1c5749d8e64dcf5091a0c.camel@linuxfoundation.org>
 <acf8b79c23675a2b4c7225e55e4ab369fbcf7f54.camel@pengutronix.de>
 <7f5ebf2315c969ce7c76d024ec373f45cc8eff3f.camel@linuxfoundation.org> <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
In-Reply-To: <CAP9ODKokQpGL3ttukqRaq3-8m0ci7qp8mckbgudGJx1HOu-fPw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Feb 2023 14:43:45 +0100
Message-ID: <CANNYZj8_RkjMASpozi+oSu3XOHCW04n9YUC5UgHKy+2vm=cDrQ@mail.gmail.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	=?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>, 
	Marco Felsch <m.felsch@pengutronix.de>, openembedded-core@lists.openembedded.org, 
	yocto@pengutronix.de, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_054400_177998_FBAF4A08 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [yocto] [OE-core] [PATCH 1/2] barebox: add initial support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 15 Feb 2023 at 12:22, Otavio Salvador
<otavio.salvador@ossystems.com.br> wrote:
>> Fair enough, I'm open to the idea. It would be interesting/useful to
>> see if anyone else in the community is in favour of this or not. I'm
>> sure you appreciate why we need to ask the question and why we can't
>> just add everything! :)
>>
>> The community usage does appear to be primarily phytec/ptx.
>
>
> I have used barebox in some projects in the past for multiple customers. It is a solid and commonly used bootloader. I consider U-Boot the industry standard, but Barebox is also widely used, and it makes sense to be part of OE-Core.

I do not quite understand why barebox needs to be specifically in
oe-core. There's a well maintained layer for it:
https://github.com/menschel-d/meta-barebox
so once all those meta-phytec recipes are phased out in favour of
using that layer, there's no fragmentation.

Alex



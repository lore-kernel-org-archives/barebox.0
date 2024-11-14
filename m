Delivery-date: Thu, 14 Nov 2024 18:51:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBe0H-001w9e-22
	for lore@lore.pengutronix.de;
	Thu, 14 Nov 2024 18:51:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBe0H-0007RL-3M
	for lore@pengutronix.de; Thu, 14 Nov 2024 18:51:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k1rve+4c04hoYzFTWhFqMZ/fcX6FoShMRfsyJrkNuCc=; b=WdA+nACfkNtr/8FxGp/Nn+lMgE
	c/dmXPOXHxgw6Nd2c5+kxKaRE/pw0oZpuE3ECNSwGdvw51UQoLiEvw5iF//OJr10TUdsC4cESaJao
	4LSf4LUHx5IJ0zGXsPApxeg1JwV8Z9pKGX0/757BhLYkKjz/mmH4dxXAdPCkc2/1Wcd+NZxl4OFtP
	5ZloYe+FWFP9jufynBcLBOIYdSoxudLqEPUWpnfdCfP5e7yUzxA0q7owCQr0045eDbhrq+Z0fp3/Y
	LHNhf+KvR1Mv60OZUq8sovSFmNLpg+ScO//Co1up3iQk/VkxnFlk4vZIVg7SVCmj59GDdull43bw+
	y8gDxc5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdzl-00000000OC0-21lC;
	Thu, 14 Nov 2024 17:51:05 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdzj-00000000OBK-1gtd
	for barebox@lists.infradead.org;
	Thu, 14 Nov 2024 17:51:04 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5cb15b84544so1206519a12.2
        for <barebox@lists.infradead.org>; Thu, 14 Nov 2024 09:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731606661; x=1732211461; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k1rve+4c04hoYzFTWhFqMZ/fcX6FoShMRfsyJrkNuCc=;
        b=MtmW+MdnCDF1ogr8tFbl4lEAwhtUEl0gzqB0cVqZsBa/nVQUtwXYsB5BOy6TPRLgBI
         yDEaSe6DZNb5Z6Lplpc+wPesNWHIEojsWn1NP3WOa60mpbhUxTKMmraqKdA+g8MpBanN
         CqJiYRcKgdn5x2hSIYCvgFiTgWTebTpIp5Mq5NcG8qBIM+ttc3eovQ5WPIfwgsFLmXHV
         ffsqglSjtZtgquRxlvWUVIJO5evptXq89flsm47EGYIGsg5VHTLGp+e62HI1HGTym5C4
         3QRvV85Bno6DYioNI7J6FrPCiGj8UcfFuTeKL0ZCD+3xLWpDoVAusGtXGrpxe8I1bGp2
         qFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731606661; x=1732211461;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k1rve+4c04hoYzFTWhFqMZ/fcX6FoShMRfsyJrkNuCc=;
        b=c5oodDjpOUjOl9x4TJfzU2mnUgzOqOI0GWSk3DfpfXuPnSzJeJqUS23/TNhq2wpqby
         rBp0GJpUqcsUOzOesEkhTgJ1WS91JNlK9sYR5pgQ0Bf8RhKVImz3OSe//tQh2E/1ZY7I
         zayP8VCFjmWrm7Ze4s/CCUO3+letZD4gzmLRvGgdjMJ0PzH/B/RbHSpVTJfHRSdITXiI
         QHVhJ2c4eyDwsqUSRJ+V5aJIvuECQ3pxO4g552wWaiyp2Z7KOGLzWwosN4dlElmoqh1G
         IAjOpATeZhIbvI066oMfUEblcjX0I4tF75aVQqYAd5D0mS/g01giexycSCY5lHd6l4xd
         qkrw==
X-Gm-Message-State: AOJu0YzeDan5PpcE5YV9WuM3TbE7vuHVZaY4N4jDa/goAMrKbOchDFHI
	oCblD8NbaLF4x7e1CtkzQ99qDSuY71bDsX27RZD2y3VFc1hsOjF0Bq+RWmHFuoYlb++XnN4TFz9
	NvUUTh8RNYLxAaIBLjRXnydoNmjxz/5torT8=
X-Google-Smtp-Source: AGHT+IG0sguuehq3JUWYTWn+oJpKfR2KBOWzLWIHtuJxJjMd0c+4KhTS/ZLl3wB0eQHm+alsnTkXHuKcthou34vqXwc=
X-Received: by 2002:a05:6402:2355:b0:5ce:fa47:18b6 with SMTP id
 4fb4d7f45d1cf-5cf77e9b55amr2513269a12.12.1731606660918; Thu, 14 Nov 2024
 09:51:00 -0800 (PST)
MIME-Version: 1.0
References: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
 <BC1F52F5-B2FA-431A-81B7-057317A89C47@zdiv.net> <CABwgSGY3SQGUoc3xY9XVX3aHwRV6s5xFuKABtgCf0vT26-1=_Q@mail.gmail.com>
 <CABwgSGYcFoMncRWoyOjG19K2GiuMjrEomNGvG3E2fEX3wiM=RA@mail.gmail.com>
In-Reply-To: <CABwgSGYcFoMncRWoyOjG19K2GiuMjrEomNGvG3E2fEX3wiM=RA@mail.gmail.com>
From: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>
Date: Thu, 14 Nov 2024 19:50:49 +0200
Message-ID: <CABwgSGZ88oyWPQwv=5E_OkMV4Pn1Usk8M3MVAUTnFojzS8NLxw@mail.gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_095103_437665_8978C26F 
X-CRM114-Status: UNSURE (   4.57  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jules,

I think everything you said is correct, except just the last line
because strnlen
returns the minimum of the length of the string and maxlength + 1 (It
will not access forbidden location).

So in my opinion it's not a bug or suspicious but only unnecessary.

Cheers,
Abdelrahman



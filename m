Delivery-date: Mon, 05 Aug 2024 15:36:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saxtO-006VMA-0b
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 15:36:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saxtN-0007tY-Kj
	for lore@pengutronix.de; Mon, 05 Aug 2024 15:36:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JT74C/AKcpOLiqG9wTWhFxHmqEpfVYmPhHYY5JLezAM=; b=Pds8lzck5oYyh83fF28TaY/0FM
	BJr557+VoPoPYkiVl8W/fI/DJfvi/fiQgCEF2FruJWYahUenq/Z7JCWgPTmpagLSZzg9xhlIboekl
	h0/2zXgIrmQwfKUAc13VFMGVilp3VsDjuzLN2uWf6qCDAr9o9/c9Oq+DlqAmiRWfdrjy57ebBIPtC
	kieqlVHV9KQWShxR1rmdCcIIKfErVcP7CoBLQtGydy4GMBwiExU8dbnJ2b5+2dfzIG16vp/YqNn4Z
	6SmItgzPnh1IuS4r9CLSBSXxDmdn8VjEF5WcdeUZSQn17kMLX8S9tx/9/oDqx0xYwiSVjR2S+cLB7
	mA9QFhag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saxsk-0000000FxcB-3rvD;
	Mon, 05 Aug 2024 13:36:14 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saxsi-0000000FxbB-1YIV
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 13:36:13 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a7a94478a4eso937694266b.1
        for <barebox@lists.infradead.org>; Mon, 05 Aug 2024 06:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722864970; x=1723469770; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JT74C/AKcpOLiqG9wTWhFxHmqEpfVYmPhHYY5JLezAM=;
        b=dp3SHMaoDrj2zl38+Ml/athvTVEXScHJXfIy/ebiZ5K8i1346CARIAWcJB1LgQyVL6
         BEu/0LdQPp9AvGK1dDTdibE+73q6vfPJxcgfaclK5xov86Wjb2epEJ1z0nPbjLkYRHqH
         JAcpoQ/Bn/CZFQ0uVsPiHxVJXLM9cEAORDM1Lm8ZQrf7cQGH1uTAtZgazvfxpUfdJpZd
         I8XcVD53X5F6FJRYhmnuipxEMo8OYbioReN3EG9jzJ5mhJGXP8DVAd/ZI+bSHpaQLSZt
         32ab57hYqkMNh93l/8nxR3ej1EwvFLbPeP7yYv9b8mvwdUTBY3mcrzucBF06LhF/ZxJu
         OVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722864970; x=1723469770;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JT74C/AKcpOLiqG9wTWhFxHmqEpfVYmPhHYY5JLezAM=;
        b=NHFJjRwkDSwSawl/GGh+mjILHHLdjQmWyWxkxz2E1z1MHonPqQczljalcnw2ISBDoO
         t6mzmiC4eKe5e8gVjAMoYCdVBYzKR9InFG2h1AOqLL0hPA1zfDBwbYM+k+XHZUY4qXIu
         YtdUvStklzX4BK7nuLNp6FWYuJP8bsIYa6/Qie9Y60FJHD2zKhrqz2jl+JNIYYjBP7s8
         tU0CFy9kp7Z1izt2k2ByZKj5rZeQ/jwdO5/oxwYGDyVR43wOv3+jxt3m7SHKkMdAAs/H
         lrK1HswF4e/Mhl1y1ZJyqR4gsqZ8ZF3/K5YHGOjYH+j+NEDK0FUtJJIcgiPh0qjTR9NZ
         +qoA==
X-Gm-Message-State: AOJu0Yz/xjENerXCLcGaW5ZlvBn6GahRSlnNdI9Dn+eiUf9JLolzoHJH
	aTpd0lZskhanDUs7Bj/K3ZxSe2DKu5zwCRJPMcGfGQxdJAFiO83PUtm0OQ==
X-Google-Smtp-Source: AGHT+IGjwjpVFVu18FQkW3LrL8mlHUqXKyP0PxpPL8Nps/j5Zh+AkX85pCEnOM1ImOisdVEyQqvOww==
X-Received: by 2002:a17:907:7d8c:b0:a7d:ab62:c317 with SMTP id a640c23a62f3a-a7dbe66b624mr1075816666b.30.1722864969699;
        Mon, 05 Aug 2024 06:36:09 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5b8f7a32945sm4313765a12.13.2024.08.05.06.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 06:36:09 -0700 (PDT)
Message-ID: <285f945e3dd499c520723ca356332319d6457e24.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 05 Aug 2024 15:36:08 +0200
In-Reply-To: <ec161afa-115a-4c2c-a9de-9279e3b8344e@pengutronix.de>
References: <7abdbc190f22b62372d0ae76a943d6e5a1467b05.camel@gmail.com>
	 <ec161afa-115a-4c2c-a9de-9279e3b8344e@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_063612_442622_B797B075 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: bootchooser: avoid write environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Wed, 2024-07-31 at 19:51 +0200, Ahmad Fatoum wrote:
> 
> On 31.07.24 16:35, Stefano Manni wrote:
> > Hi,
> > 
> > I'm using bootchooser to switch from a partition to another in case
> > of
> > an update done in Linux userspace using the command bareboxenv.
> 
> You will want to use the barebox-state backend, not the regular
> environment.

barebox-state with a circular backend on spinor turned to be the best
solution.

Thanks for your hint,
Stefano




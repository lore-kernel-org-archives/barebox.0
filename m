Delivery-date: Tue, 23 Jul 2024 14:44:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWEsw-0028vw-15
	for lore@lore.pengutronix.de;
	Tue, 23 Jul 2024 14:44:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWEsv-0000dF-Ov
	for lore@pengutronix.de; Tue, 23 Jul 2024 14:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+G9TEGdbG3urXcLpLLcfHmtL+6r86JWdKukA6U6QsI0=; b=xRe5vWKfpTfGpB36UBBntp1C7s
	gpdR+V08CXihrO8bvqK2cyID7fupxeEfuwtbYLVQXdN9rLYn+nPXZWZncEvP+gPKon5Six3CA3a5P
	Q9CSkN2ICbjoj2qVJLR6l+2cmbl2rzhPwJ3Z4sDqRxHgvzgKGHdp6gWb9+n+msk9Z1nU0cS2BKMfn
	QhX2dmlAugtYEPbqzI4R2kiTAOJthE8rSrUi3vF6eTMliJBwjFahCDtWEDb3JxLfOaSlbDoF0/aWy
	NV2VahzP1cQJHPMzss/CHtPAyMvPtsnqlKQNKwH95Bx6hKQg3fdw5yzf76DHaKBAZZ5q8o5bcAVfo
	2PsfyzGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEsN-0000000CPv8-1zPz;
	Tue, 23 Jul 2024 12:44:19 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWEsK-0000000CPuZ-2WtW
	for barebox@lists.infradead.org;
	Tue, 23 Jul 2024 12:44:17 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-42797bcfc77so40792775e9.2
        for <barebox@lists.infradead.org>; Tue, 23 Jul 2024 05:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721738655; x=1722343455; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+G9TEGdbG3urXcLpLLcfHmtL+6r86JWdKukA6U6QsI0=;
        b=U/4pVBEua0Jd5NhU5MA61siY7dDYcHRX/X/M2tTAHbcHgKbP5SkOsSGF+PFBc7zSsv
         0+CPaQ9JHlb7JArqSHEZ1KZynJXZwArzzwoZHoHagJNiPf3s9tlM4vz81G753oic6enp
         8iaPd1xGWwdEwls9L3npw40GQ2u2dYF0EQKV/YjC1VbH9oL4hpgDuhUcpsaLmWODXaTY
         aOuHUVcYqvj6AOQg7SAdzO/v77XmYQ1z+Ds1KL8tL6g6tJnrqdpPUoIX3/jKv3JA/1tw
         vst3SD1dwbkBa/NxC21YeryypIN8JWb2wRStvTGKhkD88Lu/lP1tpJz2cjg1FSoNmPPg
         gtLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721738655; x=1722343455;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+G9TEGdbG3urXcLpLLcfHmtL+6r86JWdKukA6U6QsI0=;
        b=IUfVLnrr3WqyArkspN1yr94guDjz/we3T0l5dlRvtXgScMYSKRoG3cmJaE3rsgcH8E
         6qW7ygd64RXa578fk+H/Ojt1WrU7WI2FMrbU5BAkSGn/Y1OKa31GDvyNvkEdXv83Krbl
         ZcwHlQuuSvh3Tke7K514AeiwnI4U/CsBV1TYpKFTG7GKUpTKKHK8ZIALUil4jmQ3+PgX
         qgD7AS4SU7+nN4WLjwu2kVxdVF2Weyax4rdlys77MZAUW86WxhN7LlCYdbx9byz3jYi6
         NAIphgyA2eU6MtKlZubahpmUvDL7kUtTLlGipocnVGjqWKtmMa6sFAogB6ONV0vmCmgK
         cJuw==
X-Forwarded-Encrypted: i=1; AJvYcCUlIq7Rp57/IXcNzyWNzltsgjsxm2OncMrRqf310VLCL5quGVqFdQ7cvpJf3D7uCO3AVovJy2R6gJxWUZMqLoX2XCHrez2xROBBX4g=
X-Gm-Message-State: AOJu0YwMw0E+fudGF4suHF7mCenAtRhNOYh4NwVFhzxRh2XL3oy8qrfJ
	Pbmr715ehe+s3kaMxznFyowOVpoo7m5yfx6I0vfBkF0j++x7sZkX
X-Google-Smtp-Source: AGHT+IGc63saSxVmAEK/kOUGW/a4HZYRZ+KkMrP5b3lrPM0isE1L8cshxV4KMVJzAljBQKMjorZ3ow==
X-Received: by 2002:adf:f0c2:0:b0:362:d382:2569 with SMTP id ffacd0b85a97d-369bbc69de9mr6103814f8f.44.1721738654744;
        Tue, 23 Jul 2024 05:44:14 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36878684204sm11440544f8f.2.2024.07.23.05.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 05:44:14 -0700 (PDT)
Message-ID: <8f4d5c086afb381b17a2289bdc7e22129a51d9e7.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, 
	barebox@lists.infradead.org
Date: Tue, 23 Jul 2024 14:44:13 +0200
In-Reply-To: <c91faed04802d13072ac42b233216fc5cb414d4f.camel@pengutronix.de>
References: <CANn9nbgEYhJEPCZs4oQ-TBLM5OFz-076yiwRCYzewPJVfoiKMw@mail.gmail.com>
	 <c91faed04802d13072ac42b233216fc5cb414d4f.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_054416_677655_EE9E8CB7 
X-CRM114-Status: GOOD (  12.43  )
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
Subject: Re: HAB warning on imx6sx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, 2024-07-23 at 14:24 +0200, Rouven Czerwinski wrote:
> 
> This is a common warning on some i.MX6 devices which indicates a CAAM
> RNG self-test failure, see the description in
> drivers/crypto/caam/rng_self_test.c which should be run by the
> bootloader to ensure that the RNG part of the CAAM is not faulty.
> This requires the CAAM driver within barebox to be enabled.
> 

after enabling CAAM I see:

  rng_self_test: RNG software self-test passed
  caam 2100000.crypto@2100000.of: Instantiated RNG4 SH1

but the HAB warning is still there.

I read from drivers/crypto/caam/rng_self_test.c that the warning is
a false positive due to an incorrect implementation of the RNG
self-test procedure in the boot ROM.
So running the RNG selftest in the bootloader shoul help find
real RNG failures that may be obfuscated by this false positive.

Is correct my understanding?

Best,
Stefano




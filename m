Delivery-date: Tue, 06 Aug 2024 10:34:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFdt-006lk9-1D
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 10:34:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbFds-0002Dy-Jw
	for lore@pengutronix.de; Tue, 06 Aug 2024 10:34:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4qWlboSVwDHUXEvnAwMb3/2F1Ruvc8QNfT79rgjZpxw=; b=T6ccocKYrxDPmMHE0Tu8NCEt9J
	Lsr9Mw3P/Ip/jphZFwmQQ6oot5/+7wVddjUDjhtFejhd69lXXoJVfxH9FVaGDF11qe6SPfd+hpgfz
	ZYUZfdVg30LE0MwuMZ3fX8Z/E6JP9Bdqji75DDwtQmotQx388+wkMqRkuB9CkZ2TUhwD572f2t6XY
	61UA0STRwKEIkNSr9P701Ws8W8jRwWCCEoBV1UsNHZaIZ20zAwCG7wq8ypDtInGjXS3lJNVLrAObP
	1aDltalMneLSyqv9xyoAbtRb7Qcs8ARJO9qtywt8sHzSgZ/OJYUHt44PlbRXM01kkH7xBZbera6II
	2caimd0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFdP-00000000xW0-1wb3;
	Tue, 06 Aug 2024 08:33:35 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFdM-00000000xUw-0Uc3
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 08:33:33 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a7a975fb47eso47102566b.3
        for <barebox@lists.infradead.org>; Tue, 06 Aug 2024 01:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722933210; x=1723538010; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qWlboSVwDHUXEvnAwMb3/2F1Ruvc8QNfT79rgjZpxw=;
        b=cNZdQaHpvw8FcTXVKP4yjFhjvWQc/h2Wuhtf/NIApg67+xOXvih7uN28MThSSeKTn7
         ZHVMg7jUUA/lPbiKr2sNBxSJ1oYCi9TtQDHaBbbSNL8rVM0y2io9OhUSaVqhaqyshA7d
         fUV5Ps6fAvivQzKrVb1wMAMfxDPoYuyJMt9Yh7UBR55htzhFpFuwepiU7MbHgdApB1p5
         2Oo98OXOL5dxmeNaAOyRCPofQj5h/jN5QNQxGDQ/YfRCiKV/ZCou72rbZ7aCARkHnapq
         0W/8RPXQD2AnmoteMGwtPEMas2LcRMOZsPmy8rpiW3P4vTpg4zh8oGz1Hq7FPglLU4zi
         j9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722933210; x=1723538010;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4qWlboSVwDHUXEvnAwMb3/2F1Ruvc8QNfT79rgjZpxw=;
        b=r+34Lw8McGHd7AqxXGZ61DNmRdabh6aQ93jY0LeGbYaF5/m1VgTz6ZvhgOljEO8Y6r
         4IgtFHG/j10TVwtuqxcvygqsHI+i47LTruyoioYjoRM1xcgjAI/U+w5yU1J0tuOBUP+4
         qe5VUzAI2H8wDifR610aJ3vLV8YC7tHsJGjnonbdY6e8P+nAts2SwlYz3Cuh3ov8apjD
         mV+PAXhqh6juOmS+GgKeK7TfiwoYfyNNPWnyOwpTqaUiFNXA3OeCl2SG7GATsqz/CbbW
         gyCGtd64m4f+x/zJ0rAPTvvxNy8kbkhZVj8eNAcuNg6pZ7S+E3HN2rCQ5AmxiyI5pGS+
         zD6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUEqVeTAOSdODwd9Sr1YltZViS1BA/r6ERu9i6sCxLIuYrKwjOgIwvgZzH6S3KJtIOUPME8EHItMO6j4MSfts/OmbS/NRym8gqRNF4=
X-Gm-Message-State: AOJu0Yxwqu+VJOYPUj2lZRwwIcok7pGK3WZ1gSeCQWE+f5d/XLdkKXkx
	ueTcVj6ZVSdRtB6XsAwF+I/RrwhfoUAN8bEjLqWIws9xzYAD731w
X-Google-Smtp-Source: AGHT+IEFGe6enXqRI+ODAITQsohu1DrkpSgc10QOrph9aTZsqhE+7uWYJ8YtuZcw/Oldl04SFBAzuQ==
X-Received: by 2002:a17:907:9707:b0:a77:c824:b4c5 with SMTP id a640c23a62f3a-a7dc4de2d46mr820486866b.18.1722933210002;
        Tue, 06 Aug 2024 01:33:30 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9c0c0casm523696566b.47.2024.08.06.01.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 01:33:29 -0700 (PDT)
Message-ID: <b9dc55a32ce3b753c20a47824f0efc8b1b19d2ee.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 06 Aug 2024 10:33:28 +0200
In-Reply-To: <8f9841c5-8d32-43f7-a663-6e2ca869f118@pengutronix.de>
References: <ca751c63f894078f566cf8de12d3f5a81ce252b0.camel@gmail.com>
	 <8f9841c5-8d32-43f7-a663-6e2ca869f118@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_013332_190366_1E664F31 
X-CRM114-Status: GOOD (  34.25  )
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
Subject: Re: short entropy delay causes RNG hardware error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Mon, 2024-08-05 at 18:56 +0200, Ahmad Fatoum wrote:
> 
> Do you have rngd enabled? You don't need this anymore with a recent
> enough Linux (>= v6.1 or perhaps earlier).
> 
> This doesn't fix the underlying issue of course, but it will save you
> some CPU time.

Your speculation that rngd is running comes from the error pops every
10seconds? I cannot see any systemd service related to rng running on
my machine. How can I disable it?

> 
> > And if I try to read from device the
> > same error occurs:
> > 
> >   ~# dd if=/dev/hwrng of=/dev/null bs=1 count=1
> >   caam_jr 2141000.jr: 2000005b: CCB: desc idx 0: RNG: Hardware
> > error
> >   dd: /dev/hwrng: Invalid argument
> > 
> > No errors are fired in barebox where the RNG self-test is run
> > succesfully:
> > 
> >   rng_self_test: RNG software self-test passed
> >   caam 2140000.crypto@2140000.of: Instantiated RNG4 SH0
> >   caam 2140000.crypto@2140000.of: Instantiated RNG4 SH1
> >   caam 2140000.crypto@2140000.of: registering rng-caam
> > 
> > Here [1] I found that enlarging the entroy delay may help so I
> > tried to
> > do the same in barebox by changing RTSDCTL_ENT_DLY_MIN from 3200 to
> > 4800 and it succeded, I no longer see those errors in linux and
> > trying
> > to read from the device works perfectly.
> 
> That's the correct resolution, yes.
> 
> > The strange thing is that on another board based on imx6sx I never
> > see
> > those errors.
> 
> There can be quite some variance in the time needed to collect enough
> entropy, even for SoCs cut from the same wafer, so this is not
> unusual.
> 
> > Is it something new to you? 
> 
> This issue has been there for a long time. Optimally, NXP would
> store a suitable delay value into the OTP in the factory or at least
> public suitable initial delay values for their SoCs, but
> unfortunately
> they don't.
> 
> > May we change the delay? On linux-imx 6.6.3 3200 is still used.
> 
> The driver starts at 3200 and increases the delay in steps of 40
> until
> it reaches a suitable value. There's a maximum (12800), but it's not
> used as that would slow down the RNG. Thus the search at probe time
> for
> the lowest possible delay value that still allows instantiating the
> RNG.
> 
> Unfortunately, a successful instantiated RNG doesn't necessarily mean
> that
> actual runtime usage of the CAAM won't trigger errors.
> 
> Increasing RTSDCTL_ENT_DLY_MIN to a value appropriate for your board
> is
> thus the way to go. I think it would be appropriate to add a device
> tree
> property, so the minimum delay value can be set on a per-board basis.
> 

Got it.

Thank you




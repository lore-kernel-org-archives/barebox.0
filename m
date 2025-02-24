Delivery-date: Mon, 24 Feb 2025 16:15:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmaB7-006OTP-0Y
	for lore@lore.pengutronix.de;
	Mon, 24 Feb 2025 16:15:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tmaB5-0000ph-VE
	for lore@pengutronix.de; Mon, 24 Feb 2025 16:15:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3r2rZJwOedNayQhtkUbeDg7cPPoF8eJAC6cuUHHXaQ0=; b=lMGEluOhhKM3WhvyvrF1lTbT9t
	Mpyn8mhxsE2c8PBrNjgkwLHHTROo2GdPSGE/3s8W6v7tcShEvRRg6oEZrwXT0kiLqvl33EVAlHcTV
	2uOxxeXpCCELIh72GgufVlS8GUm/CJOtVgWE8feAvdcFzg5wXp/bjarGAu8oRxe6GDIsVtKTOa+Ag
	zuTNnSbeE/eDYH9Z+E8uXNTg+hbqV+wjcZOJOLFx5QRTCIZ93gGgaH9YMwHdLsqZFV7LedMD3xU7x
	FJc6HSEM2Kjx7h0aSZZfn4QVh+JllbstSl4DK9xZERNP0Tq0YI9j3iF2wu29NcXZEERUqo35CVpsp
	PqZpRVBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmaAV-0000000EFBj-0kfM;
	Mon, 24 Feb 2025 15:14:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmZnI-0000000EAoy-0djs
	for barebox@lists.infradead.org;
	Mon, 24 Feb 2025 14:50:53 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4399a1eada3so39338375e9.2
        for <barebox@lists.infradead.org>; Mon, 24 Feb 2025 06:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740408650; x=1741013450; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=3r2rZJwOedNayQhtkUbeDg7cPPoF8eJAC6cuUHHXaQ0=;
        b=QMNHyU5AQ+BZpmmrnyRfAFBewVsWvqdGPeKtLKmkjgolOfble4yhinndknx48ctjgE
         1hevHcl8JD3YJSgoa3mMXzJ5/EjoAvcT4Ab4iM6WPrN4GB0qz1t07FC6nVtRMe2zk8Jr
         NqH91ipxyRZdU8p0x+QK4aigbC3f5JjtYGQG9Pzl5pnYUHHFiJKhcnRg+iNTRB1S5sRz
         A9l1QYFyk27cOi50T7d17sluPZ9oH1llMkPIzgTPQxum1yzgAH0QuNJOoNdcYoW++1Op
         3ixrVOxpkE3Z/rUmbGfRZY4thP7qM6syt6we823uYH5SxrmuHuuAssgftmPBLhWVitZg
         vHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740408650; x=1741013450;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3r2rZJwOedNayQhtkUbeDg7cPPoF8eJAC6cuUHHXaQ0=;
        b=AIrr45sxe/4CBlgFAnmuGPR3yMdu/5f/HUSkezQQoDRdBqOC8dV2LeSfKeD8xkIrE5
         6JHeymnTX1pf9+Z8JLnnNsDagQTq7WXKTZ3H9fo+rsWwFr019zoycAlxX0tFMfHiqyws
         dbA2vMRk3ewd33vMOdeh7s0gAW+UdhiWk2LAYtpA4MhJmo1zOoSNTHFsewLCiDNLE/bG
         3GfavAK+E/IgJN8hiOMdkPz30E0u2v4jbIbGTjUSG0cKwDHWIXpsa7XF4sg33JBGVL6N
         A6aknScrHPUAwsxSZvhdogLi/4EE6Z2bh8BVi390vNVKyGmXuCZ3AWbed1Dz9bXc5Nly
         u02Q==
X-Gm-Message-State: AOJu0YxLhsCpTcK4BGyBhZJE42mnKZsZt/Q2xdNpKgrSEadDeGDFPZVx
	0iKGvtSgclVgFJdb9Oe/jQXg16+5b2GfoByhW9hhUa1Zht1s5EFR
X-Gm-Gg: ASbGnctMa806YqGc2HB2SRTrzJ41TKooWIBG2jLb+eNYbaM/4k/hrzIxHwIQmOj2ZWh
	6DDYx4ADnXaVPg+OTifKGbIKZ3HMeQBPnaK17dm08h2kYcZNUy9vVCkngJcF014W6750NTsovEE
	O3kCyYgEvhVTHWIybkiwqFyQQQSHh/rkEzp2Phoujv+2ITtg8dIOOtQfvOiW5Kxkvu8z8XCm/ni
	REopzUIN/e4UvWzi5Io6RwEm/DIcDmOWXLvJAQ+SsW7OXnVRj2euUc3n0CfpBB3cAgPqYs+lJu1
	rYR/rbDS/w2oSaAlisFxch0pvyiMOCF5v4bfYYUCk14xERVUME1bFtXV9kzWLSRfatwa
X-Google-Smtp-Source: AGHT+IGTzEyGzaYtdpNtPw2eukK6Zy3+CwCIlRjpBtTlWwRHNuiYwfAPpGefN84H7D1C+HUphIZ+1A==
X-Received: by 2002:a05:600c:4f0b:b0:439:60ef:ce94 with SMTP id 5b1f17b1804b1-439ae216024mr91815025e9.21.1740408649681;
        Mon, 24 Feb 2025 06:50:49 -0800 (PST)
Received: from [192.168.47.169] (93-44-14-216.ip94.fastwebnet.it. [93.44.14.216])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-439b02e6cf4sm107292395e9.19.2025.02.24.06.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 06:50:49 -0800 (PST)
Date: Mon, 24 Feb 2025 16:49:54 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <6N27SS.D8B9D3CEGOUH3@gmail.com>
In-Reply-To: <06d40295-264c-4119-a201-f6e045def59d@pengutronix.de>
References: <20250221180109.14129-1-stefano.manni@gmail.com>
	<06d40295-264c-4119-a201-f6e045def59d@pengutronix.de>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_065052_191931_CB94B07E 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On ven, feb 21 2025 at 18:33:04 +01:00:00, Ahmad Fatoum 
<a.fatoum@pengutronix.de> wrote:
> Hello Stefano,
> 
> On 21.02.25 19:01, Stefano Manni wrote:
>>  Device file was hardcoded to "nand0.barebox".
>>  This patch harmonize the signature of
>> 
>>  imx6_bbu_nand_register_handler()
>>  imx7_bbu_nand_register_handler()
>>  imx28_bbu_nand_register_handler()
>> 
>>  with the other bbu register functions in order to take
>>  the devicefile as parameter.
> 
> Is this this the sole motivation behind the patch or do you
> intend to actually make use of the ability of varying
> the devicefile?

my purpose is to let people use a device/partition different from the 
hardcoded one.

> 
> Thanks,
> Ahmad





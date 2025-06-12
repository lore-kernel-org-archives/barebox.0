Delivery-date: Thu, 12 Jun 2025 21:43:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPnq7-006cCg-1l
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 21:43:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPnq6-00073A-Un
	for lore@pengutronix.de; Thu, 12 Jun 2025 21:43:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aGLUWbnNyOxq7QCcuVVkX75teOIQNQhGCa6wYcZyOqk=; b=sxO5Js3EJquW/ca4KQ3s3xHqOw
	QBoJ1ft9AggR0+XB/x/34CKBP1ZeV4NQqqfVZeVMxQ72KJ2APW24EjMO/iYNVZvyK0dSqkwp6URup
	yFG5AkWhD1C2Azkk0sus0bMNtSMai7g+55Ao+lNF67a5cztTIXPnh5qg35GLHNOHdn8LffdbMUfNO
	EhGDKc1+ozWunpmUyR3zurdaT+Ua5goUTsv9Y8DXu2pi2lPwQ0DcocYXaWbIzjMbC3BLja7LK/Faa
	m3oW3KLF07fu/ThBhst8ZGP5vyIrFGq6kP8mTm6UpTGhJQi07PICRJDD/hsGucL03xaso++ShMRIp
	QQohlOgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnpJ-0000000EHAA-3cQt;
	Thu, 12 Jun 2025 19:43:05 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPimK-0000000DbYu-0IaO
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 14:19:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3a507e88b0aso1123129f8f.1
        for <barebox@lists.infradead.org>; Thu, 12 Jun 2025 07:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749737978; x=1750342778; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aGLUWbnNyOxq7QCcuVVkX75teOIQNQhGCa6wYcZyOqk=;
        b=WO766XHgzsLVtHR6DoCqV5mSme+DeN8nzATMgKLv89SSptDNvxirz2Lsnq2D2ZBEQ/
         GSyNXw/ISXVCI/HmVO0Z+FZXPGigbV/sVJ37JxN/HhZy7OcyqlV2AePxb/2RKUBSaeHt
         mXngEX81cTmOW0yF7Q2jgTv1UBQPbv46UDDU6wg3XVS8YwKbCB67w2FPfLb6ZRHMF5yO
         Ty67UgI54VebUMJeBGmWOemRvY+u/SBvdMcTKI1Xw0vu6enB/MT6u7SNeugMaT2Jmijr
         NXRRMZvP+NVUcWMj4z5O3S+tPGkGS9LQ4WLRMGlvOolMYZFQi7GIgtKo8WSRSgpaiyD+
         k1ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749737978; x=1750342778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aGLUWbnNyOxq7QCcuVVkX75teOIQNQhGCa6wYcZyOqk=;
        b=L/7k47wDyI2Zvhylqzm3bvTFbMqEB7rq9mezjt1TGpn6ugW5c8xHfL1jWSaSgDvAZ9
         TWl8jZHlVq+i6W6wV8C9basWj5zl7CaxxZCGivUbVIYYQ23yPr9NtqRq/BZDMQXgMaa3
         e06KHrMyXPmh6uc7fClVtmR1sV5G9Ldh4RMS5+avgrrIdOkRqcO6lQ+Mc1KBIaT5eCcP
         2fKsOGWRCtvm89Wu5+F4xJJI0Wl0NRNbGh5QtJ7jAe1IAcMNsqU5qdJzmO6TiMKqCIGe
         jdu3eY1Y/MNLj8BGstxY63vWjaqF8M4HrEDVieV2A+gmM2Vfd0+imM3fOkueYe+2V8CF
         9owA==
X-Gm-Message-State: AOJu0YyVOTjm7EXEc+VVGyUfdoxvCjfwT8OW0LyQFic6fHxeJDxQIKJm
	Myw85T6QsLSutFRAtHNsUra9E4Q1nJ7FWZUZaED7pfr7XBMXk2OMX7Of7/EMzJuw
X-Gm-Gg: ASbGnctYoK+z9I9YJAd/nmFZZZphenFTcqE0SWwVECsL4dI4OE+eRsoGOg2JlNoQLTV
	/+incZy+bX6z2+mzMdHK9eO2/48PP9QeJ2pkhf5Lo28s12PijS8k4eOfM1MSo5EBOf5ogmbaL9l
	I4aeJRsTJR/R5Lz6sXqaWF8GLqr1pT3woCGgaZJRQ5O05qRmGJJ5zgOw00GfvhMUeolZTm4EH48
	dpJJ7rKZHcPLnFKajhJRqY5337eDl67EVqK0Hm6XQ8LAQZIsBesBodp+BMh7XVfa+hnNtr9BCHA
	tfQXMp3LEpScfBeumRNc3/cSInWsqxJYYsgXW3lDoSBryFH14aWB/hYiLUU68X/YHKiI8oCJ/37
	9suDNLnCYjgFqnNmcwk1aRGQl/7tW2tvDgX6SEKM0Dz0ya4XDS70FAH7Qf2+FrbfiNkRtqTdU5h
	/iQbyO3f+qGnqO9ZHKip15EK8EYST6zWzcDNko8GZsxcu74/UayuiYV5BVBQUA+5Jupt0O
X-Google-Smtp-Source: AGHT+IH8cedH0NtR5OlQDOr+TE5McUazRlt9BtFZjTwyMKHKgvZgRCTXWuT0QqcBK+WI1Feey0Wz8w==
X-Received: by 2002:a05:6000:420b:b0:3a4:f6ed:767a with SMTP id ffacd0b85a97d-3a5607c984bmr2872293f8f.38.1749737978241;
        Thu, 12 Jun 2025 07:19:38 -0700 (PDT)
Received: from ?IPV6:2a02:8388:e103:2700:f4a8:3e60:a643:5d3d? (2a02-8388-e103-2700-f4a8-3e60-a643-5d3d.cable.dynamic.v6.surfer.at. [2a02:8388:e103:2700:f4a8:3e60:a643:5d3d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a561b4bb0bsm2081932f8f.77.2025.06.12.07.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 07:19:37 -0700 (PDT)
Message-ID: <925212c2-6c48-402d-8301-e06b62061248@gmail.com>
Date: Thu, 12 Jun 2025 16:19:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
 <aEqK9IXf94hx9QnX@pengutronix.de>
Content-Language: en-GB
From: Andrei Lalaev <andrey.lalaev@gmail.com>
In-Reply-To: <aEqK9IXf94hx9QnX@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_071940_133617_A5EA4470 
X-CRM114-Status: GOOD (  17.47  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12.06.2025 10:08, Sascha Hauer wrote:
> Hi Andrei,
> 
> On Wed, Jun 11, 2025 at 07:56:45PM +0200, Andrei Lalaev wrote:
>> According to doc [1], new implementations should send FAIL if the
>> variable specified in the getvar command does not exist.
>>
>> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
>>
>> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
>> ---
>>  common/fastboot.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/common/fastboot.c b/common/fastboot.c
>> index 56bc4e82c4..3df3c227a3 100644
>> --- a/common/fastboot.c
>> +++ b/common/fastboot.c
>> @@ -372,7 +372,7 @@ static void cb_getvar(struct fastboot *fb, const char *cmd)
>>  		goto out;
>>  
>>  skip_partitions:
>> -	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
>> +	fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "");
> 
> With this a "fastboot getvar all" fails.
> 
> I fixed this up as below.
> 
> Sascha

Hi,

Thanks a lot for the fix!
To be honest, I had only checked the original patch on Barebox 2025.02 and then
just backported it to the latest master :/

Would you be willing to take primary authorship for this commit?
Since you've reworked it completely, I think that would be more appropriate.

-- 
Best regards,
Andrei Lalaev



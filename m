Delivery-date: Fri, 30 Jun 2023 20:57:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qFJIy-009une-H0
	for lore@lore.pengutronix.de; Fri, 30 Jun 2023 20:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qFJIv-0001F5-Uu
	for lore@pengutronix.de; Fri, 30 Jun 2023 20:57:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DPMtgqgC5r+CSqf1zhqRETtfDpKRfrHnppE4x+rsGmM=; b=3KGzFarGfjucEp0eMW1+yy01An
	RaJ0bE69jWpCdrXSS7CE6zvIjl8dcdhfJZSvE0/a0QNQt2KLxifTmSYOHOGI1fN4Wnfd2Cy/9B+rS
	XGjsjExagyX1LfVQdjqwc/ds7ICIIrk3+k1PBwV5tCk21F6I4fSo9bAamL627njRRB4Fx1Kn9cMFa
	N7KEXGa6WB3aCclsS5AGgG3HXF2+zQfx3kh7jEiYPW/B90V2bVL2wTqIAb8olZ5HLaWFSEHXnB/2a
	2gpIRU56yzjTCfocfGVuDg4u/k95DpJAX9RLVv/jgzjc37HQBhi9FBFrAWawTf7MpDP5wneCN81yN
	4qzu9TQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFJHS-004M86-12;
	Fri, 30 Jun 2023 18:55:42 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFJHP-004M7K-24
	for barebox@lists.infradead.org;
	Fri, 30 Jun 2023 18:55:40 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4fa48b5dc2eso3718334e87.1
        for <barebox@lists.infradead.org>; Fri, 30 Jun 2023 11:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688151331; x=1690743331;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DPMtgqgC5r+CSqf1zhqRETtfDpKRfrHnppE4x+rsGmM=;
        b=DDvK3SeJUNjN2Tj4w4Hfa9gY7b7teZgj7Rns/+vVHoa/24NHAHBwVcOiI7F/1a2N0G
         GsWqp10zqR5N40OvZRQCRbuHm+wkHIVf+g2DHjfXXt6KcRVg+2E8Cmz9kjxOU0snhXPB
         sFLh0iDc/p96esZ0OT2l3nEqvpq02sOVSPOWT35HgtIsHU+vXD9zWSbNXWt0eDp5wQb1
         YSlcg5P3thRRbFAdhv+03jlJf7n3E/M8g57jP7dSiSSqCCVc0BgX434qdkrgwMzrqAHQ
         s5sUOIsqbj7Tt5ElPX3C8Y62Yq7cF2oDcyLggdAiPzdUPThIWnTSwFHWkp746WLQuE6M
         jXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688151331; x=1690743331;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DPMtgqgC5r+CSqf1zhqRETtfDpKRfrHnppE4x+rsGmM=;
        b=haf8zhzuA7wCLIo9UkdZGbmKdAVcsuCBsfHBio9aNm12UmQ1fnvF8QxXdYpPAPXQy1
         02ehCkQT1J20L80J1pX9isgK38nSeLEtb4FB1EBbLD89Mds9dcxYH8IMFCDOeRe1jcwh
         q6aazb7rUoL1+lgthTeku6GXrgDW/V9MjuWFpb2xgn2yVfcvrNiQXsejAtexk+klgSZw
         s50ix1uLKnsOeRiTkTo4DGYhZl98sC7agU8BKayEqhUQqNvGSFPPJuSiK2ZKHHAZ7m+R
         mwd6syNAkAFcHe56kVg3YmgjeksrSs0VVpyWwdMZl7OJ8TSsAYn4mnYdz6mNC2FlnMH8
         GBag==
X-Gm-Message-State: ABy/qLb/j3HDDkB163RSoJ2w04SSmvFcSzkxN7t6nWF9tChVley3Inp1
	y7Qvcowvkelm3wyEt7zfPAO5lLMqebME8Q==
X-Google-Smtp-Source: APBJJlG9dpK4P6HNFPGvHcW2C+RgCH35kRLFg3wRfKU43Qk8rmJX7mvySSAerPzuFwkEBHotLFNLHw==
X-Received: by 2002:a05:6512:2107:b0:4fb:9446:598b with SMTP id q7-20020a056512210700b004fb9446598bmr2867608lfr.27.1688151331196;
        Fri, 30 Jun 2023 11:55:31 -0700 (PDT)
Received: from [192.168.1.32] ([188.123.230.194])
        by smtp.gmail.com with ESMTPSA id j22-20020a19f516000000b004fb8ff1f531sm1230366lfb.70.2023.06.30.11.55.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jun 2023 11:55:30 -0700 (PDT)
Message-ID: <ab0ad661-511e-5f56-2086-f3be2a1ff6ae@gmail.com>
Date: Fri, 30 Jun 2023 21:55:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Ian Abbott <abbotti@mev.co.uk>, barebox@lists.infradead.org
References: <20230629201446.16679-1-denorl2009@gmail.com>
 <2174e39f-3e29-bd33-ab15-ba0eb86a58f5@mev.co.uk>
From: Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <2174e39f-3e29-bd33-ab15-ba0eb86a58f5@mev.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_115539_680450_1A9C142E 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nios2: remove arch remains from drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 6/30/23 11:57, Ian Abbott wrote:
> On 29/06/2023 21:13, Denis Orlov wrote:
>> The architecture was removed back in the commit efccc13513, however some
>> drivers that were available exclusively for NIOS2 were left over. As it
>> has been impossible to compile those since then, it seems reasonable to
>> just get rid of them.
>>
>> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
>> ---
>>   drivers/serial/Kconfig              |  10 --
>>   drivers/serial/Makefile             |   2 -
>>   drivers/serial/serial_altera.c      |  94 -----------
>>   drivers/serial/serial_altera_jtag.c |  99 ------------
>>   drivers/spi/Kconfig                 |   4 -
>>   drivers/spi/Makefile                |   1 -
>>   drivers/spi/altera_spi.c            | 236 ----------------------------
>>   7 files changed, 446 deletions(-)
>>   delete mode 100644 drivers/serial/serial_altera.c
>>   delete mode 100644 drivers/serial/serial_altera_jtag.c
>>   delete mode 100644 drivers/spi/altera_spi.c
>
> As a point of interest, none of those drivers should really depend on NIOS2.  They are usable on an ARM SoCFPGA system if the FPGA logic contains the corresponding Altera/Intel IP components.
>
> Whether or not anyone needs them in barebox is another matter, but I have certainly used them in ARM SoCFPGA Linux systems booted from barebox.
>

Hmm, maybe those drivers should rather depend on ARCH_SOCFPGA then? Would be great if someone tested them in barebox running on a SoCFPGA. Otherwise, they are just rotting in the source tree, with no actual usage.

Regards,
Denis




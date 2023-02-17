Delivery-date: Fri, 17 Feb 2023 15:04:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Lx-00AAJP-4J
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 15:04:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT1Lw-00028l-3C
	for lore@pengutronix.de; Fri, 17 Feb 2023 15:04:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SRWd3qZ38K/xL0jZ1EQ5+PYwbxz4Ti3HxP8b2ziTLlw=; b=XL7/GKJQjuoiz9e6Yj7T73ClzL
	rsRxf4YkVN5uU68S3QjJ0XFQN9x1lwwsxUCOunzskeKxXBXm/6vxL9l8RKWQ7LznTWljlzMdnVt81
	4sWWAxkE2b+xx+ZssysN1ADX0WPMUiRF414X38KiEtJPnRKu6EOABIIuZbWRjjBfZYvczyl3wYqfn
	WMiCPxOWvvVh8jOlYDgmWNeUbiSvMlYTHJdAB/Z4VYcMJ02Pu1pdbwMZ/eyqw0KMtZxhlsRtdMeju
	WeQZc2dRMnCT3K7DyMWIud87J5kib6XvEimzzTfWPbtAUysFfHen+akA22/YwnjZVeuG1VNM8X5V0
	McYT5C5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1Ka-00ERLU-6d; Fri, 17 Feb 2023 14:03:20 +0000
Received: from smtpng3.i.mail.ru ([94.100.177.149])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT1KV-00ERKc-Id
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 14:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=inbox.ru; s=mail4;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=SRWd3qZ38K/xL0jZ1EQ5+PYwbxz4Ti3HxP8b2ziTLlw=;
	t=1676642595;x=1676732595; 
	b=mVNXYfr4NC9UcQWs3fW83iL7ti5B+GRzChnzTp95UTLeRoQjKLK813gN3PnHfIRUlR6cYJoAqeA5shrk6zB4CaC3YDk5OZkfupQS8zXIU/7YryJL30Qx49bdPvTuj3CvDkZN/kp18pIWZJ9GWskApo4fIkVheQmsiovOj6qwcsxCirvZvHAE+xVp4URlCXMljjigwkiZ0behzZ1V5+iNcX/in1khiYNwK2apoBG4qTBzd+rbxeX3q9HezGP1yq9AL65UAmxnyL+kEAN/HGrNTCjYOK4uX9GgEr+VgvXm/ikFfYyLcnZGBWzmPmAYXyaKgBowb6Q68KQWx/g0V2PXZA==;
Received: by smtpng3.m.smailru.net with esmtpa (envelope-from <fido_max@inbox.ru>)
	id 1pT1KP-00080B-97; Fri, 17 Feb 2023 17:03:09 +0300
Message-ID: <07d4762e-ba94-0f43-febd-a35d1c130aaa@inbox.ru>
Date: Fri, 17 Feb 2023 17:03:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: pmamonov@gmail.com, a.kuyan@yadro.com, p.mamonov@yadro.com,
 Maxim Kochetkov <m.kochetkov@yadro.com>
References: <20230217073157.21573-1-fido_max@inbox.ru>
 <4073a83d-e7b8-0965-b44b-ad1005b800c7@pengutronix.de>
From: Maxim Kochetkov <fido_max@inbox.ru>
In-Reply-To: <4073a83d-e7b8-0965-b44b-ad1005b800c7@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: smtpng3.m.smailru.net; auth=pass smtp.auth=fido_max@inbox.ru smtp.mailfrom=fido_max@inbox.ru
X-Mailru-Src: smtp
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD9806C989EC2150E33F4358D0D08B70F42FEFFAE375C5D51BE182A05F538085040938E607AD4223919108BFB4587AD5BB4E923140BC60A191ED4D7A3AD6323B09C
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE7C2204D4F9A221771EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F79006377E85B0EC44E8FD73EA1F7E6F0F101C6723150C8DA25C47586E58E00D9D99D84E1BDDB23E98D2D38B6F1F7B995052D5CE565FFDD01921708373FAF88FED20B49720879F7C8C5043D14489FFFB0AA5F4BF176DF2183F8FC7C078FCF50C7EAF9C588941B15DA834481FA18204E546F3947C62E6B8B4347DBC1CF6B57BC7E64490618DEB871D839B7333395957E7521B51C2DFABB839C843B9C08941B15DA834481F8AA50765F7900637ABCD5DAC55016DF4389733CBF5DBD5E9B5C8C57E37DE458B9E9CE733340B9D5F3BBE47FD9DD3FB595F5C1EE8F4F765FC8C7ADC89C2F0B2A5E2021AF6380DFAD18AA50765F790063735872C767BF85DA227C277FBC8AE2E8B08F9A42B2210255C75ECD9A6C639B01B4E70A05D1297E1BBCB5012B2E24CD356
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D3474B2583E5131598422EB80CC9D187E1F31992F9CCEBA3F5B27FBFBFB0EDF9B7C57D9EF0FAAC471FE1D7E09C32AA3244C443E489041BB6FFDD19F7640F028C7C1F94338140B71B8EE8D5DD81C2BAB7D1D
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2biojezPZE63Hafg5xCvLjOwcTw==
X-Mailru-Sender: 689FA8AB762F73933AF1F914F131DBF53DB7DDCB823837BA9E59EE9D5915395298CC072019C18A892CA7F8C7C9492E1F2F5E575105D0B01ADBE2EF17B331888EEAB4BC95F72C04283CDA0F3B3F5B9367
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_060316_163832_0890D10C 
X-CRM114-Status: GOOD (  11.17  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/1] serial: ns16550: move iomem/ioport init after clock
 init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 17.02.2023 12:02, Ahmad Fatoum wrote:
> Hello Maxim,
> 
> On 17.02.23 08:31, Maxim Kochetkov wrote:
>> -	ret = ns16550_init_iomem(dev, priv);
>> -	if (ret)
>> -		ret = ns16550_init_ioport(dev, priv);
>> -
>>   	if (ret)
>>   		return ret;
> 
> ret is now uninitialized here.
> 
>>   
>> @@ -511,6 +507,10 @@ static int ns16550_probe(struct device *dev)
>>   		goto err;
>>   	}
>>   
>> +	ret = ns16550_init_iomem(dev, priv);
>> +	if (ret)
>> +		ret = ns16550_init_ioport(dev, priv);
> 
> second ret is never checked.

Sorry about that. I will fix it in v2.
> 
> If you move the second if (ret), patch looks ok to me.
> jfyi, If you enable deep probe for your board/platform, clk_get()
> would automatically probe the clock driver if unavailable, so you
> shouldn't ever see -EPROBE_DEFER.

I tried deep probe and it works fine without any -EPROBE_DEFER. Thanks a 
lot for the tip!



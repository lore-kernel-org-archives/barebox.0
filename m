Delivery-date: Thu, 26 Oct 2023 23:32:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7xt-0053Km-9I
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 23:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7xs-0005fD-5C
	for lore@pengutronix.de; Thu, 26 Oct 2023 23:32:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ieo3J1o8Y35WIiUROc1sm4+J+DvqS7DQblZHU0ruV2o=; b=MtqaNW7YOpbhvMxufHqG0tKI3n
	H/WxX3Cpz0ZzfuGV7NDLyJbOGfrPe2BhdKMQTWR6ngtRbKQeMZZiorEzyOmqiKXbw0YEE5V+yWHue
	z3sjxm4B6cRn4IUfMuPb8HuBj/pr+jxzKOUct3WYSUks4NReeQXV1rC9QhYqJVdEAmtS/BBBiEuhN
	oyiQXoFwI3NB8kHKU7eArne/f/EewCMmHivLCfngCLKo14h8I56IYoUmMdM/wi65Gq8mGX22u/vd5
	PWcA/f8zAE5f4/ZsEsYVt0zAovqJ5Gnx+k6M74KKd4CDr4nQ3mLfC9JNOFqPAUlZT6w3xvyvpoKXe
	Mo8iLKDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7wT-00FBIa-0x;
	Thu, 26 Oct 2023 21:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7wP-00FBHT-2H
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 21:30:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qw7wO-0005K4-BC; Thu, 26 Oct 2023 23:30:56 +0200
Message-ID: <abb2d47e-3b88-ff29-dace-5c21b99c65e3@pengutronix.de>
Date: Thu, 26 Oct 2023 23:30:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
 <20231026124623.4054582-2-m.felsch@pengutronix.de>
 <177c9c80-df41-0e53-0613-929e7c3fa38f@pengutronix.de>
 <20231026142708.wyz6vsgkb3lasyhz@pengutronix.de>
 <f6245eb6-d2be-ab06-eccf-74714559efbd@pengutronix.de>
 <20231026143410.7drcfir2k7juhwsd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231026143410.7drcfir2k7juhwsd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_143057_743966_934FA65E 
X-CRM114-Status: GOOD (  17.24  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] scripts: get_maintainers: drop --status enforcement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.10.23 16:34, Marco Felsch wrote:
> On 23-10-26, Ahmad Fatoum wrote:
>> On 26.10.23 16:27, Marco Felsch wrote:
>>> On 23-10-26, Ahmad Fatoum wrote:
>>>> On 26.10.23 14:46, Marco Felsch wrote:
>>>>> The status parameter is never used so drop it and stop bother the user
>>>>> of the script.
>>>>>
>>>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>>>
>>>> Our get_maintainer.pl script doesn't have the same breadth of features
>>>> as the kernel's and only --status is implemented, thus the check.
>>>
>>> Where? I see only 'print << 'EOT' <text> EOT'
>>
>> Ye, the output is similar to what you'd get with the kernel's --status.
>> The script is just here, because checkpatch depends on it and calls
>> it with --status.
> 
> You still can run it with --status, I just won't enforce it. At least to
> me it's not clear why we need to enforce it and I use the script from
> time to time and always forget the param.

The idea was not to mislead users that assume that barebox get_maintainers.pl
behaves the same as Linux. But now thinking about it, just printing the same
always won't hurt.

>>>>> -die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
>>>>> -
>>>>>  print <<'EOT'
>>>>>  Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
>>>>>  barebox@lists.infradead.org (open list:BAREBOX)
>>>>
>>>> -- 
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>>
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 01 Mar 2022 10:03:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyPo-00EDPf-8I
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 10:03:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyPm-0000kX-Rq
	for lore@pengutronix.de; Tue, 01 Mar 2022 10:03:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cr/TyIFshjKNcFeHcJT5LlSkkRO70dwhit0JwBCqCYA=; b=txpFfTQusgcfnT
	Yb44jvMF5o4jFp0L1szVGeLRF4jYnZXo3jgXC5Mx4Qm17LxjP+22fFuRkzmPzhW1nFYSZkaaA3qyZ
	huX81Z7dZBOLxGLg5HWm0vhMpz+eobsH007axKg7vFMPlzqNwCRTcMzCLQqz19u7i5J9yDuQFH5TP
	YUpkt25Sw1lp5JTCUOooOnq5OIgcSB7GSvSrNU+QePAyRyNd0Mo4zG5brzV+g3bYQ9sAdOB9mNlYr
	VTjplVfxvpGW45VAS5trRIEHx7ygWeGNOrB1Ox82Ff5gnnNeHOZz6FKSqLdJfYCV7z9sFNyOvm/eZ
	XZAQ/rI4Ze1SS8D5c5Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOyOT-00FkRJ-4B; Tue, 01 Mar 2022 09:02:05 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOyOM-00FkPW-Fz
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 09:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/em2XM6vgObTzmRITA/ls7L0EA6CbercAGXpS8jDEZg=; b=H//Z6z9KFpLzuZZiOTJVMb3Fd/
 FCt5A3NQBIRu/mcV6T3XWZPVZnf8Z/HdE48hroW+PjiivIMD/dFDX73ogJPNj0PLZbgmO8bEc5EbW
 1WYtSYz0i8+2OS/zqAWms2p08Ry+gtKcbXqhbGK0joMTMzOyMjgEeU3/V326rrlF+SMWAquyWTTY3
 W7reokB5hfGY0ofzBL64sYK8x1Cqk6+XsmBHuL2Z0DP/6nn3yVrggwn+2vigF31aeVYwe1MLkKYod
 9EOzW2WRm5xWZyopVe9VRWAt8IS8o2l6TsCDqf2NUB5clb2c/o5Ebh3Q6jsFsA6LGvDhHP2jDzZmP
 NgGNAwbQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:33518
 helo=[192.168.69.86]) by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1nOyO8-008oZX-Tv; Tue, 01 Mar 2022 10:01:52 +0100
Message-ID: <c574e57f-6a8d-85e3-6a19-580a38a9af77@norik.com>
Date: Tue, 1 Mar 2022 10:01:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <CAMHeXxPD9eOdamfmB84e76YtMrifo663zt7cnDN7Qd=iENQdfA@mail.gmail.com>
 <20211119130623.1948659-1-andrej.picej@norik.com>
 <5d436fc3-fc64-1b68-1a72-510462e08686@norik.com>
 <20220301084758.GP19585@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
In-Reply-To: <20220301084758.GP19585@pengutronix.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_010158_904538_B149D2BF 
X-CRM114-Status: UNSURE (   9.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] regulator: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 1. 03. 22 09:47, Sascha Hauer wrote:
> On Tue, Mar 01, 2022 at 09:21:34AM +0100, Andrej Picej wrote:
>> Gentle ping. The patch was probably missed as is was send as an reply to
>> Trent's memory leak find.
>>
>> On 19. 11. 21 14:06, Andrej Picej wrote:
>>> Fix memory leak of propname.
>>>
>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>> ---
>>>    drivers/regulator/core.c | 6 ++++--
>>>    1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
>>> index 097f7d779..c5cb9ee34 100644
>>> --- a/drivers/regulator/core.c
>>> +++ b/drivers/regulator/core.c
>>> @@ -231,8 +231,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
>>>    	}
>>>    	ret = of_device_ensure_probed(node);
>>> -	if (ret)
>>> -		return ERR_PTR(ret);
>>> +	if (ret) {
>>> +		ri = ERR_PTR(ret);
>>> +		goto out;
>>> +	}
> 
> This conflicts with b720625659 ("regulator: allow use of dummy regulator").
> I fixed this up, see the result in next.

Ohh, ok. That was fast.

Thanks.
Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


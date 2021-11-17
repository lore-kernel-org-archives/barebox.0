Delivery-date: Wed, 17 Nov 2021 11:10:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHtQ-00050C-KZ
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 11:10:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnHtP-0006Br-Ie
	for lore@pengutronix.de; Wed, 17 Nov 2021 11:10:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KmrluseKDHJGVRT9mXVo3hh0MCW0/+Bn8ngEBUFQTYo=; b=dR08j2QFsIVIrMhZdwLuT5LrIn
	wgf49VrO2Erump36f0gERhIAemxzqeRtraBVaAw5j8OUjlf/1yVFxEXxm3pw+Es2fr9/xOysmNsxy
	Y9fDydy9+xjtAvMUDhRzGswgsxqvD+DCXEdiXfHJhtMplOYXf9VwiyyZRFPRaOJIQro/SJxRUTNnM
	ybpOLuMR00jTtNKWffaRY9hqKy6/7AVeOLaVNqwfUEi+j9o1H4v1JVMzWz9LK8bUJjnQ7LmFWSWhn
	Mfq7Xx9jrmrGtG7PyJE+Eqe4CW3VQiRoRXA/ubehQKN4UkaO+cXMJhHdULfSZaPcsYo3K86UJ5REo
	aWD3gzWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnHs8-004PIa-9L; Wed, 17 Nov 2021 10:08:56 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnHs2-004PHY-Gz
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 10:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hyr362C9CrqLu+gP9FHPdgs1k/hcWxhe2CVbLrDlWTY=; b=l/3l+spJIt0ySxtIaySLrBXSR/
 bqU63fH2Y+3UcR0pjMtI+l76PYJyTh/u88HkAr6tSAt0kF8AHd9RzItcC2zFCUdGFyD62tQVB8U7U
 0ksYQvXvUNHeCvm0/7FUTKaX0hkmW15KxY76adCqkISlXt7h2O4aQjZYJP/FXSEuYOEfqoyomomd5
 OEXvDE7fdrUfcH5X6Ot4W4XcgzXRDkaaXdo1NoJ1v5KthKocKcArPzqZE8MQC4y9KtXcQ2gPzTZhf
 pMgVJAKQpEBG67t980/ndg7IPO6x0ZiK29xaYqo5gMNYiCjl6fftBzDy5g5WDuZWPGGJ4V7sqdjLX
 H9Biu1zA==;
Received: from [89.212.21.243] (port=39442 helo=[192.168.69.215])
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>)
 id 1mnHro-003bVk-Lp; Wed, 17 Nov 2021 11:08:44 +0100
To: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <S.Riedmueller@phytec.de>,
 "sha@pengutronix.de" <sha@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Yunus Bas <Y.Bas@phytec.de>
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-3-andrej.picej@norik.com>
 <20211117070313.GG6556@pengutronix.de>
 <171acb6acc23a8c07a74e2d8fdc2d6e1219d43fe.camel@phytec.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <a10139a0-9773-2fd7-6964-6d8884eb80df@norik.com>
Date: Wed, 17 Nov 2021 11:08:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <171acb6acc23a8c07a74e2d8fdc2d6e1219d43fe.camel@phytec.de>
Content-Language: en-US
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
X-CRM114-CacheID: sfid-20211117_020850_916870_CE471663 
X-CRM114-Status: GOOD (  13.44  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] ARM: configs: phytec-som-imx6.config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Stefan,

I was waiting for your insight.

> 
> You're right, there should be no issue with the BLSPEC config.
> 
> Regarding the IPU driver, I only remember that we had an issue some time ago
> with the IPU driver and since then disable it because we don't make use of it
> in our BSP. But I can't remember what the actual issue was.
> 
> @Andrej, maybe you can take another look at it and see if it can be enabled
> without issues on our boards nowadays. In that case we could drop disabling
> the IPU driver as well.
> 
>>
>>>       - enable of_fixup_status command,
>>>       - enable of_overlay command,
>>>       - enable of_display_timings command and
>>>       - enable OCOTP fuse writing ability.
>>
>> We can enable these in imx_v7_defconfig, no need to overwrite them.
> 
> Sure let's move them to the defconfig then.
> 

This would be the nicest yes. I will check if IPU driver can be left 
enabled, and create a new patch (for imx_v7_defconfig) if this is the case.

Thanks to both of you.

BR,
Andrej

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


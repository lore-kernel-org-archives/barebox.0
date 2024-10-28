Delivery-date: Mon, 28 Oct 2024 17:59:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5T5R-001wOP-12
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:59:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5T5R-0001v9-VL
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:59:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HK14y9L01TEtTOLOPBlVJ9uN7fM+ekDt6acAwPZrX10=; b=ElVXZohhc8HuS/pqzaI7dYlGSS
	P5j+fZ85zsoEXjs8MUloYm37NYF4ayOXWafUoEHOMULIpYhH2ONEsVSjHHCxJI5myOUx8R+iI1C9W
	dhhH7Etgrti/N+38AnW+hQjEIQ1SW5efQE/97j2C5/0Z0IZfDxlaEn+zl9iBHVq1l/idw3XhaU+uX
	dsoD7OMhiOKla2FDri9kru5ENLNZTn0m2F2ha/oD+XplpS9bZMGdkHQ+Ac264TNZ/UvUos9iWinHB
	jBB3tE08txDkUYwEhiEw5jvNwh7QVXBdc6Lu/w2iclsqQJYqMDsCpq2dfBRATR1zGmk4o/ucjpMpd
	7AvI3B4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5T4z-0000000Bakj-2wJd;
	Mon, 28 Oct 2024 16:58:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5T3Y-0000000Bab1-2DmD
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:57:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5T3W-0001kl-V3; Mon, 28 Oct 2024 17:57:27 +0100
Message-ID: <a8707ffc-be75-4943-9c67-bea50285fe12@pengutronix.de>
Date: Mon, 28 Oct 2024 17:57:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
 <d70eeeed-bb47-4d50-ac7e-5174c574aa33@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <d70eeeed-bb47-4d50-ac7e-5174c574aa33@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_095728_609718_69C8EAEE 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] downgrade noisy debug calls in block devices and
 ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 28.10.24 17:44, Ahmad Fatoum wrote:
> Hi,
> 
> On 28.10.24 17:17, Stefan Kerkmann wrote:
>> These two patches are the outcome of an investigation why loading a
>> fitimage from an eMMC took nearly 7s - the sheer amount of generated
>> debugging messages slowed down the system by a factor of ~21 with
>> KConfig options:
>>
>> 	CONFIG_COMPILE_LOGLEVEL=7
>> 	CONFIG_DEFAULT_LOGLEVEL=6
>>
>> Which is the current default combination for barebox.
>>
>> Before:
>>
>> 	Booting entry 'system0'
>> 	FIT: Reading time: 6722 ms
>>
>> After:
>>
>> 	Booting entry 'system0'
>> 	FIT: Reading time: 324 ms
> 
> This is the time with these two patches applied or with
> compile log level changed?
> 

This is the time with both patches applied and the mentioned default log levels.

Cheers,
Stefan

> Cheers,
> Ahmad
> 
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>> Stefan Kerkmann (2):
>>       block: downgrade noisy debug calls to verbose debug
>>       fs: ramfs: downgrade noisy debug calls to verbose debug
>>
>>  common/block.c |  4 ++--
>>  fs/ramfs.c     | 10 +++++-----
>>  2 files changed, 7 insertions(+), 7 deletions(-)
>> ---
>> base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
>> change-id: 20241028-fix-noisy-debug-calls-a6d6185be705
>>
>> Best regards,
> 
> 

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |




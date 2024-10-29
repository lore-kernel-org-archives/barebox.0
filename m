Delivery-date: Tue, 29 Oct 2024 15:13:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5myk-002J9S-1A
	for lore@lore.pengutronix.de;
	Tue, 29 Oct 2024 15:13:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5myl-0001xE-19
	for lore@pengutronix.de; Tue, 29 Oct 2024 15:13:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QvfEZUgwU5mEwt3t4bxthPCHoYUkYhB/UNzyGk2f4tY=; b=zyOP8n6lm5FIREHO8K6a+nO1AK
	eKQO1smEN1q8a+Bi2jzgpQo+a/jolbMWGCyby13yA2qQ4clg+7/CSrhCGee9YWgMbqKjLC9vbIQWm
	auEm5d7jeL6ymEuZs5q9thWObCjp1ceqsNmBYYp9OGTE97MjcF1yDndSMakqER4CrYmXZIiWD2Kic
	tgcbNRYxKxeY3t9bqcDCzR2F6Rwg7exWuTRmJdBaU67RbQrNoQVh+apqDMNiM8ufkmKgOvIpZRngL
	EsFJWt4mkdzidLeUgdxYu4EK0lBlo4fP2Hl9k+59pTK7Ba6r0Gq2uOpZjnMw2XrT9COgqcr5hy8Uy
	hlf5ENRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5myJ-0000000Egvq-1AIe;
	Tue, 29 Oct 2024 14:13:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5mxx-0000000EguR-0gDo
	for barebox@lists.infradead.org;
	Tue, 29 Oct 2024 14:13:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5mxv-0001ro-T6; Tue, 29 Oct 2024 15:12:59 +0100
Message-ID: <fc2b9447-9c2e-473b-94ab-991e13bf6095@pengutronix.de>
Date: Tue, 29 Oct 2024 15:12:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
 <ZyDkFmfY5-X52Rmy@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Content-Language: en-US, de-DE
In-Reply-To: <ZyDkFmfY5-X52Rmy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_071301_238160_148B690E 
X-CRM114-Status: GOOD (  18.24  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] downgrade noisy debug calls in block devices and
 ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 29.10.24 14:33, Sascha Hauer wrote:
> On Mon, Oct 28, 2024 at 05:17:00PM +0100, Stefan Kerkmann wrote:
>> These two patches are the outcome of an investigation why loading a
>> fitimage from an eMMC took nearly 7s - the sheer amount of generated
>> debugging messages slowed down the system by a factor of ~21 with
>> KConfig options:
>>
>> 	CONFIG_COMPILE_LOGLEVEL=7
>> 	CONFIG_DEFAULT_LOGLEVEL=6
>>
>> Which is the current default combination for barebox.
> 
> This is not the default combination. The default is:
> 
> CONFIG_COMPILE_LOGLEVEL=6
> CONFIG_DEFAULT_LOGLEVEL=7
> 

Oh! You are right, I totally mixed that up.

> The rationale is:
> 
> Do not compile in debug messages by default (CONFIG_COMPILE_LOGLEVEL=6)
> unless DEBUG is defined in a source file. When DEBUG is defined then make
> sure the messages are printed (CONFIG_DEFAULT_LOGLEVEL=7).
> 
> There are tons of debug messages throughout the code which normally
> shouldn't be compiled into the binay.
> 

When triaging a problem I like to gather a good overview by generally enabling
all debugging messages. But the important bits would drown in the block/ramfs
messages. So I would still argue that it is worthwhile to downgrade the level to
verbose debug.

Cheers,
Stefan

> Sascha
> 

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |




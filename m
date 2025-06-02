Delivery-date: Mon, 02 Jun 2025 16:25:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM664-002zQM-2u
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 16:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM664-0004qS-Ct
	for lore@pengutronix.de; Mon, 02 Jun 2025 16:25:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qIVQ4FmpHzsF5MDrAw/nJ8yOopksna3WOMhy5ty1L30=; b=lRdB+tphn3odKo1UbzvPlYHd8Y
	6RY8Nf0oPAg07oj9Vs1hwmBGxN0FaiUCBDpmrIue3lTeIIomvfAPxlM3bDv2C+L6Nz8Q17vG1ZDuH
	fpF/1iCzrk07hCkWd2u5+TXLjyDZ6LeZP7KUDLAXQnuLv4NUAW+mYfC5Xz4ryrsjBoKtA/6Scl7E3
	zwFLdP+7he8OjMxJtCn8DgIxMRcMZouAq4FajYoBgPRs93arjgJy8qMfVLR3QMc3dFcv/HnufPMhd
	SvfBdoYkP+R1PjJz1KlLalSZthQhzBucnMYvuC8ElhV77ScGMYACgDh0ZnX6UYHoblN2FYXJoNqaX
	SK2bwP/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM65a-00000007cl5-3C4u;
	Mon, 02 Jun 2025 14:24:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM65Z-00000007ckh-07iV
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 14:24:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM65X-0004bn-Ag; Mon, 02 Jun 2025 16:24:31 +0200
Message-ID: <6eeb8d9f-f8d8-49d6-b151-7944625aec30@pengutronix.de>
Date: Mon, 2 Jun 2025 16:24:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org,
 Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250528113050.827935-1-a.fatoum@barebox.org>
 <174846302090.3937553.13526862967830100532.b4-ty@pengutronix.de>
 <f0da685b-4f01-43b7-8039-7e966fe3c64b@pengutronix.de>
Content-Language: en-US
In-Reply-To: <f0da685b-4f01-43b7-8039-7e966fe3c64b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_072433_073142_EF818420 
X-CRM114-Status: GOOD (  13.00  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! arch: sync READ_ONCE/WRITE_ONCE with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.06.25 15:58, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 28.05.25 22:10, Sascha Hauer wrote:
>>
>> On Wed, 28 May 2025 13:30:49 +0200, Ahmad Fatoum wrote:
>>> The __no_kasan_or_inline attribute is already defined in <linux/compiler.h>.
>>> Drop it from the header here and do the replacement in its own commit.
>>>
>>>
>>
>> Applied, thanks!
>>
>> [1/2] fixup! arch: sync READ_ONCE/WRITE_ONCE with Linux
>>       https://git.pengutronix.de/cgit/barebox/commit/?id=c6b626c4eed6 (link may not be stable)
>> [2/2] compiler: check for __SANITIZE_ADDRESS__ instead of CONFIG_KASAN
>>       https://git.pengutronix.de/cgit/barebox/commit/?id=0d321ab1a307 (link may not be stable)
> 
> I am missing these in next.

Never mind, seeing it now.

> 
> Thanks,
> Ahmad
> 
>>
>> Best regards,
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



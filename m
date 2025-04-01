Delivery-date: Tue, 01 Apr 2025 14:34:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzaoa-006zXW-35
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 14:34:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzaoa-0000ou-CH
	for lore@pengutronix.de; Tue, 01 Apr 2025 14:34:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZAIyumpZw3oFC/YpLnHKNxjvTqQKGae0hgtIaR+1Q5Y=; b=Pgo/XRogC1R8zOWEYQYKQbk+IA
	oepvkAFeGIKPnVCmkMvfuPpfAoU4Ndrkliw+9cltURREbEedl1f5CSMonRnDoRjhxqaZm/2tnISW/
	fOMRX0DeidxJnuOeM0egRLqyqvHx2BU/+k+D1Kn8aXMX6kjtos/mHvW+2XUNAAmK2DNSPG3X4S3H8
	47j0eyYotMhHs9dyCVmcXhFTO9FmVcoJkmIAZwg1snAp85SXODo3BsCNcXc17ylODZU1RNUVIgVwa
	R7IUUm6FeVvGKIMPLnr6ODuTdQ7YaF8d2yR1m2bESL3pBwRNMLYSjTBDuINx09dqUwPAaTCy1rUsa
	k+0TYs8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzao4-00000003HQQ-2LOT;
	Tue, 01 Apr 2025 12:33:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzaNS-00000002ulQ-3MEZ
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 12:06:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzaNQ-0004MR-SM; Tue, 01 Apr 2025 14:05:56 +0200
Message-ID: <a9bad484-6301-4acf-838d-0d75ec11e756@pengutronix.de>
Date: Tue, 1 Apr 2025 14:05:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>
References: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
 <Z-uZfXkw7pCkeD_4@pengutronix.de>
 <CAP1tNvQ3qtYdsBE5W2Ep3Wz1em0GqGJamW0zQapu73bywFCigA@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQ3qtYdsBE5W2Ep3Wz1em0GqGJamW0zQapu73bywFCigA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_050558_855113_D9D740AE 
X-CRM114-Status: GOOD (  19.18  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NOR damage problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 4/1/25 13:56, Alexander Shiyan wrote:
> Hello.
> 
>>> Found NOR partition damage after use ubiformat.
>>> There is a NOR memory (256M) connected via atmel-qspi.
> ...
>> The messages above say that 64bytes were written which matches the
>> number of bytes that are corrupted here. Maybe this can be a starting
>> point where to look at. Also the 64 bytes were written without the block
>> being erased. You could erase the block manually before calling
>> ubiformat, then you could see what the code really tried to write here.
>>
>> Just an idea: Is the size of your Flash correctly detected? When writing
>> past the device then the write operations could roll over to the first
>> block.
> 
> The problem is more complex than I thought...
> ATMEL QSPI only works in the mapping range up to 128 MB,
> larger chips will not work correctly.
> To solve this, we will have to update the spi-mem and atmel-quadspi
> drivers and add spi_transfer() support to the driver (and in the kernel too).

The spi-mem core is also limited to 1 bit currently. Just saying in case
you want to fix that as well. I haven't been successful to talk Oleksij
into it. :D

Cheers,
Ahmad

> 
> Thanks!
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




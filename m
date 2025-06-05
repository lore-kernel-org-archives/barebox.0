Delivery-date: Thu, 05 Jun 2025 14:04:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9KG-0040E1-20
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:04:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9KG-000369-3B
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:04:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Mp2lXiJuUuyYHSAZHZVUXcpUpKDfEaJgwZswfdwHkQ=; b=rbm0k5knVIqSQvuO0Xzf4GkBTA
	9o0pclqSdkrwOyPSB7MgDCyc1ufX2H+tl3UrLgDByklmdWeN2fiqcmrKFC/a8CteHnxgsFIoZpxKo
	KB/ViT6JK2titWFkemWhjWO3i8KeBI1dayRSI5kx6XjdqMgdDQSI0hnPV5M+tLWEymg8F4nOOyHv9
	hN/vLKyu+VAKMpSjPvZPMxsdPcoNL0olq/t6BlG1+Vreh9uJr7NnW6LvldzJeJF0l9wk/4M4DXBBH
	XuC2ezLZWwX+lOj3RfEUGxNUdP9jpj2TW4SXmpqDCH4PNt7vo4RjbBhXOI5KB/r8V5f6/x/LrzgBa
	IID1kO3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Jr-0000000FRO0-4AMc;
	Thu, 05 Jun 2025 12:03:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Jp-0000000FRNF-16Sh
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:03:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN9Jo-0002lb-33; Thu, 05 Jun 2025 14:03:36 +0200
Message-ID: <42bb9e05-4c14-45c8-8e87-63bb36dde438@pengutronix.de>
Date: Thu, 5 Jun 2025 14:03:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>,
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
References: <20250604-fix-tmp-file-v1-1-96a1c1a8d636@pengutronix.de>
 <174912486604.487871.13827725452491254829.b4-ty@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <174912486604.487871.13827725452491254829.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_050337_304422_4E2B0617 
X-CRM114-Status: GOOD (  13.40  )
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
Subject: Re: [PATCH] fs: remove O_DIRECTORY flag from O_TMPFILE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/5/25 14:01, Sascha Hauer wrote:
> 
> On Wed, 04 Jun 2025 15:15:06 +0200, Stefan Kerkmann wrote:
>> Decompressing fit images fails since release 2025.05.0 with commit
>> a1248198fa ("fs: implement O_DIRECTORY").
>>
>> The reason is that converting the decompression buffer fd back to a file
>> in the `fd_to_file` fails the `O_DIRECTORY` flag check. This is flag is
>> set because `O_TMPFILE` is defined to contain the `O_DIRECTORY` flag.
>>
>> [...]
> 
> Applied, thanks!

Does this warrant a v2025.05.0 or should we just have an early v2025.06.0?

Thanks,
Ahmad

> 
> [1/1] fs: remove O_DIRECTORY flag from O_TMPFILE
>       https://git.pengutronix.de/cgit/barebox/commit/?id=95aeb8d47d10 (link may not be stable)
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




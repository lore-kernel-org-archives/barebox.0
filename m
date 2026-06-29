Delivery-date: Mon, 29 Jun 2026 10:52:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7jc-00B3p7-23
	for lore@lore.pengutronix.de;
	Mon, 29 Jun 2026 10:52:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1we7jc-0000Cw-1N
	for lore@pengutronix.de; Mon, 29 Jun 2026 10:52:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3sxNy+6WnaRLlB3AoiS6dGDWjQ+9YhbLiqiM21X7Yc=; b=qMKccGXksGdk7xuJgS7vanKtCr
	G6kC1YZkZLt8Z6LNfu+rXowd7rdK1jCT/w3W7NbpWaICmH8OANZZnNE1rvk2c980IoB+kur5r9YDj
	3pwDSXHmpuF1jSXaTozq5HrHq0ZzSFytqhIa8Qary0cGn2Cca0FURSKKBrR5Jg3tn2foSGbQieZ5U
	j7SciS9doIDTm3VvbjD1srO0qERGtxxvSYHRBgyGzIC0cy6pqXxYdbMxPdnU0gD/lsTWN//txeFwH
	8Afr/2UFwi/mLz1/UUGvn/TvgCyX6dWsUe3BvfOG3WldH2FUbPDEP5vkwbVHirqOXpMbF5kcpQpvP
	3QMjWifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7ie-0000000E2aO-28gD;
	Mon, 29 Jun 2026 08:51:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we7ib-0000000E2ZT-2PtT
	for barebox@lists.infradead.org;
	Mon, 29 Jun 2026 08:51:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1we7iY-0007aW-55; Mon, 29 Jun 2026 10:51:50 +0200
Message-ID: <9f66c07d-b0f4-4a7c-bee3-3b3bf9caca17@barebox.org>
Date: Mon, 29 Jun 2026 10:51:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <E1we7eZ-00000005eQz-3Roc@pty.whiteo.stw.pengutronix.de>
From: Ahmad Fatoum <a.fatoum@barebox.org>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <E1we7eZ-00000005eQz-3Roc@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_015153_639920_182C05D4 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 7/9] mci: add PCI SDHCI controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/29/26 10:47 AM, Sascha Hauer wrote:
> On 2026-06-26 18:19, Ahmad Fatoum wrote:
>> QEMU can expose eMMC through the class-compliant sdhci-pci device, but
>> barebox only had platform SDHCI glue. Add a PCI host driver that maps BAR0,
>> enables bus mastering, initializes the SDHCI core and registers an MCI host.
>>
>> This is intentionally small and PIO-based, which is enough for the QEMU RPMB
>> test environment while reusing the common SDHCI helpers.
> 
> Is this comment wrong? The driver depends on HAS_DMA and even calls
> sdhci_setup_adma().

Yes, I had problems getting RPMB access to work with PIO and ADMA fixed
that and I had not dug deeper.

Can you remove that paragraph when applying?
>> index 4413fd1655aa..d6746fbec28f 100644
>> --- a/drivers/mci/mci-core.c
>> +++ b/drivers/mci/mci-core.c
>> @@ -2942,7 +2942,7 @@ static struct device_node *mci_get_partition_node(struct device_node *hwnode,
>>  	struct device_node *np;
>>  	char partnodename[sizeof("bootx-partitions")];
>>  
>> -	if (index > 8)
>> +	if (!hwnode || index > 8)
>>  		return NULL;
> 
> Should this be an extra patch?

This is the first non-DT instantiated device and thus there is no DT
node. I can split this off if you like. The rest of the file seems to
handle non-existence of a DT node just fine.

Cheers,
Ahmad

> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 




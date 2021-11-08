Delivery-date: Mon, 08 Nov 2021 11:30:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk1uf-00017m-Gd
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 11:30:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk1ue-0006oG-Jt
	for lore@pengutronix.de; Mon, 08 Nov 2021 11:30:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JUi1S0ymeZ0gkr6GUDG07LhuaM1OzYZuV50taTKmFVE=; b=LHbt+R0yQ/AzChK5+OfNEVi488
	J/stgvtuafIc5jb+fgChx8aShb3hMtVwAMmgOQIg4h9EhWY6OQ1VQfsd6FEPJxZiYfNRc+TdAFGkL
	L46HiQn+opnnNH0+YKvvf/UJz0Gp67EGCbfIJ9qbvvCbhU+/sZW7q8VUgPO18wbAIlAENhrnu6Z3A
	LCvBvSCkEzozOV3UINYhW1d+22JalCpxFSem+JGM93VaXIRVVcOzwll1lTTqbjNoqu8bOVQOf0imE
	vigiMWbz/NYwHZt3Gin/Fozwer32GbYzg+SQP/ww60o5QwM9M2OZAJfoCLqtXLndKin8bVO+NOwka
	mFfI/lkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk1sw-00G2x9-Uu; Mon, 08 Nov 2021 10:28:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk1sr-00G2vm-CV
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 10:28:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mk1sp-0006b1-JB; Mon, 08 Nov 2021 11:28:11 +0100
To: Sascha Hauer <sha@pengutronix.de>, Philipp Zabel <pza@pengutronix.de>
Cc: barebox@lists.infradead.org, Ian Abbott <abbotti@mev.co.uk>
References: <20211101175207.2160779-1-a.fatoum@pengutronix.de>
 <20211102080651.GY25698@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <401d5888-cfd6-4ef7-719b-e4878f7dbb2f@pengutronix.de>
Date: Mon, 8 Nov 2021 11:28:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211102080651.GY25698@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_022813_471676_CCF49AAF 
X-CRM114-Status: GOOD (  23.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] mci: dw_mmc: make reset control optional again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 02.11.21 09:06, Sascha Hauer wrote:
> On Mon, Nov 01, 2021 at 06:52:07PM +0100, Ahmad Fatoum wrote:
>> As documented in 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
>> compatibles"), it was intended for the reset to remain optional as to
>> not break existing users. Unfortunately, my later a3cf324593ea
>> ("mci: dw_mmc: add optional reset line") didn't heed that and made it
>> required, breaking SoCFPGA DW-MMC use as a result.
>>
>> Revert that line to fix the regression.
>>
>> Fixes: a3cf324593ea ("mci: dw_mmc: add optional reset line")
>> Reported-by: Ian Abbott <abbotti@mev.co.uk>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mci/dw_mmc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
>> index b402090ab3cb..86c4f43e88f5 100644
>> --- a/drivers/mci/dw_mmc.c
>> +++ b/drivers/mci/dw_mmc.c
>> @@ -572,7 +572,7 @@ static int dw_mmc_probe(struct device_d *dev)
>>  
>>  	rst = reset_control_get(dev, "reset");
> 
> Philipp, the reset binding lists the reset-names property as optional.
> What's the expected behaviour of the reset_control_get() above when the
> reset-names property is not present in the device tree? Should it return
> an error or should it return the unnamed reset control?

can this revert still be applied for master? I'll look into reworking this
for next.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


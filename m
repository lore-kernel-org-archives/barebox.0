Delivery-date: Tue, 30 Jul 2024 13:11:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYklG-004RZr-2u
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:11:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYklG-00044L-9b
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:11:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RF4dwRXopTNSXKT1nszVf4DARG6Ioq2DjHhStGz5JrQ=; b=QogSzb3wEgMHfRhT9fIe06Bs9e
	Bs+zYfKfqxsaIVN0IRcJIohaYLf8BIfY6h8rs18KLzpM2VFTYGqyB7UECPLfXNwZR+CUuupoxyXlI
	67rO8xy5W2jVLGm0u2h4pg1u1J57MAS976UCNlW134ARaibcLmVkQvsS4b5VQ+94A6qLWYLHEjKsu
	tKymmV2tS1mxtZayqd295wSpDMqA506ZAcmSiAkRctSNKO+uIB0e9Y44b9J2rSCsbM7O4ipUxk2Tt
	/90XdD5AfmYhmW5aCFASj1NIKIPzJ+raNPkH1+ggMSuQqPbG+oq21hVw0rtod6+Fm6qQ5Ly9KTeNc
	nFtdIBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkkp-0000000Eqkr-2CpL;
	Tue, 30 Jul 2024 11:10:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkkl-0000000EqjF-42lJ
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:10:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYkkk-00041O-MT; Tue, 30 Jul 2024 13:10:50 +0200
Message-ID: <7f41a2ea-e6da-45a0-9df6-550df630794d@pengutronix.de>
Date: Tue, 30 Jul 2024 13:10:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-5-a.fatoum@pengutronix.de>
 <Zqis-eFqEpUyebFo@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zqis-eFqEpUyebFo@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_041052_037524_CE90095D 
X-CRM114-Status: GOOD (  19.70  )
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
Subject: Re: [PATCH 04/10] mci: turn bool members into bitfield in struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.07.24 11:06, Sascha Hauer wrote:
> On Tue, Jul 30, 2024 at 09:19:23AM +0200, Ahmad Fatoum wrote:
>> In preparation for adding more boolean flags, turn the current two bools
>> into two bits sharing the same u8-sized member.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  include/mci.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/include/mci.h b/include/mci.h
>> index 773aed896c96..4f1ff9dc57c8 100644
>> --- a/include/mci.h
>> +++ b/include/mci.h
>> @@ -568,8 +568,8 @@ struct mci {
>>  	unsigned csd[4];	/**< card's "card specific data register" */
>>  	unsigned cid[4];	/**< card's "card identification register" */
>>  	unsigned short rca;	/**< relative card address */
>> -	bool sdio;              /**< card is a SDIO card */
>> -	bool high_capacity;	/**< high capacity card is connected (OCR -> OCR_HCS) */
>> +	u8 sdio:1;              /**< card is a SDIO card */
>> +	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */
> 
> This doesn't seem to be necessary. They share the same byte in either
> way. From a quick test:

They don't share the same byte, but the size didn't change because of
padding. More members are added into the padding space in subsequent
commits, which would affect structure size.

> 
> struct foo {
> 	u16 a;
> 	bool b;
> 	bool c;
> 	u32 d;
> };
> 
> struct bar {
> 	u16 a;
> 	u8 b:1;
> 	u8 c:1;
> 	u32 d;
> };
> 
> printf("%d %d\n", sizeof(struct foo), sizeof(struct bar));
> 
> The result is 8 for both structs.
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




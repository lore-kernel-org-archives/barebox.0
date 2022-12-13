Delivery-date: Tue, 13 Dec 2022 15:14:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p563A-002hev-Ev
	for lore@lore.pengutronix.de; Tue, 13 Dec 2022 15:14:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5639-00010j-UJ
	for lore@pengutronix.de; Tue, 13 Dec 2022 15:14:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L05rdgLlUF8365ejdfCeYyM2TiuxTPeFSM4L6A+7Sj0=; b=th9SuM9oSxeWOjUQphuPuVTyGI
	WZ3yL0qEuNjsJIDXFsPvXDpSGXJC9PoIH8KGc6kCSirqaUGWSsuepuWhYdvkunI4iwnrKlL2pmqF9
	RVYWMbiSv1ZW32YmLhC3le/QYCD3oAFmUr70UbDjzw+knr04FGnm+X+u1T2j8eKWR+9ygXSzUIIdz
	JXr/xB9j4hMMjZBTCh739pP2nrqemNtMO3s3SC4Gltkau4y1GNHEWgsoB6oO2V6rIr8FS5aa6Z6Tv
	Pk+J88LEsuzKxyylBSJvxGFkwFV+/PrKdyjm7f94zwkahAGHIHkCEqjsoDXHWtYadYqGk4ipX7De9
	Cpk7N1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p561w-000zWM-HY; Tue, 13 Dec 2022 14:13:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p561r-000zSP-Ci
	for barebox@lists.infradead.org; Tue, 13 Dec 2022 14:13:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p561o-0000qu-E3; Tue, 13 Dec 2022 15:13:04 +0100
Message-ID: <1ca76398-af23-5a3b-5e2f-e8e589f44868@pengutronix.de>
Date: Tue, 13 Dec 2022 15:13:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20181102091156.26476-1-s.hauer@pengutronix.de>
 <20181102091406.qewpj5eszyrmrhpu@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20181102091406.qewpj5eszyrmrhpu@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_061307_465064_EC1AA155 
X-CRM114-Status: GOOD (  16.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmc: atmel: Make write work on sama5d3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.11.18 10:14, Sascha Hauer wrote:
> On Fri, Nov 02, 2018 at 10:11:56AM +0100, Sascha Hauer wrote:
>> For some reason the sama5d3 needs a delay after a
>> MMC_CMD_STOP_TRANSMISSION command. Without it writing fails with:
>>
>> ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout
>> ERROR: atmel_mci f0000000.mmc@f0000000: command/data timeout
>>
>> The reason is not yet clear, so live with this hack for now.
> 
> I won't apply this one, just want to have that noted somewhere. If
> anyone has an idea please tell me, I am clueless :(

Issue still persists with SAMA5D4. I just sent a patch, which I think
may be a proper fix for this issue.

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




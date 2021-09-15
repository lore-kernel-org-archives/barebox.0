Delivery-date: Wed, 15 Sep 2021 12:41:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQSM1-0004ML-Mk
	for lore@lore.pengutronix.de; Wed, 15 Sep 2021 12:41:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQSM0-0003lL-OX
	for lore@pengutronix.de; Wed, 15 Sep 2021 12:41:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9HKlbsdL8PyxmIZygm7LSVIvLYarevkxe3P4C4Hx+Xc=; b=4n7IoFPLzhgYTmRKRsFMONNi5V
	Scv3Ooc2AZS6RAsW/EwBG6s0ilUjfHgErz9GqAN6dp7cbWRJyx1IHHr4Hp+FsN3PkLgCGsNrFfk67
	Kj6yYSqOrdcxa/yoaunsgOuGnmUq5UMLBq8tX/jgb37YgoPNGkx9cyWQoMxscHL/9UuIhRN/jJno9
	+pyUx5xNUIW0A9JagjLW75aQt+RqirPINva99pqiV8fapa3L0yek+wxtGgOcLNEuZgXSAdIocm2q/
	m9y7oEvpXsjlE+qonblcJLnc5cFZZEmK0ahMy0Sff29ExShVIt8gzsDm/PQVoEJsptPZ2H10etrku
	LerYijOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQSKg-008pEF-TT; Wed, 15 Sep 2021 10:40:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQSKb-008pDo-8V
 for barebox@lists.infradead.org; Wed, 15 Sep 2021 10:39:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mQSKa-0003Sb-1m; Wed, 15 Sep 2021 12:39:56 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>,
 Barebox List <barebox@lists.infradead.org>
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
 <20210905135122.7038-6-a.fatoum@pengutronix.de>
 <CAMHeXxPV_5mzAH3gbpy4WrL16kSstkLhJvx-VUQqbmy9C1r6WQ@mail.gmail.com>
 <CAMHeXxOmYuM9+ucqiXEzSSJ7z_0xgRLSE4BYG7GVNCFT0PR3xg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2d727028-03bb-9b19-3c1d-1c430c793889@pengutronix.de>
Date: Wed, 15 Sep 2021 12:39:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMHeXxOmYuM9+ucqiXEzSSJ7z_0xgRLSE4BYG7GVNCFT0PR3xg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_033957_361791_48CAF47E 
X-CRM114-Status: GOOD (  28.33  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: i.MX8MM: correct unrecognized fracpll frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 08.09.21 21:00, Trent Piepho wrote:
> On Sun, Sep 5, 2021 at 6:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Correct the value in imx8mm_fracpll_tbl to match the one expanded by
>> MHZ(266) macro, rounding it down to MHz range only.
> 
> It's not really "correcting" the value, since the value is wrong.
> 
> 24 MHz / 9 * 400 / 2^2 = 266666666.6 Hz
> 
> Maybe it would be better to say, "make the value in imx8mm_facpll_tbl
> incorrect so it matches another incorrect value used elsewhere."
> 
> In which case, one has to wonder why it would not be better to use the
> correct value everywhere?

Fair point. I just ported the patch and called it a day.
Looking further into it, the rounding is strange as well.
166.75 MHz is rounded to 167, but 266.6 is rounded to 267.
It would be cleaner to just use MHz values through out and don't use
Hz values at all and always round up. This makes the code diverge
from U-Boot, but I guess that's acceptable. Works for you?

Thanks for the reviews by the way!

Cheers,
Ahmad

> 
>>
>> Signed-off-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
>> [afa: ported from U-Boot 6ac4d4480663]
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/ddr/imx8m/ddrphy_utils.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
>> index 9a4e1a22ee5e..6836e7d4b351 100644
>> --- a/drivers/ddr/imx8m/ddrphy_utils.c
>> +++ b/drivers/ddr/imx8m/ddrphy_utils.c
>> @@ -198,7 +198,7 @@ static struct imx_int_pll_rate_table imx8mm_fracpll_tbl[] = {
>>         { .rate = 600000000U,  .r1 = MDIV(300) | PDIV(3) | SDIV(2), .r2 = 0 },
>>         { .rate = 594000000U,  .r1 = MDIV( 99) | PDIV(1) | SDIV(2), .r2 = 0 },
>>         { .rate = 400000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(1), .r2 = 0 },
>> -       { .rate = 266666667U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
>> +       { .rate = 266000000U,  .r1 = MDIV(400) | PDIV(9) | SDIV(2), .r2 = 0 },
>>         { .rate = 167000000U,  .r1 = MDIV(334) | PDIV(3) | SDIV(4), .r2 = 0 },
>>         { .rate = 100000000U,  .r1 = MDIV(300) | PDIV(9) | SDIV(3), .r2 = 0 },
>>  };
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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


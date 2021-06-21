Delivery-date: Mon, 21 Jun 2021 07:04:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvC77-00046u-J6
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 07:04:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvC76-0002xA-Iw
	for lore@pengutronix.de; Mon, 21 Jun 2021 07:04:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEcTifZU9n8nz0olXg5r2/ScefcIIYgewrNA12FHMLk=; b=pahldPK0fgQ4CbZYKbe6nXppB3
	G1PXjTAww5RJGZdmlSFfvqG7qIiRv6k+2qd25k4cUnr4ZmDYDYIa3WMYLti5+oxtWsPwjVyNR/yBO
	ioe/gsy2xhuZAha01Djpo59dAzNysxRbf6Rpy2vkyYmTiFfGn9CRFTOPpBzScMAriz4ybg9jRKl06
	0GXk7UBqGkijqmwjSLp5C+0XzcTV0+Px+D4g1nMoq+AieEMrkbcKj3H8G4MQqqqNnijijcSgZwq92
	8s6qyLrhPemnk+Jmk+Te/ojtA7vYCIHfFsP0sbKgA9UVyMGCa53DkWbVIRi4DN3d/PMMUbW3NSRNp
	dLZzrgUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvC5s-0026Bb-0p; Mon, 21 Jun 2021 05:03:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvC5n-0026Ar-A5
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 05:03:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvC5k-0002mn-C1; Mon, 21 Jun 2021 07:03:24 +0200
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210619032654.455801-1-ahmad@a3f.at>
 <20210621045204.GI9782@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8554cd9f-2b10-d2d7-8dbb-a1fa866d0058@pengutronix.de>
Date: Mon, 21 Jun 2021 07:03:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210621045204.GI9782@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_220327_421781_4CBBD0B7 
X-CRM114-Status: GOOD (  16.56  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] string: implement strchrnul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 21.06.21 06:52, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Sat, Jun 19, 2021 at 05:26:53AM +0200, Ahmad Fatoum wrote:
>> -}
>> -
>>  static int sscanf_two_digits(char *s, int *res)
>>  {
>>  	char buf[3];
>> diff --git a/drivers/of/base.c b/drivers/of/base.c
>> index 6e716fcdcf27..f375fcd67572 100644
>> --- a/drivers/of/base.c
>> +++ b/drivers/of/base.c
>> @@ -2479,10 +2479,7 @@ struct device_node *of_get_stdoutpath(void)
> 
> There seems to be a patch missing in this series. I don't have
> of_get_stdoutpath() in my tree.

Sorry, should have mentioned the deep probe series as prerequisite:

https://lore.barebox.org/barebox/20210506092901.25461-8-s.hauer@pengutronix.de/

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


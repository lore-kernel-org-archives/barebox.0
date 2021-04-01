Delivery-date: Thu, 01 Apr 2021 15:53:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRxlB-0006q8-Jq
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 15:53:21 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRxlA-0001dC-Sc
	for lore@pengutronix.de; Thu, 01 Apr 2021 15:53:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=clhB3dyHcrK6slZkHPD9E7tjAvmkrshx0eSEwgh3kuo=; b=llhqEJxCb4FbgYt9ErLeCwhX1
	rTuCrlxmmlNlyAxWNY9t3tg5juBSkV1eK5nljCPBQaeGHXat9FuSixPKHdAEZ0liYvPMUfc4qD5mQ
	C+Fhsey4kudb2HI0kYneNTY+UvVMYvlEAuTVRPKOHhWWnk5QaFBpX9cufqkdXvIRGHY7+c8TWp1M8
	jJmKg49jfRDkLUvszDwvX37iNKyx7pOccKjiruzwzXg6yoHvfSPLMNgHabayKkTxl01DXjQlElOio
	m5GUYPjAIwlMTeLGEIMxziHGnTJNhU0USx5XZjedjIH+J+X9yg8qU+ZuzSRGNQDZ6EH4pMSuM9pP4
	ukXIZWQ8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRxkC-009juw-OY; Thu, 01 Apr 2021 13:52:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRxk7-009juO-My
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 13:52:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lRxk7-0001XM-3z; Thu, 01 Apr 2021 15:52:15 +0200
To: alex.aring@gmail.com,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20140405230029.876959920a802447aeb9720f@gmail.com>
 <1396724565.786389175@f77.i.mail.ru> <20140405192722.GA2297@omega>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f29356e1-46ff-6920-f233-b073b93e6b42@pengutronix.de>
Date: Thu, 1 Apr 2021 15:52:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20140405192722.GA2297@omega>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_145215_832708_0683892B 
X-CRM114-Status: GOOD (  12.25  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: RFC: barebox-x86 as a coreboot payload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 05.04.14 21:27, alex.aring at gmail.com (Alexander Aring) wrote:
> On Sat, Apr 05, 2014 at 11:02:45PM +0400, Alexander Shiyan wrote:
>> Sat, 5 Apr 2014 23:00:29 +0400 ?? Antony Pavlov <antonynpavlov at gmail.com>:
>> Amused: http://www.coreboot.org/File:Coreboot_libpayload_tint.png
>> This is a really missing feature in barebox :)
>>
> 
> We should port doom to barebox. This is the most ported game ever.
> 
> - Alex

[x], see the announcement earlier today.

:-),
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 03 Mar 2025 09:55:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1aM-009Gjj-2M
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 09:55:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1aL-0002hB-Jr
	for lore@pengutronix.de; Mon, 03 Mar 2025 09:55:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IPrKV4Q9pV9QC8D7yJzpOBkgosUI3HIo9Sr4r+L/kwc=; b=nOj8uy71ixiBQkZASlQaJrLos2
	vREiNIHi17HnmGv2hn2rsMNP1Y4T2bNtHdAoRGqBHoLfYw5oBPcZjsQZ1WzwvWFbRD8HdZ9FtKKWv
	8uFz+Qb8ymBbuNCI3/WjwJU+qYF+AX88pUkdHULcmHSf7pWWCjDpC94RVmnThjmOYv2cuDuofirRw
	YAPMw/cPKTCF1upGi6qBji4DByWC8WlOtSvS9Vwap0/xRAjekTjJOu/z9FmVqx+e8NrV0INkzoJCj
	zF61ceyb9xGRH/Mg4Enca2veGdRvk+vuuG/ZHtYsEH81V3HsWjJVgLZTsDsXhUK4idZl+01O2NyfX
	Kqm2ZUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1Zs-000000000kx-0LuR;
	Mon, 03 Mar 2025 08:55:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1N5-0000000HZJN-1RKA
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:41:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tp1N4-0000vX-4Y; Mon, 03 Mar 2025 09:41:54 +0100
Message-ID: <3a8afe4a-f7e7-4158-b302-09f67dc11d8f@pengutronix.de>
Date: Mon, 3 Mar 2025 09:41:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
References: <20250221180109.14129-1-stefano.manni@gmail.com>
 <06d40295-264c-4119-a201-f6e045def59d@pengutronix.de>
 <6N27SS.D8B9D3CEGOUH3@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <6N27SS.D8B9D3CEGOUH3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_004155_378665_5360B37F 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.02.25 16:49, Stefano Manni wrote:
> Hello Ahmad,
> 
> On ven, feb 21 2025 at 18:33:04 +01:00:00, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> Hello Stefano,
>>
>> On 21.02.25 19:01, Stefano Manni wrote:
>>>  Device file was hardcoded to "nand0.barebox".
>>>  This patch harmonize the signature of
>>>
>>>  imx6_bbu_nand_register_handler()
>>>  imx7_bbu_nand_register_handler()
>>>  imx28_bbu_nand_register_handler()
>>>
>>>  with the other bbu register functions in order to take
>>>  the devicefile as parameter.
>>
>> Is this this the sole motivation behind the patch or do you
>> intend to actually make use of the ability of varying
>> the devicefile?
> 
> my purpose is to let people use a device/partition different from the hardcoded one.

Can you have multiple NANDs? But yes, customizing partition name can
be useful.

Thanks,
Ahmad

> 
>>
>> Thanks,
>> Ahmad
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



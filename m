Delivery-date: Mon, 07 Jun 2021 09:35:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9nS-00018Z-FA
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 09:35:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lq9nN-0005Kx-E5
	for lore@pengutronix.de; Mon, 07 Jun 2021 09:35:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Jy19xMkUuXiLKZviMOuDaWCYejXk3On4MRtVh88QIVk=; b=c2Hj5PCTkzAA26uhXlpjTNPb9z
	rUQcZlNhu+Yh5ROcJsnFuXxTXEfvQ3Gu/LhMoBUREE4xNY+BtjBhtV3Wjo6NKGbvQ3qxzvoh5qJVd
	tHuTKZQwyrqFCIOVs+RZjJVofqKdc/PcpiSfgbLovSxJ/TZ56PE4clsH2K1p1srhQrtgDMWQWNWJA
	Tpv3d2pztXcNEvbFBUEJGeV8YTPr+C4ISZW6hEC2kGhnDOauft3/yfuEidQfoy6k25bF9CcKZymQy
	XrU2Xo3ju9R5zcIpkMCnviUc743yP05gZcbhnD8l6bgKhB/aq70ni1ocw1zzUQWMPCStuEKRHxL38
	RYD6R5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq9lq-0025TE-0Z; Mon, 07 Jun 2021 07:34:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq9li-0025Se-DW
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 07:33:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lq9lf-0004yB-8D; Mon, 07 Jun 2021 09:33:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
 <20210531073821.15257-8-a.fatoum@pengutronix.de>
 <d193ad83-21f2-cbc5-a8d9-01ffa6cbe149@pengutronix.de>
Message-ID: <79eb9d75-f2e8-ee6b-9490-9f2c22c5e2de@pengutronix.de>
Date: Mon, 7 Jun 2021 09:33:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <d193ad83-21f2-cbc5-a8d9-01ffa6cbe149@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_003354_489765_35EDEBAE 
X-CRM114-Status: GOOD (  15.30  )
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
Subject: Re: [PATCH 07/20] RISC-V: support incoherent I-Cache
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.05.21 09:40, Ahmad Fatoum wrote:
> Hello Antony,
> 
> On 31.05.21 09:38, Ahmad Fatoum wrote:
>> SiFive SoCs have separate I-Caches that require self-modifying code
>> like barebox' relocation and PBL extraction code to do cache
>> maintenance. Implement sync_caches_for_execution and use it where
>> appropriate.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---

>> +void sync_caches_for_execution(void)
>> +{
>> +	if (IS_ENABLED(CONFIG_HAS_CACHE))
>> +		asm volatile ("fence.i" ::: "memory");
> 
> If Erizo on FPGA chokes on this, we can have it pass
> along a feature flag from PBL that says it doesn't
> need cache maintenance. Please advise.

I now skip over fence.i in the exception handler, so it should be ok
to call this, even on systems that lack Zifencei ISA extension.

I'll send out a v2 soon.

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Thu, 14 Jul 2022 10:56:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBuds-007OMI-Qz
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:56:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBudq-0007m3-Ii
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QL3FnxR+bxdB+w34bKel8DGC8sCitbTqdNlkbtyhoAA=; b=2oLr47jv4uXl47MK/SkAU/iEP8
	PoxLmsdrH6pfge89OEiQ/wv8FlDGg6GmdSGMo5Y4sqDdR5ms8eGdMm0jSCxbgJpgox0N/xOZdrs0I
	oLOpKD0xnHfhRmTCU8hPWggcp10PCNFbiIHJUhE4N1YoEXOePpWm1dYmYjztdl8/wLUKnpZveniF2
	/bSQXBATNJYXIYYz76HcNOeg4FhMrNBI5zcJpYdByZ+u+gvoLmNzu1zRUvden2iNNuNcsu085qDzK
	Vz36A0WJQ0rEG1W5qortquVdIYh5lxIniiT6n9u19hPQeYOqqJSrKMf0r1sS5xGgOB/uqRD2wT1ug
	vM9Bjeyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBucZ-00CXh6-FL; Thu, 14 Jul 2022 08:54:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBucU-00CXe4-JJ
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:54:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oBucR-0007Mv-Fy; Thu, 14 Jul 2022 10:54:47 +0200
Message-ID: <c2815e3a-dfd4-3398-0da0-cc494df3513e@pengutronix.de>
Date: Thu, 14 Jul 2022 10:54:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
 <20220713100922.1880282-6-a.fatoum@pengutronix.de>
 <20220714084513.GJ23482@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220714084513.GJ23482@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_015450_664238_D34F1C02 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/5] lib: uncompress: add general zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 14.07.22 10:45, Sascha Hauer wrote:
> On Wed, Jul 13, 2022 at 12:09:22PM +0200, Ahmad Fatoum wrote:
>> So far, we only supported zstd in squashfs and ubifs. Add support
>> everywhere else: In PBL for decompressing barebox proper, in uncompress
>> for compression arbitrary files and for bootm to decompress zstd
>> kernel images.
> 
> Have you tested this with the uncompress command?
> 
> a zstd compressed barebox works here, but using uncompress
> on a zstd compressed file results in:
> 
> ZSTD-compressed data is corrupt
> 
> or sometimes:
> 
> Out of memory while allocating ZSTD_DStream

I didn't test the uncompress command, no. How did you create
the zstd file? The Linux zstd decompression expects the size
to be trailing the decompressed data and doesn't parse the
zstd header. See the comment in scripts/Makefile.lib for details.

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



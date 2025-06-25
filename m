Delivery-date: Wed, 25 Jun 2025 07:46:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUIxv-00Apse-0T
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 07:46:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUIxu-0008SM-6M
	for lore@pengutronix.de; Wed, 25 Jun 2025 07:46:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o2K75hL7DxihJwrKDEf+wMTNEmhftR/3G9hC/8ybZnQ=; b=XGUUD16DCLkqxIcoJrZIZaItIx
	hdsPRLv+oaLt38jqRSsy4yn5NsN4VW9lxtIf9AWh7e+3QgIoW5HGmeRVqgCTpY4CUCT5v5njZHU2R
	lf9h0sm56KUmfR9+PRRBk8ohJ+jnC3pKf2qLNAUPdqdzyUVsCqUY8C4vLISFYR/w/cPMMsAed5krM
	s+06VdmY7WEZbZk0MsrGWsUglWM+owbXlCTsdj652xjd30Q5U4dZKgeiTnB6C0wsip3yW5DZH09Si
	2gpQ+V6Vz5rrBPuzU3zrxlBfh7DCAXixz8AXhiA/B7CFT7d0dg348Bz1MGm7VFU54eX18MIPlD6YI
	W9tJ/xZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUIxA-00000007b7I-2TpI;
	Wed, 25 Jun 2025 05:45:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUIx6-00000007b6P-44e3
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 05:45:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uUIx4-0007u2-Ko; Wed, 25 Jun 2025 07:45:42 +0200
Message-ID: <e2448275-4868-4e13-b4b4-30e182f63d44@pengutronix.de>
Date: Wed, 25 Jun 2025 07:45:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
 <20250612065812.2025665-9-o.rempel@pengutronix.de>
 <aFEfuaLIvT8cMLLA@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aFEfuaLIvT8cMLLA@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_224545_010652_0A0E13AD 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 8/9] fs: Report errors for out-of-bounds protect
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 17.06.25 09:56, Sascha Hauer wrote:
>> -	if (count > f->f_size - offset)
>> -		count = f->f_size - offset;
>> +		return errno_set(-ENXIO);
>> +	if (!count  || count > f->f_size - offset)
>> +		return errno_set(-EINVAL);
> 
> This breaks the saveenv command which does a
> 
> 	ret = protect(envfd, ~0, 0, 0);
> 
> to unprotect the environment sector. Try on a board with environment in
> SPI flash.

Just ran into this as well. It's easy to reproduce with QEMU.

Either by building multi_v7_defconfig and running:

  labgrid-pytest --lg-env test/arm/multi_v7_defconfig.yaml --interactive

or by building platform-v7a in DistroKit and running:

  configs/platform-v7a/run

Cheers,
Ahmad

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



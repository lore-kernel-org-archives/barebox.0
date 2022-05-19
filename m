Delivery-date: Thu, 19 May 2022 14:43:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfVN-0024NH-9v
	for lore@lore.pengutronix.de; Thu, 19 May 2022 14:43:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfVL-0005b6-OG
	for lore@pengutronix.de; Thu, 19 May 2022 14:43:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9d5Mke/p6sJ8fabHid4jg6yRDVs69ukC7BXP8r6PWQU=; b=w5+Y5U21/GJ4SJ
	2qjC3GStszn8Llw3E8QRJdaeCueVFwGTGzTIDxFsEyuPZTfzF7YUUsWuHzGUe2vALdFI7hXLytJrt
	A+8kxmpqlllUY+vUQMGVdUUhkF7i5SDKkCOwJy21e+uB5Mql6u1sZoQCHyJ+F6rk9hiHTNFOt+99m
	uBZ7JevSealW4Q7COeyuAQS4wb5twCigT4OiSHwb9htrIwVuAxWftp4yI0AB3RqaVIH77H/6cXJwT
	hvoTv+tNizuErmEhdT5dmnOGpfxSrg5P2KVkgVjolLidUYYwxKrZs5Teb48DW99Y+o7CWnYdoGGrq
	lbjqyQGYVf8pJ4nXR6KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrfTv-006iMn-4c; Thu, 19 May 2022 12:42:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfTp-006iKp-Uh
 for barebox@lists.infradead.org; Thu, 19 May 2022 12:42:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nrfTo-0005Lh-5k; Thu, 19 May 2022 14:42:12 +0200
Message-ID: <782b973c-e012-a2c5-11ff-f9bc945f07d6@pengutronix.de>
Date: Thu, 19 May 2022 14:42:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: frank-w@public-files.de, barebox@lists.infradead.org
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <1f4f9e12-34f9-6bf2-d15d-1ccf8c7e9329@pengutronix.de>
In-Reply-To: <1f4f9e12-34f9-6bf2-d15d-1ccf8c7e9329@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_054214_036332_007C41EF 
X-CRM114-Status: GOOD (  19.77  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.05.22 14:17, Ahmad Fatoum wrote:
> Hello Frank,
> 
> On 19.05.22 12:59, Frank Wunderlich wrote:
>> Hi,
>>
>> I try to create a basic driver for rk808 pmic/iodomains. I've noticed that first the iodomain driver is probed and then the rk808 on,but i need it reversed as rk808 registers regulators linked in iodomain via devicetree.
>>
>> How can i defer iodomain probing till rk808 is ready (regulators available defined as phandles in iodomain dt node)? Currently i get always ENODEV (property does not exist or regulator is not ready yet)....
>>
>> This is my current (dirty) source:
>> https://github.com/frank-w/barebox-r2pro/commits/r2pro-iodomain
> 
> While I don't know what iodomains are, I had ported the rk808 driver to barebox for
> use with the Rock Pi N10. I haven't come around to upstream it, because I haven't
> figured out why I can't use the existing regmap helpers like Linux does.
> 
> I have sent you the patches as a reply to your mail. Perhaps they'll
> save you some effort.

I see now that Kconfig/Makefile parts are missing, but I trust you can easily add those.
Also, you'll need this patch: https://lore.barebox.org/barebox/20220114084728.311277-1-a.fatoum@pengutronix.de/
(preferably after incorporating Sascha's feedback).

Cheers,
Ahmad

> 
> Cheers,
> Ahmad
> 
> 
>> regards Frank
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 
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


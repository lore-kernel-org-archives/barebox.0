Delivery-date: Thu, 19 May 2022 14:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfd4-0024fq-1Q
	for lore@lore.pengutronix.de; Thu, 19 May 2022 14:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nrfd2-0006iF-KN
	for lore@pengutronix.de; Thu, 19 May 2022 14:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGeLLNi2gURuBHns3LfxjSHUYTecHI1zcngALQ+B1IE=; b=NZ3EWmjYIcNQLi
	8uIh3gvAH2M9VHl1RThu+1l86yPcsobbc7bbPlpqa/mCJrmBhDbMlRNvfKpY51i/unS9qq96ndwC3
	lKXDt+OXvf3Z/QtUnI11bOCjrppEhFJG+Cb0oVGG/z9iI+sp6Fwd19vKcaN72kbKDbaxqR+trImyk
	qL6sIAEbK8DuKlT+Al42JUEQnnzCbLowATfcKKVvF5MHv53MirlXcHsCPqMYtH/o7J4xSLfPpdgci
	Hf5ZE4Jxkdpddnak88eT7oieY58BYyy6t9B2+CBIpz1jdRAXfTN5zCCBxJkR0ybBt4Oe0od3qIO4c
	YnkxytRsDIv2rWnYYBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrfbg-006lHr-FH; Thu, 19 May 2022 12:50:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrfbb-006lGp-Oq
 for barebox@lists.infradead.org; Thu, 19 May 2022 12:50:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nrfbZ-0006Lc-My; Thu, 19 May 2022 14:50:13 +0200
Message-ID: <e0e7cd6c-aa14-a09c-71d2-681842575398@pengutronix.de>
Date: Thu, 19 May 2022 14:50:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>,
 Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <1694C0B0-A962-420E-BA70-8061E8E9CA7F@public-files.de>
 <20220519115450.GV25578@pengutronix.de>
 <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <trinity-e8816284-959b-432a-bb6a-f33a6cd573df-1652964180567@3c-app-gmx-bs49>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_055015_865347_30030D4A 
X-CRM114-Status: GOOD (  21.32  )
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
Subject: Re: Aw: Re: Driver load order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.05.22 14:43, Frank Wunderlich wrote:
> @ahmad: thanks for your driver. Take a quick look into it...
> 
> it seems nearly complete, is there anything not working or was the only
> problem the missing regmap-handling added in part1?

IIRC, Linux just has regmap_i2c_init which does the correct thing for all
callers. While in barebox this doesn't work and I had to add a smbus specific
regmap_init. We can always consolidate this later though, so feel free to
add whatever you find missing, test it and send it out for upstream
inclusion. You have my Signed-off-by.

> My current approach is only register the regulators without doing a real
> pmic init. IO-Domain driver only needs to read out regulator voltage, i'm
> not sure if it's enough to get the value from the DT or if it needs to be
> really measured (to depend on complete probe/init of the pmic).
> 
> but the problem is that iodomain is probed before the pmic due to deep-probing
> if i understand Sascha the right way. So i need a way to defer the iodomain driver
> probe till rk808 is ready.

The right way with deep probe enabled is to just use regulator functions
normally and on first access, barebox will take care to probe the regulator
if not done yet. I am not sure if all this works as expected yet, but Sascha
already offered to help with that.

Cheers,
Ahmad

> 
> regards Frank
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


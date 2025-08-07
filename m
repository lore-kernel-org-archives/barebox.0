Delivery-date: Thu, 07 Aug 2025 10:11:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvj5-007vMi-30
	for lore@lore.pengutronix.de;
	Thu, 07 Aug 2025 10:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujvj5-00061J-Dp
	for lore@pengutronix.de; Thu, 07 Aug 2025 10:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O7t9+F3YsrToeTcnxkbiuHUIRUPNRL4xsoJsZ13QTZ4=; b=b3cPvzL39mYX4ixs4IvUazAbz7
	fYVVHhbnzIx/Cygb+AZUuUWfFbP/tpWxtLVDCECGQ6/SIYRGC57WgwRe0mD6XzSOFwJ96I7UAlHkN
	NSBOLecscWEhh9q7hZccnTjYS9W0B/TBhptd10ZdAMSTcNFQGDxNKe0dBEc4sxYgvGX7+XD9TL0bM
	f9oTxjGFBQuZgf2AeDWEQ7UjIj8hQkDgTHkuk/1ayvkGXvLL0OYziWv8aV+n1fzQoznTpyiKquEfD
	Gg4sasusKawwuRNEqYmgJVXyWB5RZQEYPvx3p5j1Jn4+yTQdmUkwYPoll86OcDZlop9WuKJT0D20q
	vBt/x5GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvid-0000000HYq9-1K2m;
	Thu, 07 Aug 2025 08:11:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvib-0000000HYoH-1UgR
	for barebox@lists.infradead.org;
	Thu, 07 Aug 2025 08:11:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujviZ-0005uv-VK; Thu, 07 Aug 2025 10:11:20 +0200
Message-ID: <81c2da1b-f282-42c0-b2a1-c9f7982c66f2@pengutronix.de>
Date: Thu, 7 Aug 2025 10:11:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
 <aJRW-miZJt_QGl8A@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aJRW-miZJt_QGl8A@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011121_399595_3F3BC860 
X-CRM114-Status: GOOD (  14.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] security: add new top-level menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 8/7/25 09:34, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Wed, Aug 06, 2025 at 04:00:01PM +0200, Ahmad Fatoum wrote:
>> +config SECURITY_POLICY
>> +	bool
>> +	prompt "Security policy support"
>> +
> 
> ...
> 
>> diff --git a/security/Makefile b/security/Makefile
>> new file mode 100644
>> index 000000000000..e0b17f12064c
>> --- /dev/null
>> +++ b/security/Makefile
>> @@ -0,0 +1,29 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +
>> +obj-$(CONFIG_SECURITY_POLICY)	+= sconfig.o sconfig_names.o
> 
> We are not there yet ;)

Oh, sorry about that.

Is a fix up ok?

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 06 Aug 2024 19:01:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbNZ3-006tHR-1z
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 19:01:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbNZ3-0003A5-1E
	for lore@pengutronix.de; Tue, 06 Aug 2024 19:01:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWTXtQN/tVn50cisrSwyxG9VptkTpm3QtzhUDUBV6ZQ=; b=vWstVkntcrPsACBVz13ei8QYBX
	z9+wlyWh2BXaRsDfJGWuFTRP6NmcIIcbc7d05Gw2wisNQn8gOWCJDw0KqZI3YduD3fvahK0OdKwte
	i8U+jpUBhRBjBJuUAJIP4dy7OuNuS+IaMDfkVQ+40nDIuoPHH6VLSimPjTwL2aZMQEcvSdjuTwAFm
	jK/ouva1ppxxc5m7KtZEGng9bWIsIwi/nLlIgYc//9jomQw30g1nPhTn+slTalVeUf48Xcqx0xBqu
	6th9upG7+r+nWPiV10drplYW4JCHlXa/iHNuv0vAgFLgXER8n+LL/3FTcshSbMLMGwvQ6iaZpYJ0H
	lk9uUD2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNYN-00000002Q2j-35lD;
	Tue, 06 Aug 2024 17:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbNYI-00000002Pxc-1QZV
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 17:00:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sbNYF-00033X-Fa; Tue, 06 Aug 2024 19:00:47 +0200
Message-ID: <00a1cb3c-3a4e-4143-997b-79c316dc7cf6@pengutronix.de>
Date: Tue, 6 Aug 2024 19:00:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <ca751c63f894078f566cf8de12d3f5a81ce252b0.camel@gmail.com>
 <8f9841c5-8d32-43f7-a663-6e2ca869f118@pengutronix.de>
 <b9dc55a32ce3b753c20a47824f0efc8b1b19d2ee.camel@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <b9dc55a32ce3b753c20a47824f0efc8b1b19d2ee.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_100050_474052_E7961843 
X-CRM114-Status: GOOD (  17.00  )
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
Subject: Re: short entropy delay causes RNG hardware error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefano,

On 06.08.24 10:33, Stefano Manni wrote:
> Hello Ahmad,
> 
> On Mon, 2024-08-05 at 18:56 +0200, Ahmad Fatoum wrote:
>>
>> Do you have rngd enabled? You don't need this anymore with a recent
>> enough Linux (>= v6.1 or perhaps earlier).
>>
>> This doesn't fix the underlying issue of course, but it will save you
>> some CPU time.
> 
> Your speculation that rngd is running comes from the error pops every
> 10seconds? I cannot see any systemd service related to rng running on
> my machine. How can I disable it?

Maybe you have haveged running? You could use inotify to see who
is opening the HWRNG's device file.

>> Increasing RTSDCTL_ENT_DLY_MIN to a value appropriate for your board
>> is
>> thus the way to go. I think it would be appropriate to add a device
>> tree
>> property, so the minimum delay value can be set on a per-board basis.
>>
> 
> Got it.

The property would also be appropriate to have in the upstream device
tree bindings, but it's ok to add it to barebox only for now. In that case
use a barebox, prefix though.

Cheers,
Ahmad


> 
> Thank you
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




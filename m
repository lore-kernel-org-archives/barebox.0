Delivery-date: Thu, 18 Aug 2022 10:36:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOb0W-002ozu-JA
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 10:36:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOb0U-0007ap-9x
	for lore@pengutronix.de; Thu, 18 Aug 2022 10:36:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N/Ubm+dle/yzKkkb2P0ozZdCKapD5YKDQAEdn7Jxga8=; b=mFtvARa63CErMrDy4PNavDC4KH
	Rmtj4Xl3wyue5S8ioy/VM4yCD2ehUbq2jDNYA3aWbtf9mzkVmihxkfKC6umiakEULcjIbaTQ3HNct
	Oia0rmCF0zmqubFn2BEchM65X7wupgbpqBDUuqgqnLLUwFQJkgHrMmgekQZVSy2StrlVOwmW0hWAy
	1FhxG0WuyDvony25v7YJan5g8tp2Hyzae/SwQM+B6CTSUfZqnKheB86++apjTu0j3m63AA4TDBdLQ
	A9tHUoypXxf98Rk9kG3YqqI+Q6oxkEGmuu0wgsLwCAm9qzkNyIerUY9shoVEm0pa5NDJXUqwaQGDf
	6oH6L+PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOazB-000vpf-2e; Thu, 18 Aug 2022 08:34:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOaz2-000veX-4t
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 08:34:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oOaz0-0007Eq-AN; Thu, 18 Aug 2022 10:34:30 +0200
Message-ID: <03ac6176-a090-f2ac-e01c-c01043cd5088@pengutronix.de>
Date: Thu, 18 Aug 2022 10:34:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
Cc: lst@pengutronix.de, ukl@pengutronix.de
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
 <20220818051955.2088238-3-a.fatoum@pengutronix.de>
 <ceb58cd4e79f540e5036b15e545aa758df3aaeba.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ceb58cd4e79f540e5036b15e545aa758df3aaeba.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_013432_339425_F1C4408C 
X-CRM114-Status: GOOD (  17.87  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/10] driver: consult feature controller prior to device
 probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Philipp,

On 18.08.22 10:19, Philipp Zabel wrote:
> Hi Ahmad,
> 
> On Do, 2022-08-18 at 07:19 +0200, Ahmad Fatoum wrote:
>> The newly added feature controller framework has two goals: Avoid
>> probing device in barebox that aren't indeed available
> 
> This specific wording makes me wonder why this isn't implemented inside
> of_device_is_available().
> 
> This would also take care of other devices querying device node
> availability, for example via of_graph_port_is_available(), if that
> ever happens.

I admit that restricting the barebox-side of feature controllers to device
probe can be limiting. For kernel fixup, any node may be disabled, unlike
with barebox, where only device probes can be skipped.

Placing the feature controller check in of_device_is_available is not
trivial. We currently do a single pass through the device tree and create
devices that are of_device_is_available(). If we start to look up the
feature controller there, we will need to do device creation in multiple
passes. While of_probe() can be called multiple times, I think there are
quite a few cornercase we will need to take into consideration when
doing this and are thus better addressed separately when the need arises.

Thanks,
Ahmad

> 
> regards
> Philipp
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



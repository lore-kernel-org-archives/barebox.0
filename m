Delivery-date: Fri, 23 Jan 2026 10:27:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDSL-004R0T-2c
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 10:27:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjDSK-0005VU-PP
	for lore@pengutronix.de; Fri, 23 Jan 2026 10:27:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pH1zsDZJjJ+sauqKNfCg0TvFGLjfXSvH7A7CyCZhHoQ=; b=KfNleK8umpRTvdR0emLrtWdjsC
	PWkoWE5NroEFNOvHanJO8s6Xoq/wpCgMHFjJkev/KD4unHKE1vbk6FeyAxQ2wOlMY3HH9LiPV+DbH
	T6MyT44ugvjxbosFjpV02hzd4dUxCV3xgqvTy8UA+DvBxe7CYte/Ampq/cwXJjuyjXmTm09OOMVoW
	HeKisx12rw2oXs0omlUBPuxRmQfv3SX+ycPDQblQ2qGxrl+Jm5tRXLzcKa6D4K0Rez86vzp0sTTLA
	zGKhYSFMzTaTN3Wfl+MTwYOhSNoGpnPRaEqT96MBVJddBR/CwBcBGX09n8nAqPmqGTjGk9JMQfUbf
	Q8CSlm9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDRw-00000008ZK6-2xno;
	Fri, 23 Jan 2026 09:27:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDRu-00000008ZJ2-2OhX
	for barebox@bombadil.infradead.org;
	Fri, 23 Jan 2026 09:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pH1zsDZJjJ+sauqKNfCg0TvFGLjfXSvH7A7CyCZhHoQ=; b=UKApa7mAgfeKHLrDGbnpD+TiIQ
	oHMSwcTg1gbLsd5nnA3eYqw1I7Cb8E/FLJShEvWfweERd5rSz8h9WfjDT5Oyo3+M1OHyOtb77SL3u
	dR11ndo+5lFfPVQMywB1Wm8g9tzYSSw4vaEGN5yBh4HXpoqIZ8/4dC/uI9IPftm6nPhIO9/V71dYj
	/gABkwS2l8m9/tRtKYgcG5fkbjgbv6050f1VYKZMilq16Kr3DT3rgCgOz5YgDPPEeo9BtPVebx7an
	8HRjjsbohxMuOjOuIwxQf2mxS7gr5vhRWp0A62OnNJQ1XRFKE7WGfUN3na5E5DPCTs4O34Eq5qZC3
	hWVz7f3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjDRr-000000022MC-0mHd
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 09:27:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vjDRn-0005NV-Dr; Fri, 23 Jan 2026 10:27:19 +0100
Message-ID: <d482031d-a2c1-42d8-aaff-ecce2dacce81@pengutronix.de>
Date: Fri, 23 Jan 2026 10:27:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
 <20260119-fpf-imx8mp-frdm-v1-1-13fac69eda23@pengutronix.de>
 <20260119152437.nenxd336vgenmlib@pengutronix.de>
 <aXM8iigmqbfe3h2k@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aXM8iigmqbfe3h2k@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_092723_370850_216ED3EC 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: i.MX8MP: add imx8mp-frdm board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/23/26 10:16, Sascha Hauer wrote:
>> @Ahmad @Sascha
>>
>> Do we have a proper driver for the bbu? In that case we could drop the
>> whole board.c :-)
> 
> No we don't have that yet. Would be nice to have, but requires some
> thinking. I think this would require yet another barebox specific device
> tree binding which is not a nice thing to have.

Another possibility would be to register it in SoC code as it's mostly
the same across boards anyway. In that case, boards would only need
an opt-in/opt-out and optionally a way to register different/additional
names for the update handlers..

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



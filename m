Delivery-date: Tue, 16 Dec 2025 11:48:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSbK-00C52f-26
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 11:48:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSbK-00071k-2r
	for lore@pengutronix.de; Tue, 16 Dec 2025 11:48:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9YLhIOXpAsbDV+m0RPMsZkyqmNRElM+izcCAEzgTS4=; b=gECBNFGmEkS7ypqkp/Eg1RaViO
	8UstAO8xXj30AtRtcYRiyAM5+7D7CW0qUuUfkGl62/UZpsizRSIQi391lHDKmd/7sBj7jfDFPHynK
	+djjpVWUix1XveTUkocG9tcxmiIYj96D6eLPASPZojtvGPZjXf7tsY7pRtI6ubw/5QClSsoOZZV4O
	8onx+YXoPpVgxf9/eW8LjSJcElcWGmccW35OQEiY55Xy2bei7fCI/52v+DJrAXXcNzB2NDn6wOnxH
	u8vRZBF5r2ueLjEcsgwXaGnkkyn6GMkqFqa/TXvzCqb53yS9zHM0zApJSENXeoso1a3CTJUwpS412
	XRkHYmfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSX1-000000053Uh-1S3a;
	Tue, 16 Dec 2025 10:43:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSWw-000000053Tw-0G05
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:43:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSWu-0006g3-Fv; Tue, 16 Dec 2025 11:43:44 +0100
Message-ID: <e423939f-0f48-4372-9719-e0054de6fad3@pengutronix.de>
Date: Tue, 16 Dec 2025 11:43:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maud Spierings <maudspierings@gocontroll.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com>
 <f54c14fa-25ee-448e-b94f-50d4190e12f5@pengutronix.de>
 <35a2d449-c60c-45f6-80b3-5a3bb30f7cbf@gocontroll.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <35a2d449-c60c-45f6-80b3-5a3bb30f7cbf@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_024346_543034_3EA01152 
X-CRM114-Status: GOOD (  14.85  )
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
Subject: Re: [PATCH] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/16/25 11:39 AM, Maud Spierings wrote:
> On 12/16/25 11:35, Ahmad Fatoum wrote:
>> Hello Maud,
>>
>> On 12/16/25 11:24 AM, Maud Spierings via B4 Relay wrote:
>>> From: Maud Spierings <maudspierings@gocontroll.com>
>>>
>>> After adding the imx8m-blk-ctrl driver errors started appearing about
>>> the genpd device already being registered.
>>>
>>> incorperate some extra device details in the device name so this
>>> possible collision goes away.
>>>
>>> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
>>
>> Thanks for your patch. Did you check what the device is called now?
>>
>> Do we need to change virt_dev->id = DEVICE_ID_SINGLE; just after the
>> context to get rid of a trailing 0?
> 
> `-- genpd:0:32ec0000.blk-ctrl@32ec0000.of0
> `-- genpd:1:32ec0000.blk-ctrl@32ec0000.of1
> `-- genpd:2:32ec0000.blk-ctrl@32ec0000.of2
> `-- genpd:3:32ec0000.blk-ctrl@32ec0000.of3
> `-- genpd:4:32ec0000.blk-ctrl@32ec0000.of4
> `-- genpd:5:32ec0000.blk-ctrl@32ec0000.of5
> `-- genpd:6:32ec0000.blk-ctrl@32ec0000.of6
> `-- genpd:7:32ec0000.blk-ctrl@32ec0000.of7
> `-- genpd:8:32ec0000.blk-ctrl@32ec0000.of8
> `-- genpd:9:32ec0000.blk-ctrl@32ec0000.of9
> 
> `-- genpd:0:32f10000.blk-ctrl@32f10000.of0
> `-- genpd:1:32f10000.blk-ctrl@32f10000.of1
> `-- genpd:2:32f10000.blk-ctrl@32f10000.of2
> `-- genpd:3:32f10000.blk-ctrl@32f10000.of3
> `-- genpd:4:32f10000.blk-ctrl@32f10000.of4
> `-- genpd:5:32f10000.blk-ctrl@32f10000.of5
> 
> I guess that means .of#
> So I should set that option?

Yes, please replace the existing virt_dev->id = index; with that.

Thanks,
Ahmad

> 
> Kind regards,
> Maud
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




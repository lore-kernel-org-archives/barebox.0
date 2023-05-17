Delivery-date: Wed, 17 May 2023 17:57:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzJX1-004TZw-ND
	for lore@lore.pengutronix.de; Wed, 17 May 2023 17:57:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzJWz-0002hR-Ey
	for lore@pengutronix.de; Wed, 17 May 2023 17:57:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bB6MklKPH65Yq6OYp99tUBq+pfWkixdGiVQZpVwfEYI=; b=sOA0U/oNLq9sgbl0o8UY/h2pO/
	8tw4/YpvGUXgcR+Hk03n/9CyZPJ3dqia9kVugMgZ0EdfRsaqiABhj1A8YprM1tE8Eoz0wOxXjAEFU
	1/UCySdQ2QYrzJ8ZUie+hqFTHHuSooIrtMRIaW94Bn1s9JX2S4KG8mZiYEofa1pqGa+HLAWnhOfGL
	wIHOgXsX1VgGt0LYIrM95MCwognTmsZ4Ljo/HvnJYPdmspfhHa4denoGYg/vPS5PXPHana9Mi2VV7
	1f4OVbX6Bu95uHAY8agV+Zqh4pHFkj9r/+9xWHAo4dzRmlqpnjBKkL88bVHK9jrhkFx7mUuKzaBMx
	Urrw5wSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzJVr-00ANht-1h;
	Wed, 17 May 2023 15:56:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzJVo-00ANhA-1p
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 15:56:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzJVl-0002dX-Qz; Wed, 17 May 2023 17:56:21 +0200
Message-ID: <3bb1cdac-4cdf-5771-92d7-1a9f7fc9a007@pengutronix.de>
Date: Wed, 17 May 2023 17:56:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-34-s.hauer@pengutronix.de>
 <1caed1b5-108d-7686-4e3b-0fd3bab04a58@pengutronix.de>
 <20230517145541.GD29365@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517145541.GD29365@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_085624_608786_7F47BAE9 
X-CRM114-Status: GOOD (  14.57  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 33/34] ARM: mmu32: Skip reserved ranges during
 initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 16:55, Sascha Hauer wrote:
> On Wed, May 17, 2023 at 04:43:39PM +0200, Ahmad Fatoum wrote:
>> I am a bit bothered by the asymmetry here: Reserved regions in the extra memory banks
>> will be initially uncached (because outside initmem), so this loop does the correct thing.
>>
>> For reserved regions within the initial memory, only the OP-TEE region would be uncached,
>> everything else would just be requested, but is still mapped cacheable.
>>
>> IMO, that's surprising behavior.
> 
> I agree. What would you suggest. Map all reserved regions uncached?

That would be my preference, yes. Then as a future step, we could elect to parse the
reserved entries in PBL to be able to handle OP-TEE or whatever even in middle of RAM.

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




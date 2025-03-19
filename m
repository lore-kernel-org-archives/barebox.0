Delivery-date: Wed, 19 Mar 2025 12:31:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turdi-001R76-0u
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 12:31:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turdh-0001wH-57
	for lore@pengutronix.de; Wed, 19 Mar 2025 12:31:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tWZJhtC3roa7dzqq+8tNUBrvT+6aS/sUqtLiFZ+ktNc=; b=VaKTmBUJhMPtFilk50JlqJdlYY
	uWatfJVY8bjLZI4RFO21kAWFWCwyok4abDQMTVnNTW0+EVEmIF8esTZnnz7WtHJl893GJsS421a4L
	71OAPo+SFxKyrAQdvfKJdr/k9E2MgcToK5f4I3u93VB9JO3cKcvukixvGmky7QMEDatxGBrNcCGkn
	3G8Y8lQoYvjPIq76fISFK2Vk8xZ/1YrHnRV3HsuS/xYWeu/h9iFTJYk/tDznRbTXhHqHUnV0U8Jpw
	d93JpslAHrLpmoLDfATsZ6AhOCOiCq+Xo+VyymuU1oSj+oyxBvaagEMVTz/hkoiC93wpMdVCrWLPN
	/9rTr2ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turd5-00000008pWu-1GDW;
	Wed, 19 Mar 2025 11:30:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turd3-00000008pVR-1FHh
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 11:30:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1turd0-0001nx-Lg; Wed, 19 Mar 2025 12:30:30 +0100
Message-ID: <7b564a3c-2f28-4d0f-86b4-fd3da47e94c3@pengutronix.de>
Date: Wed, 19 Mar 2025 12:30:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20250319102228.2401563-1-s.hauer@pengutronix.de>
 <50522640-eedf-4c34-81ad-9238aa6d39b9@pengutronix.de>
 <Z9qkCsnzeOjtnJkh@pengutronix.de>
 <92d6e357-4620-4c3e-ac28-48804d74d192@pengutronix.de>
 <Z9qnfYtxQ_LZtRYw@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z9qnfYtxQ_LZtRYw@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_043033_348817_5E2FF5DF 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/19/25 12:16, Sascha Hauer wrote:
> On Wed, Mar 19, 2025 at 12:03:31PM +0100, Ahmad Fatoum wrote:
>>
>>
>> On 3/19/25 12:01, Sascha Hauer wrote:
>>> On Wed, Mar 19, 2025 at 11:55:53AM +0100, Ahmad Fatoum wrote:
>>>> Hello Sascha,
>>>>
>>>> On 3/19/25 11:22, Sascha Hauer wrote:
>>>>> Depending on the configuration Linux on OMAP SoCs either needs ttyO or
>>>>> ttyS as console name. We used to pass ttyO, but c1c0d18973
>>>>> ("serial: omap: Use ttyS as Linux console name") recently changed this
>>>>> to ttyS which breaks setups that used to work earlier. Make the
>>>>> name configurable to allow for setups requiring ttyS and use ttyO
>>>>> as default to keep existing setups working.
>>>>>
>>>>> Note that with ti,am4372-uart we used to pass ttyO as well, but this
>>>>> specific compatible is only supported by the 8250 based driver which
>>>>> needs ttyS as console name. 
>>>>
>>>> This reads as if 8250_omap supports only ttyS, but it has logic to
>>>> support ttyO as well.
>>>
>>> s/needs/prefers/ maybe
>>
>> Ye, further below there is also 'will also have no effect', which is not
>> true as it hides an ugly error message.
>>
>> Can you reword these two parts and make the option default ARCH_K3?
> 
> ARCH_K3 doesn't need this option.

Ah, ok. Then feel free to add my:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

> 
> Sascha
> 




Delivery-date: Tue, 20 Feb 2024 10:27:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMPe-00FqS6-1R
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:27:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMPd-0001TX-Rh
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:27:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0GV3c87LlpXcuBm76WVY5RFPMk3TD4rM9VymK4orido=; b=JxrN+mKiAj7UGpIT5+RpCQoXR2
	/6sKpHLe2RBUam/X1+F2u40Af6daYCKVahAMn0fPbj5IaQrK6SRe4maASRV+6WBldbWF7lbpRMovF
	42S5MBEOITNIsuRd32qFBnu3/TvM6VSDU/gJNv472XLWlLSE9Hgv9GMiQRH3zAFwFM5SnXUiV1cjZ
	9EwFN8iMEUjOEGxL8TSU1zWi8puqR5wgg1HnXTFv44uF2SfGFcSSFL2cBhO19ljbNPPBkaXB3DCdt
	GJCPXmNO+H1iZJup9JFh+yOx2O/iQIlxEIAJlA6U1+DZNTEAeu45Pw44vP+PIy39NlOVfc9Kog8M5
	mP4YON8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMP9-0000000Dy3W-2d7T;
	Tue, 20 Feb 2024 09:27:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMP6-0000000Dy02-11M3
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:27:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMP4-0000yY-99; Tue, 20 Feb 2024 10:27:06 +0100
Message-ID: <dbe9edf6-1104-4fbf-bfd3-1ab76d4b580d@pengutronix.de>
Date: Tue, 20 Feb 2024 10:27:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
 <20240215223323.GB1462714@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240215223323.GB1462714@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_012708_319608_640B710E 
X-CRM114-Status: GOOD (  24.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 00/15] ARM: at91: skov-arm9cpu (SAM9263) first stage
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sam,

On 15.02.24 23:33, Sam Ravnborg wrote:
> Hi Ahmad,
> 
> On Thu, Feb 15, 2024 at 05:29:54PM +0100, Ahmad Fatoum wrote:
>> SDRAM setup and SD-Card chainloading support were previously added[1]
>> by Sam as well as a WIP patch to enable them for Skov ARM9CPU.
>>
>> I reworked his final WIP patch and fixed some smaller and bigger issues
>> that I ran into. Now barebox can replace at91bootstrap on this platform
>> when booted from SD.
>>
>> What didn't work for me were USB and Ethernet, but these didn't work in
>> Linux either when booted with the same device tree. I suspect this to be
>> related, but I don't have use for either USB or Ethernet in barebox at
>> this time, so I am happy with functional SD and nor flash.
>>
>> All patches are new ones, except for 11/15, which contains a changelog.
>>
>> [1]: https://lore.barebox.org/barebox/20220628203849.2785611-12-sam@ravnborg.org/
>>
> 
> thanks for picking up this work and finish it.
> There we several fixes in the patch-set I would never have found - nice
> work!

There might still be some dragons in the other drivers, so feel free
to tackle them. :-)

> All patches are:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> Except "ARM: at91: skov-arm9cpu: Add SD-Card xload support" - see my
> comment about the hardcoded hex-values.
> 
> If the hard-coded hex-values are updated to use the existing defines
> this patch is also:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Thanks for the review. Will include the tag in v2.

Cheers,
Ahmad

> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




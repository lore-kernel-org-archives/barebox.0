Delivery-date: Thu, 04 Dec 2025 10:24:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vR5Zq-007oeV-2Z
	for lore@lore.pengutronix.de;
	Thu, 04 Dec 2025 10:24:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vR5Zq-0003sr-7H
	for lore@pengutronix.de; Thu, 04 Dec 2025 10:24:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cawBKL5bY08Lk/nuw7+Aobf5UF03xYK+YcepWgI7S1Q=; b=ePbq8ulq+F2EZdecR28uGVlpUd
	HUQjdfDyAKybmWC6h3sRfVubLOqt0GJmTxM4DvB66Hmez50I9p1ufrUoeUWga2YPqjcP1snfZWKm1
	BL7QvgV19TnqB/JOq+6/1Sg6754tJyxj81jwhmQfNcTA0QloD6NdhBdpBNwAJtx//RV2XMg2CxJ97
	XdmS8V1/OrjXAkFYydhcsmNN6KvyhVLhSglKAqGhYJo7mDaqzgl5eIJAweAY4dCEHnaAAr34L7pWS
	vXC5HpQGqqUI9GqkitT/mk/7NjgTcbIzivaE5MscFmkafXzOiPQ6DNvRoZhUZMh8fXcW3h9SMKcjo
	P2kSpQ+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR5ZF-00000007lJn-0MFl;
	Thu, 04 Dec 2025 09:24:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vR5ZA-00000007lIl-1M3C
	for barebox@lists.infradead.org;
	Thu, 04 Dec 2025 09:24:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vR5Z6-0003mC-G5; Thu, 04 Dec 2025 10:23:56 +0100
Message-ID: <26fdabfb-900d-4a3a-861e-d4f6408426dd@pengutronix.de>
Date: Thu, 4 Dec 2025 10:23:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maud Spierings <maud_spierings@murena.io>, barebox@lists.infradead.org
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
 <af43d538-d7ea-4a29-abda-835f37e6564c@murena.io>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <af43d538-d7ea-4a29-abda-835f37e6564c@murena.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_012400_358486_EB2A130E 
X-CRM114-Status: GOOD (  17.45  )
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
Subject: Re: [PATCH v2 0/3] ARM: stm32mp: Add Avenger96 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/4/25 8:15 AM, Maud Spierings wrote:
> On 12/3/25 18:13, Sohaib Mohamed wrote:
>> Add support for Arrow STM32MP157A Avenger96 board with bootloader
>> update handlers for MMC and NOR flash.
>>
>> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
>> ---
>> Changes in v2:
>> - EDITME: describe what is new in this series revision.
>> - EDITME: use bulletpoints and terse descriptions.
>> - Link to v1: https://lore.kernel.org/r/20251128-avenger96-
>> v1-0-009b13bd8df7@gmail.com
> 
> It seems you forgot to update your cover letter for v2 with a changelog,
> maybe send a reply email the amend it to help with review.

@Sohaib, b4 prep --compare-to v1 can be very useful to see what changes
occurred, so you can summarize them.

Cheers,
Ahmad

> 
>> ---
>> Sohaib Mohamed (3):
>>        common: bbu: refactor flash operations into separate function
>>        ARM: stm32mp: bbu: add NOR flash FIP update handler
>>        ARM: stm32mp: add support for STM32MP157A Avenger96 board
>>
>>   arch/arm/boards/Makefile                    |  1 +
>>   arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 +
>>   arch/arm/boards/dhcor-stm32mp1/board.c      | 47 ++++++++++++++++++
>>   arch/arm/configs/multi_v7_defconfig         |  2 +
>>   arch/arm/configs/stm32mp_defconfig          |  2 +
>>   arch/arm/dts/Makefile                       |  1 +
>>   arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 ++
>>   arch/arm/mach-stm32mp/Kconfig               |  4 ++
>>   arch/arm/mach-stm32mp/bbu.c                 | 77 +++++++++++++++++++
>> ++++++++++
>>   common/bbu.c                                | 17 ++++---
>>   include/bbu.h                               |  2 +
>>   include/mach/stm32mp/bbu.h                  | 10 ++++
>>   12 files changed, 163 insertions(+), 6 deletions(-)
>> ---
>> base-commit: a831f32782a5ce216301ccb52e4d27e3462632f3
>> change-id: 20251128-avenger96-2b70277cdd7a
>>
>> Best regards,
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




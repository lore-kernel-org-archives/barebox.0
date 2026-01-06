Delivery-date: Tue, 06 Jan 2026 09:36:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Xw-001pX2-0r
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:36:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd2Xv-0003IT-KE
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:36:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9PdKuZRzuDKtdbbmrYDeXLnWJVnnccj1RqSAbNVGYsk=; b=fs+y3HfeBXv49CYqpvX09ub9tE
	f934Nlw67VIzNuku8h37361k2OEpXA0aa5IXiijlVCsXlRhoVTS20Dnn0I9aPjzhSujWkJTzs3mRk
	HHB4XlJnLb2ePV/0D7E5Uvh3Zq92erYeDD/lHHeuKlsiMmcnEDKa5VOhYaTFe5RxQ0jqp7/G2XAKq
	7oft8mI4O3hGJ3+vfnY3HUfOm77mgjO2GtZyZdS6LDOXG+2INuGQCEd11dnFJI7ElmQATzbd8Honz
	kcSldwR4ozIGbGENn24XUVu24vurA5fhES4EuhnT0NMxuoErDECbf3GBKJo3z/0+dO3bXut2j68on
	+QsfYnTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2XK-0000000Cce0-1TqG;
	Tue, 06 Jan 2026 08:35:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd2XE-0000000Ccck-2mJP
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:35:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd2XC-0003BB-Tt; Tue, 06 Jan 2026 09:35:23 +0100
Message-ID: <9e784cef-5e19-4500-bd9a-b7c760c9b7ce@pengutronix.de>
Date: Tue, 6 Jan 2026 09:35:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <75be7502-faa6-4528-b438-feb58ba16ab7@pengutronix.de>
 <aVvrNMgMrgCaPCiU@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aVvrNMgMrgCaPCiU@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_003528_021271_812F5DAD 
X-CRM114-Status: GOOD (  18.55  )
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
Subject: Re: [PATCH 00/19] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 17:47, Sascha Hauer wrote:
> On Mon, Jan 05, 2026 at 03:08:03PM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 1/5/26 12:26 PM, Sascha Hauer wrote:
>>> Until now we linked the raw barebox proper binary into the PBL which
>>> comes with a number of disadvantages. We rely on self-modifying code
>>> to in barebox proper (relocate_to_current_adr()) and have no initialized
>>> bss segment (setup_c()). Also we can only mark the .text and .rodata as
>>> readonly during runtime of barebox proper.
>>>
>>> This series overcomes this by linking a ELF image into the PBL. This
>>> image is properly layed out, linked and initialized in the PBL. With
>>> this barebox proper has a proper C environment and text/rodata
>>> protection from the start.
>>>
>>> As a bonus this series also adds initial MMU support for RISCV, also
>>> based on loading the ELF image and configuring the MMU from the PBL.
>>>
>>> This series also marks my start into AI assisted programming as you can
>>> see in the Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
>>> and 🤖 Generated with [Claude Code](https://claude.com/claude-code)
>>> tags. Without it I wouldn't have started this series during my xmas
>>> break, but with it it was actually quite fun to do; it felt like having
>>> a programming team which I just had to delegate new tasks to while
>>> having fun with my family myself ;)
>>
>> Did you do size comparisons to determine how much this series affects
>> binary size? I found that compressing every segment separately resulted
>> in a smaller binary size even after addition of ELF parsing to PBL, but
>> I used a purpose-built ELF loader unlike to what you did here.
> 
> I did now.
> 
> ARM64 barebox-dt-2nd.img raw:  1246506
> ARM64 barebox-dt-2nd.img ELF:  1248892 (+ 2386 bytes)
> ARM32 barebox-dt-2nd.img raw:  1217036
> ARM32 barebox-dt-2nd.img ELF:  1219159 (+ 2123 bytes)
> 
> With --strip-section-headers instead of --strip-debug --strip-unneeded
> the last image goes down to 1217940 bytes, so only 904 bytes size
> increase.

Is the raw image from before the series was applied, so we can judge the
total size increase?

I redid tests for my series, but this time in the same build directory and
got values similar to yours:

ARM64 barebox-dt-2nd.img before: 992276
ARM64 barebox-dt-2nd.img after:  993029 (+ 753 bytes)

Previous measurement of ELF compression being smaller must have been
a mistake it seems.

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



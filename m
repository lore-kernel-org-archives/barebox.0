Delivery-date: Mon, 05 Jan 2026 13:32:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjku-001WJD-0J
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 13:32:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcjkt-0006Ul-IB
	for lore@pengutronix.de; Mon, 05 Jan 2026 13:32:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CVQy4HOsr4FC6xXSsSF1o1MgC25bsm6OKdPLiZAelco=; b=VS5IzP1MP/pSAr62j+/uHuGSG1
	SUBRjuDxkQvWWC5IxsDy1fF4ppjWO1dM7TXmCpi3nNFUgGkrxvCHb62egAaoQnr2o5jplCmCGFp9s
	76lGdcNwmB32+oX3uHw2i8Xsmr+CKnWjPUCUfqOqSJZQYuNwIcu0vtGBRfh0Mbj8bPe3ZRBSLmw5j
	UHT0sWybpzVPL0bbibuWinv9+mTtKZ1w8vlguyQRYydy6MN/gmSHH6bUrK61oPPEP4iLNlS35q8Dq
	m6LTKnJ6hZDtK4yZ3NJAHVauoGKBJkyxzS6c00XNX2ZqvMakFVKIdGVokiuLJ3P9fBi3LHhEDxSTU
	P6s31Aog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjkV-0000000BIeo-23nd;
	Mon, 05 Jan 2026 12:31:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjkT-0000000BIdi-2676
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 12:31:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcjkR-0006QC-Up; Mon, 05 Jan 2026 13:31:48 +0100
Message-ID: <ba4ac037-e984-4697-94ef-3434c7b3553b@pengutronix.de>
Date: Mon, 5 Jan 2026 13:31:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-12-e97853f98232@pengutronix.de>
 <d35060ed-79ba-4bc8-9237-8be49eb395a5@pengutronix.de>
 <aVuuqRv4ADtomk8J@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aVuuqRv4ADtomk8J@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_043149_562467_F00A5C8A 
X-CRM114-Status: GOOD (  15.74  )
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
Subject: Re: [PATCH 12/19] ARM: use relative jumps in exception table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 1:29 PM, Sascha Hauer wrote:
> On Mon, Jan 05, 2026 at 12:44:13PM +0100, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 1/5/26 12:26 PM, Sascha Hauer wrote:
>>> Create position-independent exception vectors using relative branches
>>> instead of absolute addresses. This works on ARMv7 onwards which
>>> supports setting the address of the exception vectors.
>>>
>>> New .text_inplace_exceptions section contains PC-relative branches,
>>> enabling barebox proper to start with MMU already configured using
>>> ELF segment addresses.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Why do we even need arm_fixup_vectors? There should already be
>> relocation entries emitted for .word symbol lines, so given that we only
>> install the vector table after relocation, it should be possible to
>> simply drop arm_fixup_vectors?
> 
> No, just verified that there are no relocation entries. I don't know if
> there's some other trick to get them relocated.

Interesting. I will compare later and see what's different in my patch
stack.

Cheers,
Ahmad


> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




Delivery-date: Tue, 06 Jan 2026 15:25:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd808-001vHs-0J
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:25:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd807-0006Bk-II
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:25:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QK1JkW815f6uuPWdglNyKYdmXfMPkU6YGUW0cRtXFW0=; b=yF3Rbf14AnzaMva9fs/ONf6/Ix
	6Y9QOkJCsaYFcETF7W0ViUxmp0KSJIdNzmbwiC0k2zZdhvoRkMsHD7KPER13l2iYFbAWzjvb0HkDG
	kY9N0jR12VpiIoP8gIYVdipg9PaJPqzLSxSaAPf/qsKbVa9R/IpO0BYBsZ3/sALL8cHNHuaQS+2Ga
	liGJ8niUF/CwvCMWZsnf6UVatf4pTO0DmyWR4gsysxgacgw5xmzE1BweUq3q+8R0MM5y1ubq3XseI
	D77b9BdzjNNsJ7MB0mU72A3E9hxlCwlijg0rmnZ9PVsEZc+ybVnlS/NCXb1brOg432HPW9WCyMrhd
	TP2Kh1hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7ze-0000000DHPx-4ABK;
	Tue, 06 Jan 2026 14:25:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7zc-0000000DHP3-38St
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:25:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7za-00066f-VT; Tue, 06 Jan 2026 15:25:03 +0100
Message-ID: <2e936527-4556-4b18-ae5a-c18acddb0da0@pengutronix.de>
Date: Tue, 6 Jan 2026 15:25:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-4-487bc760f045@pengutronix.de>
 <28e51b87-b6b0-4b21-b223-f7764102db91@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <28e51b87-b6b0-4b21-b223-f7764102db91@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_062504_799277_D1C31712 
X-CRM114-Status: GOOD (  12.50  )
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
Subject: Re: [PATCH v2 04/21] ARM: implement elf_apply_relocations() for ELF
 relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 2:07 PM, Ahmad Fatoum wrote:
>> +/*
>> + * Apply ARM32 ELF relocations
>> + */
>> +int elf_apply_relocations(struct elf_image *elf, const void *dyn_seg)
>> +{
>> +	Elf32_Rel *rel;
>> +	void *rel_ptr;
>> +	u64 relsz;
>> +	phys_addr_t base = (phys_addr_t)elf->reloc_offset;
>> +	int ret;
>> +
>> +	ret = elf_parse_dynamic_section_rel(elf, dyn_seg, &rel_ptr, &relsz);
>> +	if (ret)
>> +		return ret;
>> +
>> +	rel = (Elf32_Rel *)rel_ptr;
> 
> Nitpick: rel can be dropped and rel_ptr used instead.
> 
>> +
>> +	relocate_image(base, rel, (void *)rel + relsz, NULL, NULL);

By passing NULL here, we won't be able to handle R_ARM_ABS32
relocations. A compile-time check that verifies we don't have such
relocations in the first place would be apt.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




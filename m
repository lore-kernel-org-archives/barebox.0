Delivery-date: Mon, 05 Jan 2026 18:12:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vco7q-001b0c-2w
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 18:12:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vco7q-0002Za-C2
	for lore@pengutronix.de; Mon, 05 Jan 2026 18:12:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nutb5m9Aql5pwNaBePbyrvFQmJEe1iKPc9k6tXjG+JU=; b=R8Zs0kQKNLiaYydwo6BHSj9HOa
	Wf/+ZHeoqErGsHqaf2lQKiC+od8uaJeGxCy2fWcj4b1utZpj9+2RCP1yJfOaiXlm9BDpmlnD6j5fD
	Kj4mqGVzboihGcRcHZuCmtLaLCz9vryWh4LslC8cwfF92Q6ucEGvKevr6D2ytQmQE2tHGxAa5JOEi
	iJrMeBZIMpalbB6IvDvmxQEtzVRU/VDzpZGs1AeYoMHdB5fhrmtrIPGWAgczgPHEwYNdhd+bViW7Y
	IZwKg3A+mu0VexpArjeIq9x/LcYPalh0v694G0KQvEFF9nqWOS04nuO0fTQI+ZAwdR0VBKvYdCo5M
	8z1dfZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vco7N-0000000Bn71-0ghx;
	Mon, 05 Jan 2026 17:11:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vco7I-0000000Bn6L-486q
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 17:11:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vco7F-0002Ou-Ur; Mon, 05 Jan 2026 18:11:38 +0100
Message-ID: <1ecc98f5-566e-42d5-9f35-eb2be350ece7@pengutronix.de>
Date: Mon, 5 Jan 2026 18:11:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-8-e97853f98232@pengutronix.de>
 <b86f471c-0813-49d8-a46b-6df823cd6d67@pengutronix.de>
 <aVvcFFLvuiXzR9lc@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aVvcFFLvuiXzR9lc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_091141_032069_E00B45E2 
X-CRM114-Status: GOOD (  15.24  )
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
Subject: Re: [PATCH 08/19] Makefile: add barebox.elf build target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/5/26 16:43, Sascha Hauer wrote:
> On Mon, Jan 05, 2026 at 01:22:40PM +0100, Ahmad Fatoum wrote:
>>>  .SECONDEXPANSION:
>>>  $(symlink-y): $$(or $$(SYMLINK_DEP_$$(@F)),$$(SYMLINK_TARGET_$$(@F))) FORCE
>>> @@ -1091,6 +1094,17 @@ barebox.fit: images/barebox-$(CONFIG_ARCH_LINUX_NAME).fit
>>>  barebox.srec: barebox
>>>  	$(OBJCOPY) -O srec $< $@
>>>  
>>> +OBJCOPYFLAGS_barebox.elf = --strip-debug --strip-unneeded \
>>
>> --strip-section-headers goes the farthest I think.
> 
> The objcopy from the toolchain I used (binutils-2.40) doesn't support
> this option. A newer one I just upgraded to indeed does.

Interesting, --strip-all is the next best thing then, I think, so I'd suggest:

$(objcopy-option, --strip-section-headers, --strip-all)

With (untested):

# objcopy-option
# Usage: KBUILD_LDFLAGS += $(call objcopy-option, --strip-section-headers)
objcopy-option = $(call try-run,\
        $(CC) -x c /dev/null -c -o "$$TMPO"; $(OBJCOPY) $(1) "$$TMPO" "$$TMP",$(1),$(2))

>> OBJCOPYFLAGS_$@ = $your_options.
>>
>>
>> Sidenote: We should add --error-rwx-segments depending on
>> CONFIG_PBL_IMAGE_ELF.
> 
> Is this a objcopy option? My objcopy doesn't seem to support this.

See LDFLAGS_common += $(call ld-option,--no-warn-rwx-segments).

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



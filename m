Delivery-date: Wed, 17 Aug 2022 14:10:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHs2-001r8i-Sc
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 14:10:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHs0-0005mO-NT
	for lore@pengutronix.de; Wed, 17 Aug 2022 14:10:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bcU7RD1M9GlsGvUORq9/VJIwDRh7MvaCdDmQpgdqFd0=; b=tkuQy9SCqHZU2zKeRvPAw9GAOc
	9OnGnEaj/d5Co06IoIcE/Fl2k5iFi0H6RMROkgThqgvTUGHiDE+LJ3sD2dOo+a2v4lgabGQUpDmxR
	zGdhqhek1nLpzJvcx7BhKRV0OEsbsenua4AXTbJu41KUqaG6eGWu73rOpG1RiGQcA5JC/vmXgXlxk
	n6gySRXn7laoRHPnRoIAlGJbj0gTj17GsHmN9rLlNsXlr7Xr3ZPCvweKcJPWlmJs6XQxWrYwM0t+a
	5A55HcuFa3qk2pKemurzzVlEulihl5Qdjq90ICbhSC7YubtVedA1Xl4icfO2jq8J35LEs9hssAcfp
	Ih5CZ0mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHqe-001lQh-NC; Wed, 17 Aug 2022 12:08:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHqa-001lNn-5g
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 12:08:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oOHqW-0005SO-HM; Wed, 17 Aug 2022 14:08:28 +0200
Message-ID: <4c684165-7e33-c3db-773e-1dd38cd0f5c0@pengutronix.de>
Date: Wed, 17 Aug 2022 14:08:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
 <20220815130955.2332697-3-a.fatoum@pengutronix.de>
 <20220816084218.GK17485@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220816084218.GK17485@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_050832_264794_2FC032CF 
X-CRM114-Status: GOOD (  26.54  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] firmware: add external firmware PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 16.08.22 10:42, Sascha Hauer wrote:
> On Mon, Aug 15, 2022 at 03:09:55PM +0200, Ahmad Fatoum wrote:
>> Normally, barebox embds firmware into the binary referencing it, which
>> means that device tree blobs, RAM training code and e.g. TF-A for i.MX8M
>> end up in the prebootloader, while, e.g. Freescale FMan microcode ends
>> up in barebox proper. The only exception so far was barebox proper:
>> When only the PBL fits in on-chip SRAM, barebox proper is chainloaded
>> from the boot medium. To avoid TOCTOU attack, it's read fully into DRAM
>> after setup and then a SHA256 is calculated and compared against the
>> hash embedded in barebox PBL, which in a secure boot system would be
>> trusted by virtue of the PBL as a whole being verified beforehand by
>> the BootROM.
>>
>> Reuse this mechanism to support arbitrary firmware, which is now termed
>> external firmware. Such firmware is placed beyond the piggydata (barebox
>> proper) and only offset and hash are included in the prebootloader
>> image. The new get_builtin_firmware_ext() is used to retrieve this
>> external firmware after integrity verification with SHA256.
> 
> Does it make sense to use this mechanism for barebox proper as well?

I'd rather we leave this as future exercise..

> 
>>  #define get_builtin_firmware(name, start, size) \
>>  	{							\
>>  		extern char _fw_##name##_start[];		\
>> @@ -65,4 +78,22 @@ void firmwaremgr_list_handlers(void);
>>  		*size = _fw_##name##_end - _fw_##name##_start;	\
>>  	}
>>  
>> +#define get_builtin_firmware_ext(name, base, start, size)		\
> 
> base is unused.

Ouch. It's called bl33 in the macro. Will fix.

> It would be nice if users could use the same macro for both internal and
> external firmware, but I have no idea how and if this could be
> implemented.

We can unconditionally emit _fw_*_sha_{start,end} symbols.
If they happen to be equal, we skip the SHA verification.
The problem however is that we need to know the offset
between the currently running binary and the chainloaded one
to arrive at the address of external firmware. We can use 0 for
that (i.e. base = _text) to have internal firmware a special case
of external firmware, but for external firmware, we must specify
explicit an offset. So we can't avoid here.

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



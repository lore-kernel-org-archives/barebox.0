Delivery-date: Mon, 11 Jul 2022 09:39:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAo0c-002AtG-RI
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 09:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAo0Z-0007w7-Qj
	for lore@pengutronix.de; Mon, 11 Jul 2022 09:39:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-reply-to:Date:Subject:Cc:To:From:References:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lpek05pu3PBvlMgDCPATAdiqaG+pXfuzYzS6eltVHkA=; b=jf2sgxSMvGqLCWzujCKkSIvMz2
	8R29W1yT/Plm1xPWdRIXYZdoIcmLywIBuUoYdXwS76YIXypspawpebgmpc/hk+rV3Z4Fb7Tg9O3N8
	bu+r1vzHv5nN+u3E2DJFQT8TiTAS5OdtXWdxCcNjzCvI1eAUAGZ/4WHS6NRYfA79W94Ej5P6BifXE
	bMCZQxhS2ougD57iJuKQr6MI0Doy5QwNdzfpKtd4kOjfE+KhthWbehBaQ3awdMB+AuKEwyulbK1Fh
	dysSSyZihAR2tuH2SE5IvtKoYvN7ngwvqugMg34aIwJi7dt2HykVMcfwKXBf97JAn40gvsHu1g9Cv
	Z0/d3qGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAnyc-00GtZf-Ml; Mon, 11 Jul 2022 07:37:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAnwW-00GsNf-Rq
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 07:35:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=igor.pengutronix.de)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oAnwR-0007Rk-4T; Mon, 11 Jul 2022 09:34:51 +0200
References: <20220708062411.711639-1-str@pengutronix.de>
 <20220708062411.711639-3-str@pengutronix.de>
 <b3c4ab3e-59d9-6fbc-1a3e-85161ef9a8c1@pengutronix.de>
User-agent: mu4e 1.8.3; emacs 29.0.50
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 11 Jul 2022 09:33:59 +0200
In-reply-to: <b3c4ab3e-59d9-6fbc-1a3e-85161ef9a8c1@pengutronix.de>
Message-ID: <878rp09k6d.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_003456_929147_E7CCE415 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/5] ARM: socfpga: achilles: use
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi!

Ahmad Fatoum <a.fatoum@pengutronix.de> writes:

> On 08.07.22 08:24, Steffen Trumtrar wrote:
>> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>
>> Use the newer function ENTRY_FUNCTION_WITHSTACK.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>  arch/arm/boards/reflex-achilles/lowlevel.c | 15 ++++++---------
>>  1 file changed, 6 insertions(+), 9 deletions(-)
>>
>> diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
>> index 162cd58c58..0fc94fc2b1 100644
>> --- a/arch/arm/boards/reflex-achilles/lowlevel.c
>> +++ b/arch/arm/boards/reflex-achilles/lowlevel.c
>> @@ -31,12 +31,16 @@
>>
>>  extern char __dtb_z_socfpga_arria10_achilles_start[];
>>
>> -static noinline void achilles_start(void)
>> +#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
>> +
>> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1, r2)
>>  {
>>  	int pbl_index = 0;
>>  	int barebox = 0;
>>  	int bitstream = 0;
>>
>> +	arm_cpu_lowlevel_init();
>> +	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
>
> Only safe to call in a naked function. Drop it as you are now using
> ENTRY_FUNCTION_WITHSTACK, which does setup for you.
>

Meh, yeah, that was not on purpose. Thanks for noticing. v3 incoming.


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



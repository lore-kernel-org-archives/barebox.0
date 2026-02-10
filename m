Delivery-date: Tue, 10 Feb 2026 11:37:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpl7f-0008lX-1r
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 11:37:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpl7f-00027D-0y
	for lore@pengutronix.de; Tue, 10 Feb 2026 11:37:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h7TGylHiE+6HOieHssXuBEn9wMIc3zA+fcyUlMKjsrs=; b=FuqOMhSM7UWEecKJpvmaalClOf
	GYMle1NCi6bCP/FXdjB3z7ZI8ITM8u+92DUAmjYXQXnWEv1ha/k57iiQk5jmVnf8pdWthcbMHQjhk
	FlVbp88DuW2tjoKU9K7c3/8mOHiUsowX9EeFhCM51hVUAPoqdFobTcSZu6IYoS/VwMVjLZ8ZonE1Q
	2Mz7qXPLNPrmDHqaf4+Otf0GPcdzK24Vt88Tait83t6/umU5AiBH5A3ev2KNtV0ntMHHB4GuAZf6b
	gOjFuf9HABbyo03+g2hKC2gG6RjrX1q1UTTq/GSONq8hL7Zf2o8W1E+HMElO3p1/SuqFBjdJM2ocJ
	pCj+0S1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpl76-0000000GqNQ-21kY;
	Tue, 10 Feb 2026 10:37:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpl74-0000000GqN1-3XaK
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 10:37:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vpl71-00021A-HK; Tue, 10 Feb 2026 11:36:55 +0100
Message-ID: <acd62e15-7c92-49f2-9bf5-c8d1245be019@pengutronix.de>
Date: Tue, 10 Feb 2026 11:36:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260206-keytoc-multi-env-v1-1-638fbf2b3634@pengutronix.de>
 <e7c30179-bdbe-49d0-85cf-a415701a53eb@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <e7c30179-bdbe-49d0-85cf-a415701a53eb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_023658_891239_D578D841 
X-CRM114-Status: GOOD (  18.81  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC] crypto: keytoc: Split env-provided full keyspec on
 spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 2026-02-10 10:35, Ahmad Fatoum wrote:
> On 2/6/26 1:28 PM, Jonas Rebmann wrote:
>> keytoc/CONFIG_CRYPTO_PUBLIC_KEYS can work with a complete keyspec
>> provided by an environment variable as opposed to providing single URIs.
>> This would be a very useful feature if it could also provide any number
>> of keys. Kconfig however provides keytoc with regular keyspecs already
>> split at spaces so without furhter measures, the env variable can only
>> be expanded into a single key.
>>
>> Work around this by, in the special case of keytoc provided with a
>> single environment variable, splitting that single argument at any space
>> character that is not escaped with a backslash in front of it.
> 
> I think that's sensible. Do we see breakage potential for existing
> users? If so, we should have a migration entry about the change in
> interpretation of space.

It does break for users of the single-env-variable format if they'd been
relying on paths containing spaces or backslashes, which they'd need to
start escaping now. But I don't suppose many, if any, users are really
affected by that.

I'll add a migration entry, suppose it can't hurt.

I'll update this patch to treat multiple variables the same way as
single variables.

Right now, given a single __ENV__var1 argument, that is split but once
given a second __ENV__var2 argument, neither are split, which is
inconsistent.

I will keep not modifying plain URIs provided by env e.g.
keyring:__ENV__uri

>>   	keycount = argc - optind;
>> +	keyspecs = argv + optind;
>> +
>> +	if (keycount == 1 && !strncmp(argv[optind], "__ENV__", 7)) {
>> +		char *singlespec = try_resolve_env(keyspecs[0]);
>> +		/* include '\0' in length */
>> +		int len = strlen(singlespec) + 1;
>> +		char *p;
>> +
>> +		for (p = singlespec; *p; p++) {
> 
> Can you copy strsep_unescaped to scripts/ and use that instead?

Oh yes that will make things easier.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



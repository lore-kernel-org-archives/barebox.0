Delivery-date: Tue, 18 Mar 2025 12:27:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV71-0011Ag-2B
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:27:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV70-0006jN-G6
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:27:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUkTUB+2qVeowM2HvLzSrllsq7o1IcmhXxkappwMuCU=; b=5E9Gz+4zVhNxFbFHUW73Wsf3qe
	UVmwe4PFulJC8ikfoGwJhm26F5eBexQ1Pr5Nje2KV9hcHzLh4oS8zHbKpT17TKZF3fAhCDQCwOJr3
	lE9XP0gWSDiMyJZV9Km2igZF6UlTMC2fdYS1Ke5EOHhY7kDD5VAX2ODFwZk9Cdkfu2zpYjBCU25M9
	Ui0ynTjPzph39/d8G6bFegi21yhfVG1oWxItuliilbLeazazUBPHICZ72r2FGEvpfmsJT+TwJUqJM
	i5FebsJRWrdko5aItJICAyjQS7EE3Mkbxuz7olWupV0yxEPokMXxHy+owce9bU1KbeQQliEw5L4MY
	rWgYs19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV6Y-00000005j65-2dAk;
	Tue, 18 Mar 2025 11:27:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV6W-00000005j4z-2ukx
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:27:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuV6U-0006ZQ-Nw; Tue, 18 Mar 2025 12:27:26 +0100
Message-ID: <a3235700-b02b-4870-ba19-b401d6e36600@pengutronix.de>
Date: Tue, 18 Mar 2025 12:27:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
 <v4s2tw2pg3o7ougore4dvhuzpfqz4lgehiskaopfw5gllpyptb@2fjhiqk36mqo>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <v4s2tw2pg3o7ougore4dvhuzpfqz4lgehiskaopfw5gllpyptb@2fjhiqk36mqo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_042728_731107_3FBFFD4A 
X-CRM114-Status: GOOD (  12.51  )
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
Subject: Re: [PATCH 1/4] scripts/make_fit: factor dtb file name into
 configuration name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Uwe,

On 3/18/25 12:03, Uwe Kleine-König wrote:
> On Tue, Mar 18, 2025 at 09:25:04AM +0100, Ahmad Fatoum wrote:
>>      fsw.end_node()
>> -    seq = 0
>>      with fsw.add_node('configurations'):
>> -        for model, compat, files in entries:
>> -            seq += 1
>> -            with fsw.add_node(f'conf-{seq}'):
>> +        for dtbname, model, compat, files in entries:
>> +            with fsw.add_node(f'conf-{dtbname}'):
> 
> Funny/surprising semantic of fsw.add_node (i.e. fsw refers to the new
> node in the with-body?)

Yes. I suspect it's to ensure that a node end tag is inserted
after the properties.

>> -        entries.append([model, compat, files_seq])
>> +        dtbname = os.path.basename(fname)
>> +        ndtbs_seen = len(dtbs_seen)
>> +        dtbs_seen.add(dtbname)
>> +        if len(dtbs_seen) == ndtbs_seen:
>> +            raise RuntimeError(f"Duplicate file name '{dtbname}' during FIT creation")
>> +
>> +        entries.append([dtbname, model, compat, files_seq])
> 
> 	dtbname = os.path.basename(fname)
> 	if dtbname in dtbs_seen:
> 	    raise RuntimeError(...)
> 	dtbs_seen.add(dtbname)
> 	entries.append(...)
> 
> looks more pythonic (to me).

I dislike iterating twice over the dtbs. I wrote it this way,
because I assumed calling len on the set is O(1).

> Acked-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> 
> for the idea of this patch.

Thanks,
Ahmad

> 
> Best regards
> Uwe




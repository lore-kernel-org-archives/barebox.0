Delivery-date: Thu, 13 Oct 2022 13:55:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiwo2-007JeB-1L
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 13:55:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiwo0-0007wV-3Z
	for lore@pengutronix.de; Thu, 13 Oct 2022 13:55:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K/MS8iI+tW5VMQYdPwd03vnchQgeVRxIS4Db2C3zu2s=; b=0/hb2c9hnUC2VEAPXLMdktTq2c
	N7Mjv6h7CMIs2doQGLvYF44euuXy8OOvMluLCwLgQCPvAipuNAxJLe1ht051MxIraGf17y4EYMiMJ
	+hXNF10USvSXgsSgnPxD4G4Kf1GrORbSNK6vkvugdmt31DmEO2DlnZoizIO2APO3wM/4XRKsHhyOu
	mULxRaMqXte9ld8WGEVKa9sI7mmwsG/vbaszyHUMBgXz6bFuRSSmNyLNjHEye6vZEo7nLeBJmbRKO
	1k+hzkaC/zWN6hwpoOvOTPYYCzuqQlIJpRuMnSKvo3uSKBqgJWi6a5T5OrgSTMZ9VlbIS5eBt1T+9
	4xE6kgww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiwmm-00Bbdr-Sa; Thu, 13 Oct 2022 11:54:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiwmi-00Bbcy-0a
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 11:53:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oiwmg-0007bJ-Al; Thu, 13 Oct 2022 13:53:54 +0200
Message-ID: <65ff41d2-b355-b009-95c3-85786b3b1a1e@pengutronix.de>
Date: Thu, 13 Oct 2022 13:53:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221013090352.562170-1-a.fatoum@pengutronix.de>
 <20221013115214.3bvxg2v3gj653d6s@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221013115214.3bvxg2v3gj653d6s@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_045356_080680_10CA5865 
X-CRM114-Status: GOOD (  11.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr
 miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.10.22 13:52, Marco Felsch wrote:
> Hi Ahmad,
> On 22-10-13, Ahmad Fatoum wrote:
>> TL;DR: GCC can prove that variables aren't supposed to overlap and as
>> such it generated code than readded get_runtime_offset() on top of an
>> already relocated linker-defined variable's address.
>> See PATCH 2/3 for a disassembly of the affected code. Board code can
>> be similarly micompiled, but that's a fix for another day.
> 
> I didn't received a 2/3 nor a 1/3 yet. Does it stuck somewhere?

At least lore.barebox.org got it:
https://lore.barebox.org/barebox/20221013090352.562170-1-a.fatoum@pengutronix.de/T/#t

> 
> Regards,
>   Marco
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



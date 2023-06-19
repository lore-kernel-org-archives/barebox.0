Delivery-date: Mon, 19 Jun 2023 17:15:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBGbj-00DKOr-IA
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 17:15:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBGbh-0000B1-4o
	for lore@pengutronix.de; Mon, 19 Jun 2023 17:15:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ypkUR0i96MCDe2J+DuJUByWahujif5ID2YYGS3nRe0=; b=DK3oZ1ENNkkNhts+8uUjBXuRJB
	ppLPMs1UhfBhGsF12x/P29ayhrbNNakkEwBQzs+shRGNDOEnmAv25I91KXN4qsdozu1+Su1RxESqq
	jCFKRS0T5uWZhwlNQoyRefHrnpePdU1KrsYwVqSj5PrOMf0MizsWFG/bIZMBFDR6Yba/ugGUDR2xg
	iIwjOvDAfSIbxhkeiqPkj7JWtZXTWpWRE7Jj39ColhRvIFP6I72ra62hqNbV9svZMsVhcbiug9CXU
	8iZlSHxkElmky+nazw6eEzqsrD+ZKTrRh+tJ+FihrgnQ54BRHP1e9ZT5xPsZcJUHW6L6CMthIsi9G
	AIQTH6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGah-008kst-24;
	Mon, 19 Jun 2023 15:14:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGae-008krP-14
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 15:14:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qBGaa-0008Df-1K; Mon, 19 Jun 2023 17:14:44 +0200
Message-ID: <81bc6192-9232-e4ff-e832-1b4348bd65b6@pengutronix.de>
Date: Mon, 19 Jun 2023 17:14:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
 <20230619150859.ltl55zzgcuhjfjt2@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230619150859.ltl55zzgcuhjfjt2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_081448_368186_2F9C81EA 
X-CRM114-Status: GOOD (  16.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT] blspec: support boot /dev/disk0.rootfs to mean boot
 disk0.rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 19.06.23 17:08, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-06-19, Ahmad Fatoum wrote:
>> boot /dev/disk0.rootfs would always fail:
>>
>>   Nothing bootable found on '/dev/disk0.rootfs'
>>   Nothing bootable found
>>
>> boot /mnt/disk0.rootfs and boot disk0.rootfs would however work.
>> This can be surprising to users, so just skip over /dev if supplied.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> I am not sure why this wasn't the case before. Any ambiguity in doing it
>> this way? Change still needs to be tested.
> 
> According commands/boot.c help message:
> 
> | "BOOTSRC can be:"
> | "- a filename under /env/boot/"
> | "- a full path to a boot script"
> | "- a full path to a bootspec entry"
> | "- a device name"
> | "- a partition name under /dev/"
> | "- a full path to a directory which"
> | "   - contains boot scripts, or"
> | "   - contains a loader/entries/ directory containing bootspec entries"
> 
> the 'full path' to a device is not suported yet. Should that be fixed
> within the boot-cmd?

You can interpret "a partition name under /dev/" as meaning both
partition name without /dev/ or with /dev/ IMO.

> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




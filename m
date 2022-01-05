Delivery-date: Wed, 05 Jan 2022 17:10:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58ri-00Bvzw-GK
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 17:10:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58rh-0005Lh-3e
	for lore@pengutronix.de; Wed, 05 Jan 2022 17:10:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FNXCKV7FyF6KWpPjRmL5QZR3xUc1VpFnQOPofN4PCQI=; b=XUVgDU6zUlA3XYPVxxHF29E4a+
	vZVJKNtMxl0qsIr80D+Vm5i7K1ykXLKEYSUBNBB3WjRGZDTok7UGd8c5d2glANn717zgi+49A14SO
	6m4WZpYAjHl/mML0R4UO/ufP5xYbSG2DGiTQoIjPIy2ANBZ17/AmNjejNM72WlLVV7NsRwZyFqvbQ
	yujWjiUsogD0sLITbBdyp2yb5ysXIh5z6k7Kbvb07jj0xKlSjqFN2jzYf9ASTsrloqsPuqOMynZPb
	FrTZFgFlGrQmIGwdCP8kjrotRN3MXs0rGzXDcqCtw3CdqlSzZvqzxwH7+uOJP/J1Z6Ni8F7ACYfKx
	qmntLfAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n58qJ-00FHRf-8Z; Wed, 05 Jan 2022 16:08:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n58qE-00FHQh-Ah
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 16:08:47 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n58qD-00055E-76; Wed, 05 Jan 2022 17:08:45 +0100
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
References: <trinity-c26cce2b-95ff-45dc-9d60-3a1eebfa088b-1641285545326@3c-app-gmx-bap27>
 <5692a978-e5e5-c46d-978e-49438ee28782@pengutronix.de>
 <trinity-cf421ba4-410b-4e0e-bb2f-60fef962bc97-1641397322119@3c-app-gmx-bs58>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d6b21243-ad8f-f84f-b41c-c2854b64e011@pengutronix.de>
Date: Wed, 5 Jan 2022 17:08:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <trinity-cf421ba4-410b-4e0e-bb2f-60fef962bc97-1641397322119@3c-app-gmx-bs58>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_080846_404554_E4999F1E 
X-CRM114-Status: GOOD (  17.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Aw: Re: barebox - rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.01.22 16:42, Frank Wunderlich wrote:
>> Gesendet: Mittwoch, 05. Januar 2022 um 13:08 Uhr
>> Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
>> An: "Frank Wunderlich" <frank-w@public-files.de>, barebox@lists.infradead.org
>> Betreff: Re: barebox - rk3568
> 
>>> https://www.barebox.org/doc/latest/boards/rockchip.html#rockchip-rk3568
>>>
>>> says it starts from sector 32, my first block for uboot (idblock.bin=spl+raminit) starts at 64, full uboot in partition at 8M.
>>
>> You probably figured it out by now, but the discrepancy is likely due to differing
>> block sizes. barebox documentation has `dd bs=1024`, while the default is 512.
>> boot firmware is a single chunk with barebox, so no separate second stage bootloader
>> partition.
> 
> thanks, this indeed explain the different offset, which is same after resolving the double blocksize
> 
>>> As it differs a bit from evb can i add new dts like in uboot?
>>
>> You can check out the commit adding the EVB or the Pine64 Quartz64:
>> 8d14f8e898b4 ("arm: rockchip: add support for the quartz64 board")
>>
>> Feel free to send patches for your board along the same lines. :)
> 
> currently evb is working well, so i try to add bootscripts and maybe an menu (if i found out how) :)

It's not EVB anymore though, if you replace the device tree and skip the board code. ;)

> 
> regards Frank
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 30 Jul 2024 13:10:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkka-004RZG-0E
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 13:10:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYkkZ-0003zc-Ey
	for lore@pengutronix.de; Tue, 30 Jul 2024 13:10:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KduSnuafeyKQITRg6AU/0UImCDQk17+gBQuEytp5xIg=; b=rFp2W4JTPnEQM7q7+ZNmWjtz23
	8nchQWfwKGCkIb/W0qfheHciXZqtReNmc/ZYGZ3JSIYu5VegfsyNJQPAI5srmOyid6x1CNLf1ahEC
	lzVb/IgawcUuohqJusy+1VlefqHpXL3lHSdkR1Ts7CQzF1NsPpQso358yx4OlQ1j4d/nis8ITK7y/
	ta4ujRvvqKwIMjuBHoa16GRB69wTpXTzSFUoFM3cOQMInuiKdOjcOhcCkCBoiNhDLICVtMttl8eJE
	CoeBhet9L7TO3kHfgTQFhp3qCzDOk1MPAXkc6wS608RNtqTU+ZJmdbTHP9fR+wa3ALHAq5kl2+Kas
	PBKSi3tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkk7-0000000Eqck-2BRV;
	Tue, 30 Jul 2024 11:10:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkk3-0000000EqcA-1j49
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 11:10:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYkk2-0003xj-6C; Tue, 30 Jul 2024 13:10:06 +0200
Message-ID: <fed9e44d-dc12-483c-ac02-7e63e2190b72@pengutronix.de>
Date: Tue, 30 Jul 2024 13:10:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
 <20240730071929.2016537-4-a.fatoum@pengutronix.de>
 <Zqiqn66-dv3m_MOB@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zqiqn66-dv3m_MOB@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_041007_490092_EC018937 
X-CRM114-Status: GOOD (  19.58  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/10] block: allow block devices to implement the cdev
 erase operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 30.07.24 10:55, Sascha Hauer wrote:
> On Tue, Jul 30, 2024 at 09:19:22AM +0200, Ahmad Fatoum wrote:
>> We mainly implement cdev erase for raw flashes. Many block devices, like
>> NVMe, SSD or SD/MMC are also flash-based and expose a mechanism or
>> multiple to trigger an erase on hardware or flash translation layer
>> level without an accompanied write.
>>
>> To make it possible to use this functionality elsewhere in barebox,
>> let's have the common block device layer pass through the erase
>> operation, so it may be implemented in a device-specific manner.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/block.c  | 43 +++++++++++++++++++++++++++++++++++++++++++
>>  include/block.h |  1 +
>>  2 files changed, 44 insertions(+)
>>
>> diff --git a/common/block.c b/common/block.c
>> index f55da775a797..b43fcbe6927b 100644
>> --- a/common/block.c
>> +++ b/common/block.c
>> @@ -380,10 +380,45 @@ static int block_op_discard_range(struct cdev *cdev, loff_t count, loff_t offset
>>  	return 0;
>>  }
>>  
>> +static bool region_overlap(loff_t starta, loff_t lena,
>> +                           loff_t startb, loff_t lenb)
>> +{
>> +        if (starta + lena <= startb)
>> +                return 0;
>> +        if (startb + lenb <= starta)
>> +                return 0;
>> +        return 1;
>> +}
> 
> We already have this function in fs/devfs-core.c. Time to export it?

This used to be exported, but the export was removed in commit
04e2aa516ed5 ("common.h: move and rename lregion_overlap()").

I can add it back if you prefer.


> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




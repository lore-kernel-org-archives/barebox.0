Delivery-date: Mon, 02 Jun 2025 12:22:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2J2-002vQv-1k
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 12:22:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM2J1-0004Ag-VB
	for lore@pengutronix.de; Mon, 02 Jun 2025 12:22:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mpisSFhH4MXymu2AQZZMQlZGfwnOFSQUaObplAEOaF8=; b=49Dht0XKivTSO5AtNepQE5l6tq
	hg3osJmM1+rKoJnvkRjW1d0PqThvJXp5W7vkBZLgHw2rW6IB8tAUWBSEsPi9z14KuRLjuQXpi6McY
	uGapGW72mKn2+FMEpV5OAL+slkUcms+q4HLTE+adVTrbH1QlKBG+ZTirgidWIuP82EmKA0pKhw0A/
	nyW93sPegzC7s1IXQMKlo/ZedVKlX2Oj76xgqvobPe2bePj8OLOdURUjOYzeI7KBdblhqEPzfKBR9
	VB8tKhONk1PJV4SS+0ARulRsQmKDwEm/PYJ3iTei6nm5ANjhN2BJ+ChRmtIZnRKcDewun7/YKRyjo
	Xk6tl1qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2Id-00000007BDR-1BLP;
	Mon, 02 Jun 2025 10:21:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM2HR-00000007BAM-384j
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 10:20:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM2HQ-0003hr-Hd; Mon, 02 Jun 2025 12:20:32 +0200
Message-ID: <ec48400f-176d-4955-93ed-6a0e901e5b15@pengutronix.de>
Date: Mon, 2 Jun 2025 12:20:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250602-cdev-part-fixes-v1-0-814d9aa195ed@pengutronix.de>
 <20250602-cdev-part-fixes-v1-1-814d9aa195ed@pengutronix.de>
 <52114d62-823e-4fef-8fa1-d4f55c35f371@pengutronix.de>
 <aD15Cc9vcj73bvW_@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aD15Cc9vcj73bvW_@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_032033_791728_7222BCCD 
X-CRM114-Status: GOOD (  24.35  )
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
Subject: Re: [PATCH 1/2] cdev: pass master cdev to cdev ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 6/2/25 12:12, Sascha Hauer wrote:
> On Mon, Jun 02, 2025 at 11:03:56AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 6/2/25 10:51, Sascha Hauer wrote:
>>> cdev partitions are cdevs themselves, but they are handled internally in
>>> the devfs-core. cdev partitions should not be passed as context pointers
>>> to the cdev ops though, because the drivers might do a container_of() on
>>> them to retrieve their driver data. Pass the original cdev the driver
>>> has registered as context to the ops. With this we can drop some quirks
>>> in the nvmem core in the next step.
>>
>> Given that read/write and so on take absolute offsets, I agree that this
>> is a sensible change.
>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> With below nit addressed:
>>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>>> ---
>>>  fs/devfs-core.c | 53 +++++++++++++++++++++++++++++++++++++++++------------
>>>  1 file changed, 41 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
>>> index 5fafcaecc70d63287e0b716cc0133198c28e79e9..73a13be7336df1eb4e24e8a936986b6069f3783c 100644
>>> --- a/fs/devfs-core.c
>>> +++ b/fs/devfs-core.c
>>> @@ -224,12 +224,21 @@ int cdev_find_free_index(const char *basename)
>>>  	return -EBUSY;	/* all indexes are used */
>>>  }
>>>  
>>> +static struct cdev *cdev_get_master(struct cdev *cdev)
>>> +{
>>> +	while (cdev && cdev_is_partition(cdev))
>>> +		cdev = cdev->master;
>>
>> This can be made into a simple if condition as we do not support links
>> to links, see cdev_readlink.
> 
> This patch is not about links, it's about partitions and we can indeed
> partitiion a partition.
> 
> You can try with
> 
> addpart /dev/imx-ocotp 128@0x10(foo)
> addpart /dev/imx-ocotp.foo 64@0x10(foo1)
> 
> reading from the latter fails with a core dump without this patch.
> 
> As far as I can tell links are not affected by this problem as we always
> resolve links by doing a cdev = cdev_readlink(cdev), so the link cdevs
> are never passed down to drivers.

Thanks for clarification. You can collect my R-B.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




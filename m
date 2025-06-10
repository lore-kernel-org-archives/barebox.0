Delivery-date: Tue, 10 Jun 2025 14:34:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyBa-005na2-2R
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 14:34:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyBa-00035r-6t
	for lore@pengutronix.de; Tue, 10 Jun 2025 14:34:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6M5PYmtH9b4z0oG1mpQstUBQCrXeYtiw2QFDsLYoVEg=; b=wbgqDFPgNsS0p3vQULwWsJvp9v
	K1t9hk2XCM3QYExMd0yQuSBfGhjYDycSKO0GfEbTK7HGiIX+DwM9HqWDUi0zMhVvKvoCXUwsgcxTh
	WT7p/yX31DFE0GrHCM5Ylt5NP4MfCunsxl2a4Kd1CmtsPtoKcOcRqPHK8JRw0tNd1NBVm3xE1fV16
	jlXyh+0Sjyt0RUpVfJF1vGcl5iudXHFvZEQdom67LRKvtYyZnYS+l4wWJNDb4C6YZfaTTGphA2mJ1
	7l/pwiFsvKolw5Vk05PXmF5MdkYgMJBjPrcSuWAE40ckJkvBBksvKnGgFPlQjsZncTfYh6Edo813a
	O0HOwGog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyB7-00000006mV6-3zkq;
	Tue, 10 Jun 2025 12:34:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxb7-00000006hM4-1RlB
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 11:56:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uOxb5-0005wj-R8; Tue, 10 Jun 2025 13:56:55 +0200
Message-ID: <a5da1e7a-aef3-4d1e-99bb-43ed617409a0@pengutronix.de>
Date: Tue, 10 Jun 2025 13:56:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
 <20250602-createnv-v1-4-c3239ff875d5@pengutronix.de>
 <264954b4-d6d3-4ea1-a962-b2bc8a298bb9@pengutronix.de>
 <aD26LTpV_irbVcGw@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aD26LTpV_irbVcGw@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_045657_388261_0CAB5620 
X-CRM114-Status: GOOD (  21.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] commands: create createnv command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/2/25 16:50, Sascha Hauer wrote:
> On Mon, Jun 02, 2025 at 03:48:26PM +0200, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 02.06.25 15:28, Sascha Hauer wrote:
>>> We want to move away from describing the barebox environment explicitly
>>> in the device tree and instead motivate usage of GPT partitions for the
>>> envrionment. This patch creates a createnv command to facilitate this.
>>> It creates an environment partition on the specified device and if
>>> necessary also a GPT partition table. In the simplest case a "createnv"
>>> without arguments will create a partition on the device barebox itself
>>> booted from. Both the device and the size of the partition can be
>>> specified on the command line.
>>>
>>> We can't create environment partitions on a device containing a MBR
>>> partition table, so a MBR partitioned device won't be touched.
>>>
>>> As an additional safety net the command will ask the user if altering
>>> the partition table is really desired. This behaviour can be overwritten
>>> by specifying -f on the command line.
>>
>> Could we have saveenv/loadenv nudge the user towards createnv if CMD_CREATENV
>> is enabled?
>>
>> Something along the lines of:
>>
>>   saveenv: no environment was registered
>>   saveenv: run createnv to create an ad-hoc environment
> 
> I was more thinking towards issuing a message like that during startup,
> because by then we know already that we don't have an environment
> partition. The corresponding patch is not yet ready though, so I sent
> without it.
> 
> Do you see any advantages putting the message into the saveenv command?

Both sound good to me.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




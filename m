Delivery-date: Mon, 22 May 2023 10:37:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1135-009S35-FY
	for lore@lore.pengutronix.de; Mon, 22 May 2023 10:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1132-0003Pq-Qe
	for lore@pengutronix.de; Mon, 22 May 2023 10:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pg9w5FIhCkzFo4e3KWQibUf/JUy6ZQBQITOaKoofW8s=; b=FIw8ZHpmx035hcnaX93BDSfHzy
	PvGfRHkFEJqrEJLoT8Osyd2SAP7DBqNNGEoGrkN6xqpV4WqWo7tIgBD/1d2Udq2XqVqlYRqhgvTdv
	70xOKbuGMzjS+NncwYwCobjHvEEHe4DxSVeBxpamgETNn2L06vnyxmp5W/eu/Ggq7U7tzb0nI7WiR
	9U0o3qdkptGkWzZX/8VN+20gjwkHeyElx+eBNp/gGkfCk/K1sMAnM6nc4dQaoIHPZ7bE1ukQq7L/D
	Vk31Fc22lQeJnVIvbd39PnQ+D4WotGdwmLHMklTE5AjAPxQ14Vi9Komk5ffWOzh0iIWEGSet/ZFnV
	fbqqBpKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1121-005lr7-0v;
	Mon, 22 May 2023 08:36:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q111v-005loK-34
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 08:36:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q111s-0003IL-H4; Mon, 22 May 2023 10:36:32 +0200
Message-ID: <650fe72b-6e37-a97a-2665-85980c1912ed@pengutronix.de>
Date: Mon, 22 May 2023 10:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
 <20230522052222.1037931-3-a.fatoum@pengutronix.de>
 <20230522082330.GK29365@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230522082330.GK29365@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_013635_986213_8EF2F7CB 
X-CRM114-Status: GOOD (  21.31  )
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
Subject: Re: [PATCH master 3/7] ARM: configs: temporarily revive
 vexpress_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.05.23 10:23, Sascha Hauer wrote:
> On Mon, May 22, 2023 at 07:22:18AM +0200, Ahmad Fatoum wrote:
>> Vexpress and the Qemu ARM Virt platform have a memory-mapped flash
>> starting at physical address 0. This clashes with the zero page used to
>> trap NULL pointer accesses when MMU is enabled. For this reason,
>> vexpress_defconfig disabled the MMU. vexpress_defconfig was removed in
>> favor of multi_v7_defconfig, but the latter enables the MMU, breaking
>> the ability to test barebox environment and state out of the box.
>>
>> Patches to resolve that are being upstreamed, so until they are, let's
>> reinstate vexpress_defconfig.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Documentation/user/virtio.rst       |  2 +-
>>  arch/arm/configs/vexpress_defconfig | 76 +++++++++++++++++++++++++++++
>>  2 files changed, 77 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm/configs/vexpress_defconfig
>>
>> diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
>> index a8624649f473..d944fa4821b1 100644
>> --- a/Documentation/user/virtio.rst
>> +++ b/Documentation/user/virtio.rst
>> @@ -44,7 +44,7 @@ Building barebox for QEMU targets is no different from others.
>>  For example, we can do the following with the CROSS_COMPILE environment
>>  variable being properly set to a working toolchain for ARM::
>>  
>> -  $ make multi_v7_defconfig
>> +  $ make vexpress_defconfig
>>    $ make
>>  
>>  Testing
>> diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
> 
> vexpress_defconfig is not removed in master. The patch is still in
> -next.

I am fine with either taking this to next or dropping the original commit.

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




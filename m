Delivery-date: Mon, 10 Oct 2022 08:36:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmOq-0034iF-Uv
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:36:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmOo-0004bG-Tp
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:36:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zd3KRS7XzkQ2IC7MteuCxYd6pPb72kYPXW4uIW18igw=; b=K/1/NjDdtyoBD1fqbtlD/q1VQa
	0ucg0XyWANbSiZ6gNcsuWC5HsChCdMojPveqJ6CNv674bUb7eENyi0/m8Sm6gEWQNlVb6NmhZUKIj
	7UyT88noBDsDZiQ530z49wY/zpphI4iZ+0h2RSWn8yGYtukvQeO+Ghv28w7loJY1covhvmK1MV7AJ
	JqtXc11vd4RNof4XGOYvbaGo21nKF5ijsWj8Hzv2DpvU2Xw4Ab66Drv+ag+Y6IwH1TxwVu+69YmFf
	A1OKthPbXliBPAEBCtz90hj7ofr2Cb0zOAcCR3yhtH0ZEmTfmumqohrBaHIFdjuI2Ry+cGNPZOpW5
	IT9M5ZrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmNf-00HF8E-Ht; Mon, 10 Oct 2022 06:35:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmNb-00HF7W-Fd
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:35:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ohmNa-0004Hb-5m; Mon, 10 Oct 2022 08:35:10 +0200
Message-ID: <1bcae3ac-a77e-5436-2cd1-a7dcd12a0d04@pengutronix.de>
Date: Mon, 10 Oct 2022 08:35:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220930133702.518949-1-j.zink@pengutronix.de>
 <20221010055248.GB986@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221010055248.GB986@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_233511_553358_B7B4523F 
X-CRM114-Status: GOOD (  21.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.10.22 07:52, Sascha Hauer wrote:
> On Fri, Sep 30, 2022 at 03:37:02PM +0200, Johannes Zink wrote:
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> BootROM on the i.MX7 doesn't set the SMP bit when booted
>> over serial download. This leads to vastly worse performance
>> when doing memory-heavy operations in a USB-booted system,
>> as the caches are not utilized. Example running md5sum over
>> a 25M image in ramfs:
>>
>>   without patch: 10796ms
>>   with    patch: 457ms
>>
>> This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
>> well, which also has the Cortex-A7 as CPU. Like with
>> imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
>> slow down.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/cpu_init.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
>> index ea36215419..ede2076102 100644
>> --- a/arch/arm/mach-imx/cpu_init.c
>> +++ b/arch/arm/mach-imx/cpu_init.c
>> @@ -49,7 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
>>  
>>  void imx7_cpu_lowlevel_init(void)
>>  {
>> -	arm_cpu_lowlevel_init();
>> +	cortex_a7_lowlevel_init();
> 
> Why do you remove the call to arm_cpu_lowlevel_init() here?

Oversight, I thought cortex_a7_lowlevel_init() calls it
internally. Just sent out v2. Thanks.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



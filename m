Delivery-date: Tue, 12 Sep 2023 13:01:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg19Q-00CYNX-IO
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 13:01:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qg19O-0005UX-95
	for lore@pengutronix.de; Tue, 12 Sep 2023 13:01:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MJSTDr22CHYEQWSbRn0HJfMZV4edKW7sodWerff/kIo=; b=ss42K2IuuvhNXdoMD3GfU12jCs
	7G4AOUR3N3mhOsY6Bx7eclDq5uxYMOTR2Xv7GKFraKv9ymmnkMVaEV+yquHuUDMG6RC7Nu6q6Vr0E
	2Wze4Wb53okjhbNwyANCrzuTKeJ0Mjo3vOLYGkmtd6Fn/JR5Gg2rDEKAPG8ox8f5yg2lflSeLv8Bz
	BNWngHzFQC0XpG04RZq0TaGnN6r46x3idLNEmOA1VC8zudSWwdcq6STs9zkMaLPmisnDy/vRvCtrD
	5XM9dPhAKKugV4QCnxHwC4OtO7Dcd7+SUsTAI2SaNVRjdfF950uFhZDBglLJ6V1Oyil32XQbv1/vm
	ODTy+VdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qg189-0035AX-15;
	Tue, 12 Sep 2023 11:00:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qg185-00356b-2w
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 11:00:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qg182-0005IC-9p; Tue, 12 Sep 2023 13:00:22 +0200
Message-ID: <54f9b669-9876-fd86-1ded-99f677e545ad@pengutronix.de>
Date: Tue, 12 Sep 2023 13:00:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230912095809.287289-1-a.fatoum@pengutronix.de>
 <20230912105658.GC637806@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230912105658.GC637806@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_040025_950887_CB82BF90 
X-CRM114-Status: GOOD (  18.47  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: bootm: fix format string type mismatch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12.09.23 12:56, Sascha Hauer wrote:
> On Tue, Sep 12, 2023 at 11:58:09AM +0200, Ahmad Fatoum wrote:
>> While we always have sizeof (struct device_node *) == sizeof(ulong),
>> clangd warns about mixing them as arguments to functions with printf-style
>> format strings. Add a cast to silence the warning.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/mips/lib/bootm.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
>> index 19d82ec37530..a5bfc6c88c17 100644
>> --- a/arch/mips/lib/bootm.c
>> +++ b/arch/mips/lib/bootm.c
>> @@ -62,7 +62,7 @@ static int do_bootm_elf(struct image_data *data)
>>  	}
>>  
>>  	pr_info("Starting application at 0x%08lx, dts 0x%08lx...\n",
>> -		data->os_address, data->of_root_node);
>> +		data->os_address, (ulong)data->of_root_node);
> 
> It's a pointer, so why not print it with 0x%p?

I have an aversion towards 0x%p, because ISO C leaves it implementation defined
whether %p includes a 0x or not. We have our own %p though, so I don't mind if
you change it while applying.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




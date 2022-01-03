Delivery-date: Mon, 03 Jan 2022 11:27:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4KYw-009kTn-Vn
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 11:27:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4KYv-0003xi-Mb
	for lore@pengutronix.de; Mon, 03 Jan 2022 11:27:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J4d5H1AyQYHV70AJbBpAlt93Tw8WeS71uhB9KHsmjdo=; b=EaYhfyTpbyvyYkAtzCmvg6WCAm
	mTw6eP964LeyxxylJsmuFRqcqtE6j4QhIvmwkQp0a18bDoHHmG5kBYsB1PLlIjckvjiZUdTh2O2nY
	KYwozzvZ6rVD+7DkPKKYcoP/O3Ohq3asESm/dgg4trpDqCy5MljtdzmvRMaRe9dKcaPmBlcV3EPRX
	NhA/zTPB8aCRrN34tNrGAppiUDWUvHdMyjctgzNGafH90F7tXKwmo9f6Z07tfbZ6BajOJCbcJw/yy
	7nvsW9HNXbqsGs75BOcfGDaO+/B17hlWBOV70GJfOkWHV70nudiiF1ioziFq9v9qZQDByFAw/CNQ/
	m7L12CQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4KXP-008mt2-66; Mon, 03 Jan 2022 10:25:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4KXI-008msH-I6
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 10:25:55 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n4KXF-0003qK-4g; Mon, 03 Jan 2022 11:25:49 +0100
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalray.eu>
References: <20211204130854.1624493-1-ahmad@a3f.at>
 <20211207090615.GF28260@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d7b38b7a-e6ef-d96d-557d-1fa25a979276@pengutronix.de>
Date: Mon, 3 Jan 2022 11:25:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211207090615.GF28260@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_022554_417533_0EE1BCD4 
X-CRM114-Status: GOOD (  18.45  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] RISC-V: cpu: fix build with
 CONFIG_RISCV_EXCEPTIONS=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 07.12.21 10:06, Sascha Hauer wrote:
> On Sat, Dec 04, 2021 at 02:08:54PM +0100, Ahmad Fatoum wrote:
>> Building without CONFIG_RISCV_EXCEPTIONS causes a compile error, because
>> of a definition mismatch. data_abort_mask is a no-op without exception
>> support, but interrupt.c defines it as a different type of symbol. Skip
>> interrupt.c compilation to fix the build error.

I don't find this patch in either master or next.
Can you push it?

Thanks,
Ahmad

>>
>> Reported-by: Yann Sionneau <ysionneau@kalray.eu>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  arch/riscv/cpu/Makefile | 2 ++
>>  1 file changed, 2 insertions(+)
> 
> Applied, thanks
> 
> Sascha
> 
>>
>> diff --git a/arch/riscv/cpu/Makefile b/arch/riscv/cpu/Makefile
>> index 717baaaaa727..d79bafc6f142 100644
>> --- a/arch/riscv/cpu/Makefile
>> +++ b/arch/riscv/cpu/Makefile
>> @@ -2,6 +2,8 @@
>>  
>>  obj-y += core.o time.o
>>  obj-$(CONFIG_HAS_DMA) += dma.o
>> +ifeq ($(CONFIG_RISCV_EXCEPTIONS),y)
>>  obj-pbl-$(CONFIG_RISCV_M_MODE) += mtrap.o
>>  obj-pbl-$(CONFIG_RISCV_S_MODE) += strap.o
>>  obj-pbl-y += interrupts.o
>> +endif
>> -- 
>> 2.33.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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


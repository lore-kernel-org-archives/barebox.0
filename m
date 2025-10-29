Delivery-date: Wed, 29 Oct 2025 11:01:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE2zn-00D0Wy-1t
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 11:01:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE2zm-000246-TV
	for lore@pengutronix.de; Wed, 29 Oct 2025 11:01:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=it/EHYi8dksS5k/dpUoS6+s+QfCujnoT/y6xPPbGU1M=; b=wr7NztLI6qpJHZD2Fz5GFX0TO1
	bKMi48bl86JXzebbkINrX559yvKyefWRjnRW1RPsRkKKUNIJJRHDYymgtOfjiIaixiedZgkj6hB2u
	r8zpYU1txNDg8R7w9/5/LjG8Jia2rGHDiMW33g2afky7BxXdCY3OToOUC4mHwiUldTI1SF3ZCjCKE
	YDlVPRXF//64RaYSD/f6Egc95U01a4JSepDVtxbMvACSRDOXZRsV98v1Iq/3JMDthyxjeicag0R5E
	jhoCOHy2vnrZR+GAqrPbCU6A/szuBWBgMi5sYDvpF2RxmACv0kZKKp7vFnKz6cR4wg7yR5pigdWi3
	gtDiqXdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE2zI-00000000c18-3vWU;
	Wed, 29 Oct 2025 10:01:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE2zG-00000000byg-1kyU
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 10:01:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vE2zD-0001ww-Bv; Wed, 29 Oct 2025 11:00:59 +0100
Message-ID: <02e2565f-a976-4a92-809d-67ae90818145@pengutronix.de>
Date: Wed, 29 Oct 2025 11:00:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Fabian Pflug <f.pflug@pengutronix.de>
References: <20251029070141.2503368-1-a.fatoum@pengutronix.de>
 <20251029095555.qoo3z6lm2vtwexam@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251029095555.qoo3z6lm2vtwexam@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_030102_504466_62001E24 
X-CRM114-Status: GOOD (  25.11  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: caam - skip RNG selftest when i.MX6 is in normal
 world
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/29/25 10:55 AM, Marco Felsch wrote:
> On 25-10-29, Ahmad Fatoum wrote:
>> On an i.MX6 running under OP-TEE, the CAAM selftest fails as it needs to
>> run in the secure world[1].
>>
>> We can detect that barebox is running in the normal world on an i.MX6,
>> so use that info to gracefully skip the test.
>>
>> This is not enough to get the CAAM working (The DECO registers may not
>> be accessible to barebox), but that is arguably a more useful error
>> message than an -EBUSY.
>>
>> [1]: Scroll down to "Job Ring TZ assignment issue"
>> https://community.nxp.com/t5/i-MX-Security/RNG-self-test-errors-on-select-i-MX-device-revisions/ta-p/1102970
>>
>> Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
>> Cc: Marco Felsch <m.felsch@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/imx6.c            |  2 +-
>>  drivers/crypto/caam/rng_self_test.c | 13 ++++++++++++-
>>  include/mach/imx/imx6.h             |  2 ++
>>  3 files changed, 15 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
>> index 0cf2c17d6b90..29a56de56293 100644
>> --- a/arch/arm/mach-imx/imx6.c
>> +++ b/arch/arm/mach-imx/imx6.c
>> @@ -254,7 +254,7 @@ int imx6_devices_init(void)
>>  	return 0;
>>  }
>>  
>> -static bool imx6_cannot_write_l2x0(void)
>> +bool imx6_cannot_write_l2x0(void)
>>  {
>>  	void __iomem *l2x0_base = IOMEM(0x00a02000);
>>  	u32 val;
>> diff --git a/drivers/crypto/caam/rng_self_test.c b/drivers/crypto/caam/rng_self_test.c
>> index 5216ecef4451..a42d9cad1639 100644
>> --- a/drivers/crypto/caam/rng_self_test.c
>> +++ b/drivers/crypto/caam/rng_self_test.c
>> @@ -47,6 +47,8 @@
>>  #include <dma.h>
>>  #include <common.h>
>>  #include <linux/kernel.h>
>> +#include <mach/imx/generic.h>
>> +#include <mach/imx/imx6.h>
>>  
>>  #include "error.h"
>>  #include "regs.h"
>> @@ -143,7 +145,7 @@ static void rng_self_test_done(struct device *dev, u32 *desc, u32 err,
>>   * * i.MX6DLS silicon revision 1.4
>>   * * i.MX6SX silicon revision 1.4
>>   * * i.MX6UL silicon revision 1.2
>> - * * i.MX67SD silicon revision 1.3
>> + * * i.MX7SD silicon revision 1.3
>>   *
>>   */
>>  int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
>> @@ -176,6 +178,15 @@ int caam_rng_self_test(struct device *dev, const u8 caam_era, const u8 rngvid,
>>  		return -EINVAL;
>>  	}
>>  
>> +	if (cpu_is_mx6() && imx6_cannot_write_l2x0()) {
> 
> Nit:
> Would be nice to have an in_secure_mode() function to make the purpose
> more clear. However, change is correct and you added a comment, so
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

A generic in_secure_mode() function must necessarily be tristate for
architectural reasons: yes, no, don't know.

I guess we could do that, but yes, out of scope for this fix.

Cheers,
Ahmad



> 
> 
>> +		/* If we enter this if clause, we are likely running
>> +		 * under OP-TEE, so there is no point in continuing
>> +		 * and getting -EBUSY waiting for job completion
>> +		 */
>> +		pr_info("skipping test in normal world\n");
>> +		return 0;
>> +	}
>> +
>>  	result = dma_alloc(sizeof(*result) * result_size);
>>  	desc = dma_alloc(sizeof(*desc) * desc_size);
>>  
>> diff --git a/include/mach/imx/imx6.h b/include/mach/imx/imx6.h
>> index 109df9b811c5..7b3cedd80f66 100644
>> --- a/include/mach/imx/imx6.h
>> +++ b/include/mach/imx/imx6.h
>> @@ -135,4 +135,6 @@ int imx6_cpu_revision(void);
>>  
>>  u64 imx6_uid(void);
>>  
>> +bool imx6_cannot_write_l2x0(void);
>> +
>>  #endif /* __MACH_IMX6_H */
>> -- 
>> 2.47.3
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




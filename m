Delivery-date: Mon, 13 Sep 2021 13:11:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPjrY-0001Qa-7o
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 13:11:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPjrX-0007tY-3u
	for lore@pengutronix.de; Mon, 13 Sep 2021 13:11:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZQX3JGGrLHqLV54cfj6QdTaucGJkdh1xUMJCrBGxvNs=; b=W6O2ElzYxj/rYbCVKFgEtc3jAv
	dFxDr418IaekBgQemobqgmOz8v+4oueYk+DPZuv+3M6pq/beQOEEqZiY4xPpL0g07jwt8AK2QfiLZ
	u6NM8azQlHkuqdbSPwmn/I804dTEALdgGT8848hPHlp8tAoxqz2JEPDR7SuSuVI41qh3+GwZTp4nq
	8IJyAAy0ABWYliZGC453+Lg7Vr7BdSYKYYFeFBdQAX45v9K2YZbLbm+DvSo93C3VrqrWz0zaeaxnY
	C2vvkFAsBFMChUGqj0p0JyyrKhxPcgwi8Q95GJabqh6m6dnO9cPE3aW2vAGFE/LgQnK2K5uu6L9eP
	6+5v87BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPjpt-001SIf-MY; Mon, 13 Sep 2021 11:09:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPjpo-001SIJ-LM
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 11:09:14 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mPjpn-0007aB-0o; Mon, 13 Sep 2021 13:09:11 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
 <20210910134323.26136-4-michael.riesch@wolfvision.net>
 <20210910135933.GA24395@pengutronix.de>
 <18d58ffc-c93b-e350-24a1-b4338a2a2ee9@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3e891c60-2466-f7b5-55fd-6293dd25de31@pengutronix.de>
Date: Mon, 13 Sep 2021 13:09:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <18d58ffc-c93b-e350-24a1-b4338a2a2ee9@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_040912_763576_0E558526 
X-CRM114-Status: GOOD (  32.95  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] arm: zynqmp: add boot source support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.09.21 12:53, Michael Riesch wrote:
> Hi Michael,
> 
> Thanks for your comments.
> 
> On 9/10/21 3:59 PM, Michael Tretter wrote:
>> On Fri, 10 Sep 2021 15:43:23 +0200, Michael Riesch wrote:
>>> The ZynqMP reports the mode pins sampled at POR via the register
>>> ZYNQMP_CRL_APB_BOOT_MODE_USER. This commit adds a function that reads
>>> the register and populates the boot source.
>>>
>>> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
>>> ---
>>>  arch/arm/mach-zynqmp/zynqmp.c | 43 +++++++++++++++++++++++++++++++++++
>>>  1 file changed, 43 insertions(+)
>>>
>>> diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
>>> index 5871c145b..262bc0dd4 100644
>>> --- a/arch/arm/mach-zynqmp/zynqmp.c
>>> +++ b/arch/arm/mach-zynqmp/zynqmp.c
>>> @@ -6,9 +6,11 @@
>>>  #include <common.h>
>>>  #include <init.h>
>>>  #include <linux/types.h>
>>> +#include <bootsource.h>
>>>  #include <reset_source.h>
>>>  
>>>  #define ZYNQMP_CRL_APB_BASE		0xff5e0000
>>> +#define ZYNQMP_CRL_APB_BOOT_MODE_USER	(ZYNQMP_CRL_APB_BASE + 0x200)
>>>  #define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
>>>  
>>>  /* External POR: The PS_POR_B reset signal pin was asserted. */
>>> @@ -26,6 +28,46 @@
>>>  /* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
>>>  #define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
>>>  
>>> +struct zynqmp_bootsource {
>>> +	enum bootsource src;
>>> +	int instance;
>>> +};
>>> +
>>> +/* cf. Table 11-1 "Boot Modes" in UG1085 Zynq UltraScale+ Device TRM */
>>> +static struct zynqmp_bootsource boot_modes[] = {

This could be marked const.

>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_SPI, .instance = 0 },

What difference is between boot_modes[1] and boot_modes[2]?

>>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },>>> +	{ .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>>> +	{ .src = BOOTSOURCE_MMC, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_USB, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_JTAG, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },
>>> +	{ .src = BOOTSOURCE_UNKNOWN, .instance = 0 },

There's BOOTSOURCE_INSTANCE_UNKNOWN, which you may want to use here.

>>> +	{ .src = BOOTSOURCE_MMC, .instance = 1 },
>>> +};
>>
>> Thanks for the patch.
>>
>> Please make the mapping of the Boot Mode value to the BOOTSOURCE explicit
>> instead of hiding in as the index into this array.
> 
> OK. This approach is used in mach-rockchip/rk3568.c and I took it from
> there. But if it serves readability I can rewrite it. I think I'll drop
> the table altogether, though, and use a switch instead.

I like the array, you can do

  [0x0] = { .src = BOOTSOURCE_JTAG, .instance = 0 }
  [0x1] = { .src = BOOTSOURCE_SPI, .instance = 0 }

A switch is too verbose IMO.

> 
>>> +
>>> +static enum bootsource zynqmp_bootsource(void)
>>> +{
>>> +	u32 v;
>>> +
>>> +	v = readl(ZYNQMP_CRL_APB_BOOT_MODE_USER);
>>> +	v &= 0x0F;
>>> +
>>> +	if (v >= ARRAY_SIZE(boot_modes))
>>> +		return BOOTSOURCE_UNKNOWN;
>>> +
>>> +	bootsource_set(boot_modes[v].src);
>>> +	bootsource_set_instance(boot_modes[v].instance);
>>
>> Don't set the bootsource as a side effect of this function. This function
>> should only lookup of the boot mode and zynqmp_init should actually set it.
> 
> Again, this is pretty much taken from rk3568.c and I didn't see any harm
> in it. But the way you suggested is fine to me as well. I'll prepare a v2.
> 
> Best regards,
> Michael
> 
>>
>> Michael
>>
>>> +
>>> +	return boot_modes[v].src;
>>> +}
>>> +
>>>  struct zynqmp_reset_reason {
>>>  	u32 mask;
>>>  	enum reset_src_type type;
>>> @@ -65,6 +107,7 @@ static enum reset_src_type zynqmp_get_reset_src(void)
>>>  
>>>  static int zynqmp_init(void)
>>>  {
>>> +	zynqmp_bootsource();
>>>  	reset_source_set(zynqmp_get_reset_src());
>>>  
>>>  	return 0;
>>> -- 
>>> 2.17.1
>>>
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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


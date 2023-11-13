Delivery-date: Mon, 13 Nov 2023 16:04:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2YUP-00A9KP-1C
	for lore@lore.pengutronix.de;
	Mon, 13 Nov 2023 16:04:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2YUP-00080k-8r
	for lore@pengutronix.de; Mon, 13 Nov 2023 16:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HwAV6/zK5VdGtuQ0hk+370MfYRTKYbXDeITK9IilNHI=; b=WiE93KJNS+XZ28OT6tKvRPlvmF
	MQZasseTxQEhyjCX6PxV6gWzgIdbzo2d675MHLlVpG8Hpu063g5zXfXdBGypTOf4oDEmXHQbD0EcJ
	n939nNKWLymaNGcHw3JMSN+95vfDEmEV3MuZSAwhGWdH1LleJWySis2CmMwC0mATftux4R+n4xU+k
	p7vPdECrVby2ZnhbW1lSbHtJnWy+jS8XU3pEekFJmT+tZcXRXiWbLYbfDcSiOi4fZKKVg2f3pkUtz
	XcJyLh7eu4rTe6bCRePhLey/CHFmtRCIgT3hzFJZYLa6sGcRYh7AP63XV1BHFEH52HX7gSyaDRnI/
	zRfwaYJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2YSw-00ECTB-1R;
	Mon, 13 Nov 2023 15:03:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2YSs-00ECSf-00
	for barebox@lists.infradead.org;
	Mon, 13 Nov 2023 15:03:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r2YSn-0007mP-NV; Mon, 13 Nov 2023 16:02:57 +0100
Message-ID: <546aba5d-d506-52fd-de23-6bc12805ddd4@pengutronix.de>
Date: Mon, 13 Nov 2023 16:02:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20231109114707.1354502-1-a.fatoum@pengutronix.de>
 <20231113130350.GS3359458@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231113130350.GS3359458@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_070302_038520_ED25CCE6 
X-CRM114-Status: GOOD (  29.79  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] console: provide best-effort clk_get_for_console
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.11.23 14:03, Sascha Hauer wrote:
> On Thu, Nov 09, 2023 at 12:47:06PM +0100, Ahmad Fatoum wrote:
>> From: Ahmad Fatoum <ahmad@a3f.at>
>>
>> clk_get will return -EPROBE_DEFER if clock provider hasn't yet been
>> probed. In a system with deep probe enabled, dependencies are probed
>> on demand, so a -EPROBE_DEFER return is final and the console probe
>> will never succeed.
>>
>> CONFIG_DEBUG_LL is often used to debug this, but because the low-level
>> console is not interactive, it's a bit cumbersome. Improve upon this a
>> bit, by providing a clk_get_for_console helper that returns NULL if and
>> only if we are sure that a clock provider will not be probed.
>>
>> In that case, the driver can skip code paths initialization code and
>> baud rate setting dependent on having access to the clock and still
>> register a console that reuses what was set up by CONFIG_DEBUG_LL.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  include/console.h   | 26 ++++++++++++++++++++++++++
>>  include/linux/clk.h | 21 +++++++++++++++++++++
>>  2 files changed, 47 insertions(+)
>>
>> diff --git a/include/console.h b/include/console.h
>> index 586b68f73301..b8c901801e9f 100644
>> --- a/include/console.h
>> +++ b/include/console.h
>> @@ -8,6 +8,7 @@
>>  #define _CONSOLE_H_
>>  
>>  #include <param.h>
>> +#include <linux/clk.h>
>>  #include <linux/list.h>
>>  #include <driver.h>
>>  #include <serdev.h>
>> @@ -208,4 +209,29 @@ static inline void console_ctrlc_allow(void) { }
>>  static inline void console_ctrlc_forbid(void) { }
>>  #endif
>>  
>> +/**
>> + * clk_get_for_console - get clock, ignoring known unavailable clock controller
>> + * @dev: device for clock "consumer"
>> + * @id: clock consumer ID
>> + *
>> + * Return: a struct clk corresponding to the clock producer, a
>> + * valid IS_ERR() condition containing errno or NULL if it could
>> + * be determined that the clock producer will never be probed in
>> + * absence of modules. The NULL return allows serial drivers to
>> + * skip clock handling and rely on CONFIG_DEBUG_LL.
>> + */
>> +static inline struct clk *clk_get_for_console(struct device *dev, const char *id)
>> +{
>> +	struct clk *clk;
>> +
>> +	if (!IS_ENABLED(CONFIG_DEBUG_LL))
>> +		return clk_get(dev, id);
> 
> There are several SoCs out there where the UART is enabled by the ROM
> already, on these we don't need to have CONFIG_DEBUG_LL enabled for a
> working UART.

Those SoCs can still implement CONFIG_DEBUG_LL and just skip the
initialization step.

> Maybe testing for the UART enable bit in probe() would be a better
> indication that the UART is already in a working state?

If clk turns out to be not enabled, system would hang on e.g. i.MX.

This is a mere debugging measure for SoCs with complex clock controllers
backed by firmware, so I think having to enable CONFIG_DEBUG_LL to use
is acceptable.

Cheers,
Ahmad


> 
> Sascha
> 
>> +
>> +	clk = clk_get_if_available(dev, id);
>> +	if (clk == NULL)
>> +		dev_warn(dev, "couldn't get clock (ignoring)\n");
>> +
>> +	return clk;
>> +}
>> +
>>  #endif
>> diff --git a/include/linux/clk.h b/include/linux/clk.h
>> index 61b4ff3127cf..f505f18a75c0 100644
>> --- a/include/linux/clk.h
>> +++ b/include/linux/clk.h
>> @@ -14,6 +14,7 @@
>>  #include <linux/spinlock.h>
>>  #include <linux/stringify.h>
>>  #include <linux/container_of.h>
>> +#include <deep-probe.h>
>>  #include <xfuncs.h>
>>  
>>  struct device;
>> @@ -982,4 +983,24 @@ static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
>>  	return clk;
>>  }
>>  
>> +/**
>> + * clk_get_if_available - get clock, ignoring known unavailable clock controller
>> + * @dev: device for clock "consumer"
>> + * @id: clock consumer ID
>> + *
>> + * Return: a struct clk corresponding to the clock producer, a
>> + * valid IS_ERR() condition containing errno or NULL if it could
>> + * be determined that the clock producer will never be probed in
>> + * absence of modules.
>> + */
>> +static inline struct clk *clk_get_if_available(struct device *dev, const char *id)
>> +{
>> +	struct clk *clk = clk_get(dev, id);
>> +
>> +	if (clk == ERR_PTR(-EPROBE_DEFER) && deep_probe_is_supported())
>> +		return NULL;
>> +
>> +	return clk;
>> +}
>> +
>>  #endif
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




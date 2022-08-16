Delivery-date: Tue, 16 Aug 2022 09:34:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNr5g-000R9M-2L
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 09:34:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNr5c-0000zW-Eb
	for lore@pengutronix.de; Tue, 16 Aug 2022 09:34:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SM3uR1zT4XGZabI7p853qJt4KmCfV0Cqu73D6u9x92k=; b=NrZpnU9va/CHWH48n02aUui6Mu
	NAZCNlPHC/CFs5I3Kg7AkVr6TJ9HsInfFPEq0oOAxzGdVm39+biibn0IguYuEOtpMcIwdfDs3V050
	zPl3eKpZf8Wwhpojn53C0prta7L8oQ2MxCuQEc9uW/QSysnqgSRBE5aIrh7EIgoCHnqTbkd/aaTGm
	Gb0g9faPksXVYZA8g+7an2W81FMCCGWuhz0B4Cbdu5MEyMB17o0lCFfMMsqWWSMWdF2LLtBBJXkgd
	G1NQYo/7G9T/d1DII6tCUIRh6Xxr8Y/sL+XZZLyeLtamjVggv3JLBccKrBic4AXQv0rKMGbUdtZGq
	LLGlgEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNr3t-00FI3t-Q6; Tue, 16 Aug 2022 07:32:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNr2l-00FG24-6Y
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 07:31:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oNr2e-0000UU-GI; Tue, 16 Aug 2022 09:31:12 +0200
Message-ID: <32cbde30-744a-a171-96b1-368db66674f6@pengutronix.de>
Date: Tue, 16 Aug 2022 09:31:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220815125551.2329928-1-a.fatoum@pengutronix.de>
 <20220815125551.2329928-3-a.fatoum@pengutronix.de>
 <20220816061443.wjjqhwqqolhaeewd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220816061443.wjjqhwqqolhaeewd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_003121_400698_37EE5F33 
X-CRM114-Status: GOOD (  23.44  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: i.MX8M: define imx8mX_load_bl33 and
 imx8mX_load_and_start_tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 16.08.22 08:14, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 22-08-15, Ahmad Fatoum wrote:
>> For most users imx8mX_load_and_start_tfa saves a good deal of
>> boilerplate. It's not always sufficient though:
>>
>>   - board code may need a pointer to bl33 to install other firmware
>>     besides barebox proper from there before jumping to bl31 (TF-A).
>>
>>   - board code may want to use a different ARM Trusted Firmware,
>>     e.g. when OP-TEE is to be installed.
>>
>> Thus define two more helper: imx8mX_load_bl33 and
>> imx8mn_load_and_start_tfa, which allows board code to avoid duplicating
>> the chainload logic and focus on doing the board specific stuff only.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-imx/atf.c                | 43 ++++++++++++--------------
>>  arch/arm/mach-imx/include/mach/atf.h   | 12 +++++++
>>  arch/arm/mach-imx/include/mach/xload.h |  4 +++
>>  3 files changed, 36 insertions(+), 23 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
>> index 675e90792a32..5301c0fbe8e5 100644
>> --- a/arch/arm/mach-imx/atf.c
>> +++ b/arch/arm/mach-imx/atf.c
>> @@ -70,13 +70,10 @@ __noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
>>  	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
>>  }
>>  
>> -__noreturn void imx8mm_load_and_start_image_via_tfa(void)
>> +void imx8mm_load_bl33(void *bl33)
>>  {
>> -	size_t bl31_size;
>> -	const u8 *bl31;
>>  	enum bootsource src;
>>  	int instance;
>> -	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
>>  
>>  	imx8mm_get_boot_source(&src, &instance);
>>  	switch (src) {
>> @@ -122,16 +119,16 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
>>  	 * the same code in DRAM.
>>  	 */
>>  	memcpy(bl33, __image_start, barebox_pbl_size);
>> +}
>>  
>> -	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
>> -
>> -	imx8mm_atf_load_bl31(bl31, bl31_size);
>> +__noreturn void imx8mm_load_and_start_image_via_tfa(void)
>> +{
>> +	imx8mm_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
>               ^
> This is already defined by your macro "imx8mm_load_and_start_tfa".

Ouch, thanks for spotting. Just fixed in v2.

> 
> Regards,
>   Marco
> 
>> +	imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
>>  }
>>  
>> -__noreturn void imx8mp_load_and_start_image_via_tfa(void)
>> +void imx8mp_load_bl33(void *bl33)
>>  {
>> -	size_t bl31_size;
>> -	const u8 *bl31;
>>  	enum bootsource src;
>>  	int instance;
>>  
>> @@ -157,18 +154,17 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
>>  	 * for the piggy data, so we need to ensure that we are running
>>  	 * the same code in DRAM.
>>  	 */
>> -	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
>> -	       __image_start, barebox_pbl_size);
>> -
>> -	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
>> +	memcpy(bl33, __image_start, barebox_pbl_size);
>> +}
>>  
>> -	imx8mp_atf_load_bl31(bl31, bl31_size);
>> +void imx8mp_load_and_start_image_via_tfa(void)
>> +{
>> +	imx8mp_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
>> +	imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
>>  }
>>  
>> -__noreturn void imx8mn_load_and_start_image_via_tfa(void)
>> +void imx8mn_load_bl33(void *bl33)
>>  {
>> -	size_t bl31_size;
>> -	const u8 *bl31;
>>  	enum bootsource src;
>>  	int instance;
>>  
>> @@ -194,10 +190,11 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
>>  	 * for the piggy data, so we need to ensure that we are running
>>  	 * the same code in DRAM.
>>  	 */
>> -	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
>> -	       __image_start, barebox_pbl_size);
>> -
>> -	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
>> +	memcpy(bl33, __image_start, barebox_pbl_size);
>> +}
>>  
>> -	imx8mn_atf_load_bl31(bl31, bl31_size);
>> +void imx8mn_load_and_start_image_via_tfa(void)
>> +{
>> +	imx8mn_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
>> +	imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
>>  }
>> diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
>> index ca54bb5fbf82..b3c4ecb92576 100644
>> --- a/arch/arm/mach-imx/include/mach/atf.h
>> +++ b/arch/arm/mach-imx/include/mach/atf.h
>> @@ -23,4 +23,16 @@ void __noreturn imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
>>  void __noreturn imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
>>  void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
>>  
>> +#define imx8m_load_and_start_tfa(soc,fw_name) do { \
>> +	size_t __bl31_size; \
>> +	const u8 *__bl31; \
>> +	soc##_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR); \
>> +	get_builtin_firmware(fw_name, &__bl31, &__bl31_size); \
>> +	soc##_atf_load_bl31(__bl31, __bl31_size); \
>> +} while (0)
>> +
>> +#define imx8mm_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mm, fw_name)
>> +#define imx8mn_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mn, fw_name)
>> +#define imx8mp_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mp, fw_name)
>> +
>>  #endif
>> diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
>> index fe43d2502632..82bf663c4266 100644
>> --- a/arch/arm/mach-imx/include/mach/xload.h
>> +++ b/arch/arm/mach-imx/include/mach/xload.h
>> @@ -16,6 +16,10 @@ int imx8m_esdhc_load_image(int instance, bool start);
>>  int imx8mn_esdhc_load_image(int instance, bool start);
>>  int imx8mp_esdhc_load_image(int instance, bool start);
>>  
>> +void imx8mm_load_bl33(void *bl33);
>> +void imx8mn_load_bl33(void *bl33);
>> +void imx8mp_load_bl33(void *bl33);
>> +
>>  void __noreturn imx8mm_load_and_start_image_via_tfa(void);
>>  void __noreturn imx8mn_load_and_start_image_via_tfa(void);
>>  void __noreturn imx8mp_load_and_start_image_via_tfa(void);
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



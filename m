Delivery-date: Tue, 16 Aug 2022 08:19:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNpvF-000NJo-Jc
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 08:19:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNpvC-0007o7-Kc
	for lore@pengutronix.de; Tue, 16 Aug 2022 08:19:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DPqvDGKaDM6Hef1cnjQYtYWibLhhxDJtccbeqEp7Edo=; b=Ek2DTq5Z9a1F0wlsX8PzL7jxnm
	sQE8xEX2P/3QDD7ulQyaQF7gsRIAww4CYhOSnpQVMlvR1mk2QErTQmZ0IFheXsuOtd8j0XlVYQjMC
	w3BlL/2PIcS2GBTuqJixME+g40eH/RuKsfkAUYDlAPWziSZ4JPxI19Eg1ZaF0SFYD0BZHoZ0JtFjt
	qwXppzm7GJenS+YpqaDIZ+okjkfzo3nZnyMFgfkbPtshQQd+aswD3VBkKRHpu1ZAdKVRgPyVLp353
	VnuxgJqri2wfnae7hCVNGzgY20hFST+ZTl9cptl9P0ydUR0QJDrsudrhF26q3JIpoGaFCZPkxVXa4
	Jgi0cRxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNpso-00DKw8-9I; Tue, 16 Aug 2022 06:16:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNpqj-00DINp-Rk
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 06:14:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oNpqd-0007Iu-Rt; Tue, 16 Aug 2022 08:14:43 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oNpqd-0007Cz-IV; Tue, 16 Aug 2022 08:14:43 +0200
Date: Tue, 16 Aug 2022 08:14:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816061443.wjjqhwqqolhaeewd@pengutronix.de>
References: <20220815125551.2329928-1-a.fatoum@pengutronix.de>
 <20220815125551.2329928-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815125551.2329928-3-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_231449_966920_B334A21C 
X-CRM114-Status: GOOD (  22.29  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ARM: i.MX8M: define imx8mX_load_bl33 and
 imx8mX_load_and_start_tfa
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 22-08-15, Ahmad Fatoum wrote:
> For most users imx8mX_load_and_start_tfa saves a good deal of
> boilerplate. It's not always sufficient though:
> 
>   - board code may need a pointer to bl33 to install other firmware
>     besides barebox proper from there before jumping to bl31 (TF-A).
> 
>   - board code may want to use a different ARM Trusted Firmware,
>     e.g. when OP-TEE is to be installed.
> 
> Thus define two more helper: imx8mX_load_bl33 and
> imx8mn_load_and_start_tfa, which allows board code to avoid duplicating
> the chainload logic and focus on doing the board specific stuff only.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/atf.c                | 43 ++++++++++++--------------
>  arch/arm/mach-imx/include/mach/atf.h   | 12 +++++++
>  arch/arm/mach-imx/include/mach/xload.h |  4 +++
>  3 files changed, 36 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 675e90792a32..5301c0fbe8e5 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -70,13 +70,10 @@ __noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
>  	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
>  }
>  
> -__noreturn void imx8mm_load_and_start_image_via_tfa(void)
> +void imx8mm_load_bl33(void *bl33)
>  {
> -	size_t bl31_size;
> -	const u8 *bl31;
>  	enum bootsource src;
>  	int instance;
> -	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
>  
>  	imx8mm_get_boot_source(&src, &instance);
>  	switch (src) {
> @@ -122,16 +119,16 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
>  	 * the same code in DRAM.
>  	 */
>  	memcpy(bl33, __image_start, barebox_pbl_size);
> +}
>  
> -	get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
> -
> -	imx8mm_atf_load_bl31(bl31, bl31_size);
> +__noreturn void imx8mm_load_and_start_image_via_tfa(void)
> +{
> +	imx8mm_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
              ^
This is already defined by your macro "imx8mm_load_and_start_tfa".

Regards,
  Marco

> +	imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
>  }
>  
> -__noreturn void imx8mp_load_and_start_image_via_tfa(void)
> +void imx8mp_load_bl33(void *bl33)
>  {
> -	size_t bl31_size;
> -	const u8 *bl31;
>  	enum bootsource src;
>  	int instance;
>  
> @@ -157,18 +154,17 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
>  	 * for the piggy data, so we need to ensure that we are running
>  	 * the same code in DRAM.
>  	 */
> -	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
> -	       __image_start, barebox_pbl_size);
> -
> -	get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
> +	memcpy(bl33, __image_start, barebox_pbl_size);
> +}
>  
> -	imx8mp_atf_load_bl31(bl31, bl31_size);
> +void imx8mp_load_and_start_image_via_tfa(void)
> +{
> +	imx8mp_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
>  }
>  
> -__noreturn void imx8mn_load_and_start_image_via_tfa(void)
> +void imx8mn_load_bl33(void *bl33)
>  {
> -	size_t bl31_size;
> -	const u8 *bl31;
>  	enum bootsource src;
>  	int instance;
>  
> @@ -194,10 +190,11 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
>  	 * for the piggy data, so we need to ensure that we are running
>  	 * the same code in DRAM.
>  	 */
> -	memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
> -	       __image_start, barebox_pbl_size);
> -
> -	get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
> +	memcpy(bl33, __image_start, barebox_pbl_size);
> +}
>  
> -	imx8mn_atf_load_bl31(bl31, bl31_size);
> +void imx8mn_load_and_start_image_via_tfa(void)
> +{
> +	imx8mn_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR);
> +	imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
>  }
> diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
> index ca54bb5fbf82..b3c4ecb92576 100644
> --- a/arch/arm/mach-imx/include/mach/atf.h
> +++ b/arch/arm/mach-imx/include/mach/atf.h
> @@ -23,4 +23,16 @@ void __noreturn imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
>  void __noreturn imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
>  void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
>  
> +#define imx8m_load_and_start_tfa(soc,fw_name) do { \
> +	size_t __bl31_size; \
> +	const u8 *__bl31; \
> +	soc##_load_bl33((void *)MX8M_ATF_BL33_BASE_ADDR); \
> +	get_builtin_firmware(fw_name, &__bl31, &__bl31_size); \
> +	soc##_atf_load_bl31(__bl31, __bl31_size); \
> +} while (0)
> +
> +#define imx8mm_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mm, fw_name)
> +#define imx8mn_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mn, fw_name)
> +#define imx8mp_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mp, fw_name)
> +
>  #endif
> diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
> index fe43d2502632..82bf663c4266 100644
> --- a/arch/arm/mach-imx/include/mach/xload.h
> +++ b/arch/arm/mach-imx/include/mach/xload.h
> @@ -16,6 +16,10 @@ int imx8m_esdhc_load_image(int instance, bool start);
>  int imx8mn_esdhc_load_image(int instance, bool start);
>  int imx8mp_esdhc_load_image(int instance, bool start);
>  
> +void imx8mm_load_bl33(void *bl33);
> +void imx8mn_load_bl33(void *bl33);
> +void imx8mp_load_bl33(void *bl33);
> +
>  void __noreturn imx8mm_load_and_start_image_via_tfa(void);
>  void __noreturn imx8mn_load_and_start_image_via_tfa(void);
>  void __noreturn imx8mp_load_and_start_image_via_tfa(void);
> -- 
> 2.30.2
> 
> 
> 



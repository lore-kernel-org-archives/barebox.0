Delivery-date: Mon, 16 Dec 2024 10:01:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6yb-008l76-14
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 10:01:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN6yb-0006wQ-7l
	for lore@pengutronix.de; Mon, 16 Dec 2024 10:01:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w7cGscqLD8RRdj6IFW/tnkbeciNTonZnvVV9PqmtSAQ=; b=vgh7tMDrx9Pze76wSy5CYKjyzg
	j38kvMdLQost8DUdeFuxhUvNACM4wS5nIDGKd3OMAIgb0o+0Kg1R60KaBgla1xvjIw1RrkwJnSWJH
	yT2+oziRNjnPWxDTbdzuPEvhlUP6bRxrbD/3Jhltih4uQ1RnG4nxFxSBSS35JWrStB73s4Vwmlycr
	hZORfA0TLLSn20rEL47/9kqIWcxVhjddjVHJPfDJF4HRN6gYmj466jGr8vlar88RU275g6O667hNe
	s6DXZyi7trYozgeADgQbMMW9xNx/USEwJp08kgO8mPAiJsHsnuZcgKn+iuAkoAuSy2mkar0SsLE+T
	exvlyrbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6y4-00000009Tj9-3GSo;
	Mon, 16 Dec 2024 09:00:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN6tJ-00000009SrS-0MiQ
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 08:55:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN6tH-0005bx-Oi; Mon, 16 Dec 2024 09:55:47 +0100
Message-ID: <452ed951-8693-4742-aa4f-a0df124c9a3b@pengutronix.de>
Date: Mon, 16 Dec 2024 09:55:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20241213-toradex-colibri-imx6-v1-1-afb618cbf25b@pengutronix.de>
 <Z1_iXdYw8Hpx9uZ6@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z1_iXdYw8Hpx9uZ6@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_005549_129312_D76B1661 
X-CRM114-Status: GOOD (  22.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: Add support for todarex colibri imx6 on iris
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 16.12.24 09:18, Sascha Hauer wrote:
> Hi Jonas,
> 
> On Fri, Dec 13, 2024 at 03:06:59PM +0100, Jonas Rebmann wrote:
>> +static void eth_init(void)
>> +{
>> +        void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
> 
> IOMEM() instead of casting to void *.
> 
>> +ENTRY_FUNCTION(start_imx6dl_colibri_iris, r0, r1, r2)
>> +{
>> +	void *fdt;
>> +
>> +	imx6_cpu_lowlevel_init();
>> +
>> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>> +		setup_uart();
>> +	}
>> +
>> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
>> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
>> +}
> 
> Rather do a:
> 
> 	relocate_to_current_adr();
> 	setup_c();
> 
> Then jump to a noinline function to continue startup.
> 
> Additionally to setting up the UART for _ll access you can do
> a
> 
> 	pbl_set_putc(imx_uart_putc, uart1base);
> 
> The advantage is that you no longer have to enable CONFIG_DEBUG_LL to
> get early console output, but only CONFIG_PBL_CONSOLE.
> 
> You can do the UART setup unconditionally, no need to hide that behind
> CONFIG_DEBUG_LL.

By using the DCD table, the benefit of the console so early is greatly
reduced, that's why I told Jonas that DEBUG_LL would be enough.

> 
>> +
>> +ENTRY_FUNCTION(start_imx6s_colibri_iris, r0, r1, r2)
>> +{
>> +	void *fdt;
>> +
>> +	imx6_cpu_lowlevel_init();
>> +
>> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
>> +		setup_uart();
>> +	}
>> +
>> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
>> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
>> +}
> 
> You should be able to call imx6q_barebox_entry() instead here. This
> will read the amount of DRAM back from the controller. No need to
> distinguish between both board anymore and you can merge both images
> into one.

The images have different DCD tables, so combining the entry point
won't work. You can't have different imxcfg files for a single entry point.

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



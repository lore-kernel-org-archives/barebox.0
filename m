Delivery-date: Mon, 16 Dec 2024 10:35:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN7Vx-008llt-04
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 10:35:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN7Vw-0004k9-TR
	for lore@pengutronix.de; Mon, 16 Dec 2024 10:35:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQdtPU6VdQ6V16yzMQw5pJ0Otmg+iufOCQikoIYeXyQ=; b=suGXi9+9rOyTn5Hp6bM35ERWP1
	XI3ffhdRNBv/cr8SBydPWuPto01oNjbVFoyFDAscBKuRQ4zPBUZD8me6h0O2uX35VVuwWupsUbLlf
	f+8WY7uXlZ9GlvG1rFe6FsSSJLI9Mnh79pw5k4B53cKabWaNwHO2RrsEyMbY134V5SLIn3icekUnI
	gTn68dK/DKZwuEWSgOUKSjGuIC43rmW7EeWm5bCAugeB5n3/qGv96vuj2791pkDtvPtHgjvMU6XfG
	aj7BaxkDqqKj9btl4HxN0XFhXfAO+YfFIIFwduXyUu+Fe5sGuBfuu4iLvIJwA3LRezgBi+IzFPshN
	1eZCRP/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7VJ-00000009YLN-1a8o;
	Mon, 16 Dec 2024 09:35:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7UL-00000009YB2-3iAn
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 09:34:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tN7UK-0004QE-A3; Mon, 16 Dec 2024 10:34:04 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tN7UJ-003fdW-19;
	Mon, 16 Dec 2024 10:34:04 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tN7UK-002YFv-04;
	Mon, 16 Dec 2024 10:34:04 +0100
Date: Mon, 16 Dec 2024 10:34:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z1_0CwbEbz4Cu97n@pengutronix.de>
References: <20241213-toradex-colibri-imx6-v1-1-afb618cbf25b@pengutronix.de>
 <Z1_iXdYw8Hpx9uZ6@pengutronix.de>
 <452ed951-8693-4742-aa4f-a0df124c9a3b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <452ed951-8693-4742-aa4f-a0df124c9a3b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_013405_922520_B375FD2B 
X-CRM114-Status: GOOD (  27.82  )
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

On Mon, Dec 16, 2024 at 09:55:47AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 16.12.24 09:18, Sascha Hauer wrote:
> > Hi Jonas,
> > 
> > On Fri, Dec 13, 2024 at 03:06:59PM +0100, Jonas Rebmann wrote:
> >> +static void eth_init(void)
> >> +{
> >> +        void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
> > 
> > IOMEM() instead of casting to void *.
> > 
> >> +ENTRY_FUNCTION(start_imx6dl_colibri_iris, r0, r1, r2)
> >> +{
> >> +	void *fdt;
> >> +
> >> +	imx6_cpu_lowlevel_init();
> >> +
> >> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> >> +		setup_uart();
> >> +	}
> >> +
> >> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
> >> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> >> +}
> > 
> > Rather do a:
> > 
> > 	relocate_to_current_adr();
> > 	setup_c();
> > 
> > Then jump to a noinline function to continue startup.
> > 
> > Additionally to setting up the UART for _ll access you can do
> > a
> > 
> > 	pbl_set_putc(imx_uart_putc, uart1base);
> > 
> > The advantage is that you no longer have to enable CONFIG_DEBUG_LL to
> > get early console output, but only CONFIG_PBL_CONSOLE.
> > 
> > You can do the UART setup unconditionally, no need to hide that behind
> > CONFIG_DEBUG_LL.
> 
> By using the DCD table, the benefit of the console so early is greatly
> reduced, that's why I told Jonas that DEBUG_LL would be enough.

Ok. Nevertheless the IS_ENABLED(CONFIG_DEBUG_LL) can be removed.

> 
> > 
> >> +
> >> +ENTRY_FUNCTION(start_imx6s_colibri_iris, r0, r1, r2)
> >> +{
> >> +	void *fdt;
> >> +
> >> +	imx6_cpu_lowlevel_init();
> >> +
> >> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> >> +		setup_uart();
> >> +	}
> >> +
> >> +	fdt = __dtb_z_imx6dl_colibri_iris_start + get_runtime_offset();
> >> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> >> +}
> > 
> > You should be able to call imx6q_barebox_entry() instead here. This
> > will read the amount of DRAM back from the controller. No need to
> > distinguish between both board anymore and you can merge both images
> > into one.
> 
> The images have different DCD tables, so combining the entry point
> won't work. You can't have different imxcfg files for a single entry point.

Ah, right. Would __alias work for ENTRY_FUNCTION?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



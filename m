Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3fD7-00082Y-Uv
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 12:41:30 +0000
Date: Thu, 6 Aug 2020 14:41:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20200806124127.iw4k32vpzrdb6f42@pengutronix.de>
References: <20200804214158.25721-1-anees.r3hman@gmail.com>
 <20200804214158.25721-3-anees.r3hman@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804214158.25721-3-anees.r3hman@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/2] ARM: i.MX: Add atlascopco sxb board
To: Anees Rehman <anees.r3hman@gmail.com>
Cc: Anees Rehman <anees.rehman@atlascopco.com>, barebox@lists.infradead.org

On 20-08-04 23:41, Anees Rehman wrote:

...

> +static noinline void imx7d_sxb_sram_setup(void)
> +{
> +	int ret;
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	pr_debug("configuring ddr...\n");
> +	write_regs(imx7d_ixb_dcd, ARRAY_SIZE(imx7d_ixb_dcd));
> +
> +	ret = imx7_esdhc_start_image(2);
> +
> +	BUG_ON(ret);
> +}
> +
> +ENTRY_FUNCTION(start_ac_sxb, r0, r1, r2)
> +{
> +	imx7_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	if (get_pc() < 0x80000000)
> +		imx7d_sxb_sram_setup();

Nit:
After this call we are running in the correct place...

> +	imx7d_barebox_entry(__dtb_z_ac_sxb_start + get_runtime_offset());

So get_runtime_offset() shouldn't be necessary if I got it right.

> +}

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

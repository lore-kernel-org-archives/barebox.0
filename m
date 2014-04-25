Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wdfth-0008Ex-1s
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 13:10:33 +0000
Received: by mail-ee0-f47.google.com with SMTP id b15so2801536eek.20
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 06:10:09 -0700 (PDT)
Date: Fri, 25 Apr 2014 15:10:04 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140425130834.GA29115@omega>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
 <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 4/4] imx6: Add support for phyCARD-i.MX6
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Apr 25, 2014 at 01:54:28PM +0200, Christian Hemp wrote:
> Add support for Phytec phyCARD-i.MX6.
> 	- 1GB RAM on two banks
> 	- 1GB RAM on one bank
> 	- 2GB RAM on two banks
...
> +
> +extern char __dtb_imx6q_phytec_pbaa03_start[];
> +
> +ENTRY_FUNCTION(start_phytec_pbaa03_1gib, r0, r1, r2)
> +{
> +	uint32_t fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	arm_setup_stack(0x00920000 - 8);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_phytec_pbaa03_1gib_1bank, r0, r1, r2)
> +{
> +	uint32_t fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	arm_setup_stack(0x00920000 - 8);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> +

Don't see a difference between start_phytec_pbaa03_1gib_1bank and
start_phytec_pbaa03_1gib. Maybe you can write a new function and these
two functions can call this function...

It's a design question...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UkaRB-00019R-7s
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 13:41:09 +0000
Received: by mail-wg0-f50.google.com with SMTP id k13so2087388wgh.17
 for <barebox@lists.infradead.org>; Thu, 06 Jun 2013 06:40:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1370522836-11258-1-git-send-email-j.weitzel@phytec.de>
References: <1370425962.3824.1.camel@lws-weitzel>
 <1370522836-11258-1-git-send-email-j.weitzel@phytec.de>
Date: Thu, 6 Jun 2013 08:40:46 -0500
Message-ID: <CAGo_u6rixBCzggcuLAfOLuxgTrzyDhY7ipf2garfTiDb_Ce0WA@mail.gmail.com>
From: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
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
Subject: Re: [PATCH v2] omap4: set voltage according to mpu freq
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, Jun 6, 2013 at 7:47 AM, Jan Weitzel <j.weitzel@phytec.de> wrote:
> +noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
> +{
> +       void __iomem *base;
> +       u32 val = 0;
> +
> +       /* For VC bypass only VCOREx_CGF_FORCE  is necessary and
> +        * VCOREx_CFG_VOLTAGE  changes can be discarded
> +        */
> +       writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
> +       writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
> +
> +       /* TPS - supplies vdd_mpu on 4460
> +        * Setup SET1 and SET0 with right values so that kernel
> +        * can use either of them based on its needs.
> +        */
> +
> +       omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
Just a nitpick - the general rule of TPS+OMAP4460 integration is *NOT*
to program SET0 register. this is intended to be at boot voltage
required to be used when reboot due to s/w controlled or h/w watchdog.
> +       omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, volt_mv);
> +
Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

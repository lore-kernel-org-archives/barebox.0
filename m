Delivery-date: Tue, 02 Jun 2026 09:15:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJLU-001VLr-2w
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:15:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJLT-0000WL-FQ
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:15:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3UFvABqyRLHyq+Ki8TSWr+HXfh5hJVjWnX/lBljbVo0=; b=g7IJB7Js26xD9AuspI+bMRsa5h
	ggNZ7U96uQRX3yMxe+N1P+9o6cVRwtMhSj0BeGWlckeN3oqqpzVCoKNQ7e7/46eWS97jNihGhjiKJ
	jPRTW0GYCU16cFJ+mgOv+urH2SHJzcjFggAnfcalPnjPGnZQlLF1EQ0TeCfTWufB1NlHrYcZvLfyF
	oUUeriR1i5xeaokuOdo5K/8+g6a87J8eJnONxtEaVaLzVebvmraL6cLYPgsqugrwGiRPmgBgb2lgb
	C8sdOAe3/ygdsbHUUihL/3UMMzAHp36BQmO1BuaQ8YkNoOqb3g47+xnDT3sMmqS9VVfZtL4DF/ory
	fCtmVYeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJIR-0000000CQhe-0f4t;
	Tue, 02 Jun 2026 07:12:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJIO-0000000CQhE-1mO2
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:12:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUJIM-0000EO-Ql; Tue, 02 Jun 2026 09:12:14 +0200
Message-ID: <661438a9-3b64-488f-9544-c0f41899ec02@pengutronix.de>
Date: Tue, 2 Jun 2026 09:12:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-6-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260602040953.1060278-6-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_001216_535616_7F46A1E8 
X-CRM114-Status: GOOD (  17.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] video: add generic panel-lvds driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 6/2/26 6:09 AM, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> 
> Barebox has no driver for "panel-lvds" compatible DT nodes, which are used by
> all i.MX8M board display pipelines to describe LVDS panels with a panel-timing
> subnode. Without this driver the VPL chain in fsl-ldb terminates before it can
> query video modes, and the LCDIF2 framebuffer driver cannot determine the active
> display resolution, so no framebuffer is allocated and no splash is shown.
> 
> The driver reads one video mode from the panel-timing subnode, enables
> an optional power-supply regulator and enable GPIO on VPL_ENABLE, and
> controls an optional backlight device.  Closely follows the Linux
> drivers/gpu/drm/panel/panel-lvds.c behavior.

We have a driver though for simple-panel. I lean towards extending the
simple-panel driver with the panel-lvds compatible and adding any
feature it might miss there.

AFAICS, there is nothing really lvds specific here. I know Linux has
separate simple-panel drivers, but the barebox simple panel driver is
different: It has no hardcoded panel types, but only parses the DT,
exactly like what you do here.

> +static int panel_lvds_enable(struct panel_lvds *panel)
> +{
> +	int ret;
> +
> +	if (panel->power) {
> +		ret = regulator_enable(panel->power);

regulator_enable(NULL) returns 0, so no need to check here.

> +	panel->enable_gpio = of_get_named_gpio_flags(dev->of_node, "enable-gpios",
> +						     0, &panel->enable_gpio_flags);

Please use the gpiod_ family of functions for new code.


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




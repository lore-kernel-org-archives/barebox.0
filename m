Delivery-date: Fri, 27 Sep 2024 08:14:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4Eu-003IQm-2Y
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 08:14:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su4Ev-0007HN-4l
	for lore@pengutronix.de; Fri, 27 Sep 2024 08:14:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KAZPh5ti/lAbUrcFN8ARTlzU5sQME8bGqALI3+wvwu4=; b=3cGsct+FKj6AOUVBru0iIY8qU2
	Bu7VaZgDPINBUozQrQ0hsyy5yVvft87tcmP1+1aNNtziHAXxmPCYdUY3qBG2Bu++oPxPwkLoXHXgO
	qdlQHtdQrGr0tjiC91qr6SOVY7Sek8yR8hfgxFV+1ikg31I+9gwYN9bgP7JrlrT4eNPM0kLy01BWo
	gL94vSIqo3/8WPWjwR81P6yQqfN5hn7v+MJ48D9IV3JiKURu45oj8VaRJCvJJEwkHndKbAq8KFtSi
	GBzueTN8aq6DzBzimLAIT7EXKYNrBQ1VzWYCvsI9TOuOgUuUsY7yU3kILt9MlghYEULXzW+D8gORw
	s1f/Apqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su4EH-0000000A9mQ-25U8;
	Fri, 27 Sep 2024 06:13:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4EE-0000000A9lO-0OqU
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 06:13:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su4EC-0006yA-PI; Fri, 27 Sep 2024 08:13:20 +0200
Message-ID: <3f1d83ca-4b40-4bcf-9e0f-99f0e0cdd9cb@pengutronix.de>
Date: Fri, 27 Sep 2024 08:13:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-13-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-13-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_231322_177167_00CFBBED 
X-CRM114-Status: GOOD (  32.24  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/13] video: Rockchip: Add VOP2 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 26.09.24 15:15, Sascha Hauer wrote:
> This adds support for the Rockchip VOP2 video core found on the Rockchip
> SoCs RK3566, RK3568 and RK3588. The code is based on the Linux driver
> and has been heavily stripped down for barebox. Support for the cluster
> windows has been removed, also support for YUV modes has been dropped.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below described adjustments:

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # rk3566 HDMI

> +config DRIVER_VIDEO_ROCKCHIP_HDMI
> +        bool "Rockchip HDMI driver"
> +        select VIDEO_VPL
> +        select OFTREE
> +        depends on DRIVER_VIDEO_EDID
> +        depends on DRIVER_VIDEO_DW_HDMI

Turn these two into select? Makes it easier to enable.

> +static int dw_hdmi_rockchip_probe(struct device *dev)
> +{
> +	struct dw_hdmi_plat_data *plat_data;
> +	struct rockchip_hdmi *hdmi;
> +	int ret;
> +
> +	hdmi = xzalloc(sizeof(*hdmi));
> +
> +	ret = dev_get_drvdata(dev, (const void **)&plat_data);
> +	if (ret)
> +		return ret;

We should really phase out dev_get_drvdata. For one, it doesn't
do the same thing as in Linux and those casts are ugly.

Can you use device_get_match_data instead?

> +	ret = rockchip_hdmi_parse_dt(hdmi);
> +	if (ret) {
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(hdmi->dev, "Unable to parse OF data\n");

dev_err_probe here and below would be nice, but I assume it's that way in Linux too?

> +static struct vop2_win *vop2_find_unused_win(struct vop2 *vop2)
> +{
> +	int i;
> +
> +	for (i = 0; i < vop2->registered_num_wins; i++) {
> +		struct vop2_win *win = &vop2->win[i];

I think the logic here is wrong. In a below hunk, we already have the same loop
and now we set i = 0 and restart. That means that the same win can be used twice.

win has struct fb_info as element though, so in that case, the same framebuffer
is registered twice, which leads to an error message on my rk3566.

You may want to turn this into a:

	static struct vop2_win *vop2_next_unused_win(struct vop2 *vop2, int *i)

and then start from i. The i++ in the main loop will take care to advance i,
so no win is reused again.

> +	nvp = 0;
> +	for (i = 0; i < vop2->registered_num_wins; i++) {
> +		struct vop2_win *win = &vop2->win[i];
> +
> +		if (vop2->data->soc_id == 3566) {
> +			/*
> +			 * On RK3566 these windows don't have an independent
> +			 * framebuffer. They share the framebuffer with smart0,
> +			 * esmart0 and cluster0 respectively.
> +			 */
> +			switch (win->data->phys_id) {
> +			case ROCKCHIP_VOP2_SMART1:
> +			case ROCKCHIP_VOP2_ESMART1:
> +			case ROCKCHIP_VOP2_CLUSTER1:
> +				continue;
> +			}

I don't get any overlay framebuffers registered on rk3566. You know what might be the reason?

> +	for (i = 0; i < vop2->registered_num_wins; i++) {
> +		struct vop2_win *win = &vop2->win[i];
> +		struct vop2_video_port *vp = win->vp;
> +		int j;
> +
> +		if (win->type != DRM_PLANE_TYPE_PRIMARY)
> +			continue;

On rk3566, you may end up with vp == NULL here, so you probably
want to add a `|| !vp` into the above if condition.

> +
> +		ret = vop2_register_plane(vp, win);
> +		if (ret)
> +			continue;
> +
> +		for (j = 0; j < overlay_per_vp; j++) {
> +			win = vop2_find_unused_win(vop2);
> +			if (!win)
> +				break;
> +
> +			win->vp = vp;
> +
> +			ret = vop2_register_plane(vp, win);
> +			if (ret)
> +				return ret;
> +		}
> +		vp->nlayers = j + 1;
> +	}
> +
> +	return 0;
> +}
> +

> +struct driver vop2_driver = {
> +	.probe = vop2_bind,
> +	.name = "rockchip-vop2",
> +	.of_compatible = vop2_dt_match,
> +};
> +late_platform_driver(vop2_driver);

Does this have to be a late driver? Can't we let deep probe take
care of the dependency handling?


> diff --git a/drivers/video/rockchip/rockchip_vop_reg.c b/drivers/video/rockchip/rockchip_vop_reg.c

This file is unused.


Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



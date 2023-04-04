Delivery-date: Tue, 04 Apr 2023 14:26:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjfk7-009hw6-R7
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 14:26:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjfk7-0005wS-G1
	for lore@pengutronix.de; Tue, 04 Apr 2023 14:26:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9wkEh8527P8me23A06jqBL384stj0W0cccB7xkvSVqA=; b=mczyAEFW9dXGqTLidkfNoVWjhJ
	EMK2WgEa2Ivr9RMO0BNnGfPB+cRwSLSnAMMtcPKsoQQFxbhFGiuKvkHBwBYx4RKy+FYe0TMD1eWq3
	4RL1BMZiuIDF2Bj+s2G7xnecpgYTHQ8MilHOz55Ro34u2r/SWWEGF/AbW1fQWt5Fo60VlGoTaovIA
	3Gy8+8NzmdM2ii0RZ94+ojWbEzCif6rIIvGFSWviO8w7BU6B059cKYZikzw3XBAFxkUyeaDAVjXUv
	XwaY9wmvaNMGZQfsHaK2ZxFcLyNjmOFwulqAby43DQ4Uked/Nffdo7X85UAzMm6841vHXxru4MRa7
	rOj60HEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfil-001Fy8-1H;
	Tue, 04 Apr 2023 12:25:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfih-001FwR-12
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 12:25:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pjfid-0005Zd-NV; Tue, 04 Apr 2023 14:24:59 +0200
Message-ID: <7a08e414-95d1-0d81-64b4-9772ceb6f680@pengutronix.de>
Date: Tue, 4 Apr 2023 14:24:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Philipp Zabel <p.zabel@pengutronix.de>, barebox@lists.infradead.org
References: <20230403121844.3447836-1-p.zabel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230403121844.3447836-1-p.zabel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_052503_359071_CCF50267 
X-CRM114-Status: GOOD (  20.90  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] video: fb: add optional damage tracking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 03.04.23 14:18, Philipp Zabel wrote:
> Add an optional fb_damage operation that drivers may use to accumulate
> damage on the framebuffer until fb_flush is called. The accumulated
> damage can be used to support partial updates for displays with an
> integrated framebuffer.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/video/fb.c | 6 ++++++
>  include/fb.h       | 9 +++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/video/fb.c b/drivers/video/fb.c
> index 44754065e7d9..6f412d62c434 100644
> --- a/drivers/video/fb.c
> +++ b/drivers/video/fb.c
> @@ -43,6 +43,12 @@ static int fb_close(struct cdev *cdev)
>  	return 0;
>  }
>  
> +void fb_damage(struct fb_info *info, struct fb_rect *rect)
> +{
> +	if (info->fbops->fb_damage)
> +		info->fbops->fb_damage(info, rect);
> +}
> +
>  static int fb_op_flush(struct cdev *cdev)
>  {
>  	struct fb_info *info = cdev->priv;
> diff --git a/include/fb.h b/include/fb.h
> index 15bb74b99576..4e3eb611db48 100644
> --- a/include/fb.h
> +++ b/include/fb.h
> @@ -80,6 +80,13 @@ struct fb_bitfield {
>  
>  struct fb_info;
>  
> +struct fb_rect {
> +	u32 x1;
> +	u32 y1;
> +	u32 x2;
> +	u32 y2;
> +};
> +
>  struct fb_ops {
>  	/* set color register */
>  	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green,
> @@ -87,6 +94,7 @@ struct fb_ops {
>  	void (*fb_enable)(struct fb_info *info);
>  	void (*fb_disable)(struct fb_info *info);
>  	int (*fb_activate_var)(struct fb_info *info);
> +	void (*fb_damage)(struct fb_info *info, struct fb_rect *rect);

const struct fb_rect * ?

>  	void (*fb_flush)(struct fb_info *info);
>  };
>  
> @@ -156,6 +164,7 @@ int register_framebuffer(struct fb_info *info);
>  
>  int fb_enable(struct fb_info *info);
>  int fb_disable(struct fb_info *info);
> +void fb_damage(struct fb_info *info, struct fb_rect *rect);
>  void fb_flush(struct fb_info *info);
>  
>  #define FBIOGET_SCREENINFO	_IOR('F', 1, loff_t)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Fri, 21 Feb 2025 12:07:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlQsP-0055Aa-1x
	for lore@lore.pengutronix.de;
	Fri, 21 Feb 2025 12:07:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlQsO-00085x-7M
	for lore@pengutronix.de; Fri, 21 Feb 2025 12:07:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jeFiOwHmKfuElqeoMGleiGUUGWTW9LUBhlu3h3UvfTc=; b=QbFMuDxJAQ209iafKhJz0z52jV
	mP+0M5VURm8gRhgayxl5HYa/eURWS6iIifhumSa6zh/Z335T/57+/6EzBS69aMR4fYG/pztDZVVCc
	zU6xXdvk/Cv7rLahZxwJxoiPMHp0K4rm4tVUrbe+YrWmwMDTvVL4hm/uzPMFYaPU2BJy1oEXojckK
	CyqYUwmMKuzzqRp/+y2c5B7eqq9uGKPjW2oo5N5nDEk+/knqjGp/ls37ZRS+TaOpSsI5qNIDyXnTH
	ZYhrLERn37X19FORusge7arNFzC+JGfO4ETV1Huz9z7+ozDphg7N/WE81cFaPPdpwjATfj0meNKi7
	YVETJQHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlQro-00000005HKr-0Klz;
	Fri, 21 Feb 2025 11:06:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlQQQ-00000005D5c-2h8p
	for barebox@lists.infradead.org;
	Fri, 21 Feb 2025 10:38:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tlQQN-0003tb-81; Fri, 21 Feb 2025 11:38:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlQQM-0025Mr-2x;
	Fri, 21 Feb 2025 11:38:26 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tlQQM-009ww6-2e;
	Fri, 21 Feb 2025 11:38:26 +0100
Date: Fri, 21 Feb 2025 11:38:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z7hXohthRBbG9XIf@pengutronix.de>
References: <J2TZRS.AUAITN7RW0RJ1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <J2TZRS.AUAITN7RW0RJ1@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_023830_682640_71963080 
X-CRM114-Status: GOOD (  26.43  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

The patch is mangled. Could you send it using git send-email? Using a
web endpoint for b4 would be another possibility if git send-email
doesn't work for you.

The two patches should be sent as one to avoid intermediate breakage
between the patches.

Regards
  Sascha

On Thu, Feb 20, 2025 at 06:39:55PM +0100, Stefano Manni wrote:
> Device file was hardcoded to "nand0.barebox".
> This patch harmonize the signature of
> 
> imx6_bbu_nand_register_handler()
> imx7_bbu_nand_register_handler()
> imx28_bbu_nand_register_handler()
> 
> with the other bbu register functions in order to take
> the devicefile as parameter.
> 
> Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
> ---
> common/imx-bbu-nand-fcb.c | 23 ++++++++++++++++-------
> include/bbu.h | 18 ++++++++++++------
> 2 files changed, 28 insertions(+), 13 deletions(-)
> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index d0261140cf..0d17a7bf6a 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -1219,6 +1219,7 @@ static int imx_bbu_nand_update(struct bbu_handler
> *handler, struct bbu_data *dat
>  int used = 0;
>  int fw_orig_len = 0;
>  int used_refresh = 0, unused_refresh = 0;
> + const char *devname = handler->devicefile;
> 
>  if (data->image) {
>   filetype = file_detect_type(data->image, data->len);
> @@ -1230,7 +1231,12 @@ static int imx_bbu_nand_update(struct bbu_handler
> *handler, struct bbu_data *dat
>    return -EINVAL;
>  }
> 
> - bcb_cdev = cdev_by_name(handler->devicefile);
> + /* Support both boot /dev/nand0.barebox and boot nand0.barebox */
> + devname += str_has_prefix(devname, "/dev/");
> +
> + device_detect_by_name(devname);
> +
> + bcb_cdev = cdev_by_name(devname);
>  if (!bcb_cdev) {
>   pr_err("%s: No FCB device!\n", __func__);
>   return -ENODEV;
> @@ -1432,7 +1438,8 @@ static void imx6_fcb_create(struct
> imx_nand_fcb_bbu_handler *imx_handler,
>  fcb->MetadataBytes = 10;
> }
> 
> -int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx6_bbu_nand_register_handler(const char *name,
> + const char *devicefile, unsigned long flags)
> {
>  struct imx_nand_fcb_bbu_handler *imx_handler;
>  struct bbu_handler *handler;
> @@ -1451,7 +1458,7 @@ int imx6_bbu_nand_register_handler(const char *name,
> unsigned long flags)
>  }
> 
>  handler = &imx_handler->handler;
> - handler->devicefile = "nand0.barebox";
> + handler->devicefile = devicefile;
>  handler->name = name;
>  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  handler->handler = imx_bbu_nand_update;
> @@ -1526,7 +1533,8 @@ static void imx28_fcb_create(struct
> imx_nand_fcb_bbu_handler *imx_handler,
>  fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
> }
> 
> -int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx28_bbu_nand_register_handler(const char *name,
> + const char *devicefile, unsigned long flags)
> {
>  struct imx_nand_fcb_bbu_handler *imx_handler;
>  struct bbu_handler *handler;
> @@ -1540,7 +1548,7 @@ int imx28_bbu_nand_register_handler(const char *name,
> unsigned long flags)
>  imx_handler->filetype = filetype_mxs_bootstream;
> 
>  handler = &imx_handler->handler;
> - handler->devicefile = "nand0.barebox";
> + handler->devicefile = devicefile;
>  handler->name = name;
>  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  handler->handler = imx_bbu_nand_update;
> @@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info *mtd, int
> block, struct fcb_block *fcb
>  return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
> }
> 
> -int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx7_bbu_nand_register_handler(const char *name
> + const char *devicefile, unsigned long flags)
> {
>  struct imx_nand_fcb_bbu_handler *imx_handler;
>  struct bbu_handler *handler;
> @@ -1612,7 +1621,7 @@ int imx7_bbu_nand_register_handler(const char *name,
> unsigned long flags)
>  imx_handler->filetype = filetype_arm_barebox;
> 
>  handler = &imx_handler->handler;
> - handler->devicefile = "nand0.barebox";
> + handler->devicefile = devicefile;
>  handler->name = name;
>  handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
>  handler->handler = imx_bbu_nand_update;
> diff --git a/include/bbu.h b/include/bbu.h
> index 5105d2ac70..087d3ee827 100644
> --- a/include/bbu.h
> +++ b/include/bbu.h
> @@ -98,19 +98,25 @@ static inline int bbu_mmcboot_register_handler(const
> char *name,
> #endif
> 
> #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
> -int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
> -int imx7_bbu_nand_register_handler(const char *name, unsigned long flags);
> -int imx28_bbu_nand_register_handler(const char *name, unsigned long flags);
> +int imx6_bbu_nand_register_handler(const char *name, const char
> *devicefile, unsigned long flags);
> +int imx7_bbu_nand_register_handler(const char *name, const char
> *devicefile, unsigned long flags);
> +int imx28_bbu_nand_register_handler(const char *name, const char
> *devicefile, unsigned long flags);
> #else
> -static inline int imx6_bbu_nand_register_handler(const char *name, unsigned
> long flags)
> +static inline int imx6_bbu_nand_register_handler(const char *name,
> + const char *devicefile,
> + unsigned long flags)
> {
>  return -ENOSYS;
> }
> -static inline int imx7_bbu_nand_register_handler(const char *name, unsigned
> long flags)
> +static inline int imx7_bbu_nand_register_handler(const char *name,
> + const char *devicefile,
> + unsigned long flags)
> {
>  return -ENOSYS;
> }
> -static inline int imx28_bbu_nand_register_handler(const char *name,
> unsigned long flags)
> +static inline int imx28_bbu_nand_register_handler(const char *name,
> + const char *devicefile,
> + unsigned long flags)
> {
>  return -ENOSYS;
> }
> -- 
> 2.25.1
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



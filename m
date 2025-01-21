Delivery-date: Tue, 21 Jan 2025 09:28:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9c9-002ZuP-0G
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:28:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9c9-0000bT-5i
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:28:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E6hLtui1kfzSra0z7b6Rai2S6uIdNRv9tka8oVNy7Gs=; b=AYdfr65CXllXnc4RfahnuWQaPm
	X5dowXhI4r3Sl0v5dJ4G+wsx2ldOeZQw3aS22xwjCWbg/1ZkLkspXL/wL8M8AifRcuzwomqMWoawo
	j/hx3Hz6HrB3RTUDjzJm8cFbaxpfhuIpvhleZvHcTCqwlc/QDW6jt7fj72948dQ9c27iq8Q1uJ5L0
	8RgsoosPBmf/QzMUCpeBwNki3mgc6bqpPsLgHRWiDgaxAGKAlxoHakYnYg5a+gqg+y4eXUj+eDPZm
	4ksfGeimyJ9mxPIU15buokF1jddaV3KIGsap8gLrS9eWYtKtYg66irWxkp0fNkDyFAdjJGHjegMYw
	7RMrT6qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9bk-00000007G7S-2Ijk;
	Tue, 21 Jan 2025 08:27:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9bh-00000007G6M-2NDb
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9bg-0000TA-B4; Tue, 21 Jan 2025 09:27:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9bg-0014m2-0T;
	Tue, 21 Jan 2025 09:27:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta9bg-005pB3-0B;
	Tue, 21 Jan 2025 09:27:32 +0100
Date: Tue, 21 Jan 2025 09:27:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z49adH9-d8oiHrRK@pengutronix.de>
References: <20250116170154.104253-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116170154.104253-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_002733_605685_CA2328A1 
X-CRM114-Status: GOOD (  25.11  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] aiodev: rockchip_saradc: Add reset control support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Thu, Jan 16, 2025 at 08:01:52PM +0300, Alexander Shiyan wrote:
> This adds reset control support for the Rockchip ADC driver.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/aiodev/rockchip_saradc.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
> index 3c5c0e94da..b31804fc39 100644
> --- a/drivers/aiodev/rockchip_saradc.c
> +++ b/drivers/aiodev/rockchip_saradc.c
> @@ -8,8 +8,9 @@
>  
>  #include <common.h>
>  #include <aiodev.h>
> -#include <linux/clk.h>
>  #include <regulator.h>
> +#include <linux/clk.h>
> +#include <linux/reset.h>
>  
>  #define SARADC_DATA	       0x00
>  
> @@ -37,6 +38,7 @@ struct rockchip_saradc_data {
>  	struct clk *pclk;
>  	struct aiodevice aiodev;
>  	struct aiochannel *channels;
> +	struct reset_control *reset;
>  };
>  
>  static inline void rockchip_saradc_reg_wr(struct rockchip_saradc_data *data,
> @@ -51,6 +53,13 @@ static inline u32 rockchip_saradc_reg_rd(struct rockchip_saradc_data *data,
>  	return readl(data->base + reg);
>  }
>  
> +static void rockchip_saradc_reset_controller(struct reset_control *reset)
> +{
> +	reset_control_assert(reset);
> +	udelay(20);
> +	reset_control_deassert(reset);
> +}
> +
>  static int rockchip_saradc_read(struct aiochannel *chan, int *val)
>  {
>  	struct rockchip_saradc_data *data;
> @@ -163,14 +172,20 @@ static int rockchip_saradc_probe(struct device *dev)
>  
>  	rockchip_saradc_reg_wr(data, 0, SARADC_CTRL);
>  
> +	data->reset = reset_control_get(dev, "saradc-apb");

reset_control_get() might return an error pointer. You need to check
that before passing it to reset_control_assert().

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



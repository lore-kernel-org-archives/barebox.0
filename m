Delivery-date: Wed, 12 May 2021 07:38:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghZs-0005Fy-JX
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:38:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghZr-0005Oe-QI
	for lore@pengutronix.de; Wed, 12 May 2021 07:38:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TdCsjvDHZ6xqqr1ESvS6zNEDN9LX/H9xH1ho/3o2c7s=; b=m2X2VMpQHscyuLztyLB2bEZW1
	trfAjRLDabwWeuu6n2vXRXGwBKozpiXJaD44vcOKzDYBq+OeHtX1hVtyHav0e3BVHDMri/BbH3JNc
	JJAQto4BZo99rc5HM2WfS7fsnFLaNRFLT9HCASS4gOc3OYOqVc5+iPtRK1BT4WInkw2AS3pMNgtAS
	OD1AJCEUtVDhsPaYKuc215/Pyui0Xaguq74x4TahbkZzpM5B9EcJc1QiNciUlkxCKhGAXdbmTvbrN
	gFBAQ5QEdkiIA8tPMRfwxdfvBK0EReZxEwIJg2BdHZlX/NCuwfV1XXUKu47xwWqVo2FRT5iASdukG
	0yDlnbrEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghZ6-0025jQ-L2; Wed, 12 May 2021 05:37:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghZ2-0025jA-QE
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oC9QKP14uYEemNGpxN9CXecnEZ1Id1Tc6ZURE1j9GcE=; b=ycQrAeKMPz7K/4++DGEIa+gX2r
 30ejuQC83V8/yXTlOFtuQTQ9+vcUOUMUDUc2ZKfpKRrdkQHrOBRsKhZG+RSOLu6jEvSd244bDOLNH
 L49YCK/4gSGJZ1LH6hbUJcX6slbm4kN0v6+jt0dXd2u7hKDDIkyzJJ6mkvIRazarh3UyIM96VCfF/
 VuJKIgw8f/rWJw9iy6JE1ErK6RtjDxDwz3RFj1rG9ZPzvn0rbw00F3omIslzAZw73cAdmZlkaVlIG
 tCdU015/04VmyoyoZubZzyWXGkLF28oUE+UC4rtpqqWLWJhSJ2nO4bGdwFVbNJ53BI1jEImxcnAXd
 /brGcl6g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghZ0-00A7lv-3g
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:37:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghYy-0005JF-Sm; Wed, 12 May 2021 07:37:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lghYy-0003OP-Je; Wed, 12 May 2021 07:37:40 +0200
Date: Wed, 12 May 2021 07:37:40 +0200
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210512053740.GM19819@pengutronix.de>
References: <20210511201729.63076-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511201729.63076-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:37:32 up 83 days,  9:01, 78 users,  load average: 0.06, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_223742_172167_7234DBC2 
X-CRM114-Status: GOOD (  26.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: use new vendor prefix for MNT Reform2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 11, 2021 at 10:17:29PM +0200, Lucas Stach wrote:
> From: Lucas Stach <dev@lynxeye.de>
> 
> The vendor prefix for MNT Research GmbH in the upstream kernel will be
> mntre (not yet landed, but acked by the maintainer). Switch to this
> prefix in Barebox now to keep bootspec booting working.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/mnt-reform/board.c  | 2 +-
>  arch/arm/dts/imx8mq-mnt-reform2.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
> index e2d628586a50..feb874c0a0ef 100644
> --- a/arch/arm/boards/mnt-reform/board.c
> +++ b/arch/arm/boards/mnt-reform/board.c
> @@ -28,7 +28,7 @@ static int mnt_reform_probe(struct device_d *dev)
>  }
>  
>  static const struct of_device_id mnt_reform_of_match[] = {
> -	{ .compatible = "mnt,reform2"},
> +	{ .compatible = "mntre,reform2"},
>  	{ /* sentinel */ },
>  };
>  
> diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
> index 4e80e00dd143..5a65324b3c75 100644
> --- a/arch/arm/dts/imx8mq-mnt-reform2.dts
> +++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
> @@ -12,7 +12,7 @@
>  
>  / {
>  	model = "MNT Reform2";
> -	compatible = "mnt,reform2", "fsl,imx8mq";
> +	compatible = "mntre,reform2", "fsl,imx8mq";
>  
>  	chosen {
>  		stdout-path = &uart1;
> -- 
> 2.31.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


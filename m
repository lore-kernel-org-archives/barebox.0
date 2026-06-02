Delivery-date: Tue, 02 Jun 2026 10:12:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUKF4-001WHB-27
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 10:12:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUKF3-0008TW-U3
	for lore@pengutronix.de; Tue, 02 Jun 2026 10:12:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vHxO8F77ch/2lG0cBvX8+1tM/55zcqs1ermrooWjGoA=; b=ZC4gzqOdpqM0W0l1KRCBBhZxlL
	8ZcVmutU3KMDZGOSNwSJrX5i5sQydqYwy6PmPC9c5QGXff6wf/b2nC8GqV+Go/DlEzr7Dax3IL+5m
	g8U728sc0wRh+aQEeEiU8991QQcj1txo7cJxBgNLsPbx/bG0MlYJUfyqYYbbpLQxyn8H5js2FI6UK
	qEzcHlR7ixI3cdl+Wc6XzhvIErPHD2H1Np+ooVkSUxco4RswpoD2R6IRHJQoJHAQJkgtIY34m0psb
	vDzqYstz9faI+Iz398s29b3+fcv1ROPEx4dOUl4rkKX18MebpfDlHcxFTYbJX3d72AaBWy8YwIgTl
	wq9MK82A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKEe-0000000CXm8-1eqt;
	Tue, 02 Jun 2026 08:12:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKEb-0000000CXlh-3qGl
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 08:12:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wUKEZ-0008Q7-De; Tue, 02 Jun 2026 10:12:23 +0200
Message-ID: <54467182b9e4f15a1ac068533e73aaac5f21bf46.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>, 
	barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue, 02 Jun 2026 10:12:23 +0200
In-Reply-To: <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
	 <20260602040953.1060278-7-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_011226_011061_0E424093 
X-CRM114-Status: GOOD (  22.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/6] video: imx-lcdif: drain write-combine buffer before
 LCDIF DMA reads pixels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 02.06.2026 um 04:09 +0000 schrieb Johannes Schneider:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
>=20
> The LCDIF framebuffer is allocated as Normal Non-Cacheable (write-combine=
)
> memory.  After the splash command calls gu_screen_blit(), which copies th=
e
> decoded PNG via memcpy() from a cached shadow buffer into the hardware
> framebuffer, writes may still reside in the CPU write buffer and not yet
> be visible to the LCDIF DMA engine.  On hardware this manifests as
> partial or corrupted rendering =E2=80=94 the bottom portion of the splash=
 image
> renders black or shows garbage.
>=20
> Implement fb_damage() to execute a DSB SY barrier after each blit,
> ensuring all pending write-combine writes are committed to DRAM before
> the LCDIF reads the pixel data.
>=20
> Assisted-by: Claude:claude-sonnet-4-6
> Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> ---
>  drivers/video/imx-lcdif.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/drivers/video/imx-lcdif.c b/drivers/video/imx-lcdif.c
> index ae5976c771..8d9b40be0f 100644
> --- a/drivers/video/imx-lcdif.c
> +++ b/drivers/video/imx-lcdif.c
> @@ -20,6 +20,7 @@
>  #include <of_graph.h>
>  #include <video/media-bus-format.h>
>  #include <video/vpl.h>
> +#include <asm/system.h>
> =20
>  /* LCDIF V8 register map */
>  #define LCDC_V8_CTRL			0x00
> @@ -262,9 +263,21 @@ static void lcdif_fb_disable(struct fb_info *info)
>  	clk_disable_unprepare(priv->clk_axi);
>  }
> =20
> +static void lcdif_fb_damage(struct fb_info *info, struct fb_rect *rect)
> +{
> +	/*
> +	 * The hardware framebuffer is Normal Non-Cacheable (write-combine).
> +	 * Writes from the shadow-buffer memcpy may sit in the CPU write buffer
> +	 * and not yet be visible to the LCDIF DMA engine. Execute DSB SY to
> +	 * drain the write buffer to DRAM before the LCDIF reads the pixels.
> +	 */
> +	dsb();

This will probably work in practice, but it doesn't exactly do what the
comment above states. A dsb does not drain the write combine buffers,
it just makes sure that they are drained before the next instruction is
executed.
So if the fb_damage is the last thing that gets executed, this will not
ensure that the writes will actually become visible to external agents.

A more robust way to drain the write combine buffers is to execute a
readback of a memory location within the WC region.

Regards,
Lucas
> +}
> +
>  static struct fb_ops lcdif_fb_ops =3D {
>  	.fb_enable  =3D lcdif_fb_enable,
>  	.fb_disable =3D lcdif_fb_disable,
> +	.fb_damage  =3D lcdif_fb_damage,
>  };
> =20
>  static int lcdif_probe(struct device *dev)



Delivery-date: Thu, 26 Jun 2025 08:37:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUgEb-00BBeI-2F
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 08:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUgEb-0006Og-2y
	for lore@pengutronix.de; Thu, 26 Jun 2025 08:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dWsbm/Q9c9N1sKjBoPC6L6fPr+7C3VsctN7zdW985Y8=; b=RAp84aSfLATDZn5xgKL7sT4s3E
	Glj0cWXEVAgJq+YS8fC2ly95InaLXWY9USRSid/t/oKSyom7oRvxxmyl1kuvyf5tPrgCN49mJNCDh
	GuAjn5hF/3eqyKeQN88gPOiF9d5UeVe23cdMC5lQw2nlSE0kVpvOtRTXqxXX93SG4JT46w/ADRJ+y
	X5kyZ9wIazKv76UYoyN+qivVgoveuOvkbZD8pX97Q6ACGjj3UriCAmwFIuccIzzkrnfnvBXksurSf
	mmdvW2Lo6l1PqVtILiwk/y7HTdZQflFln8rSV3DttIi8SDC/5xWReoQzDrWHFv3uOAYBXDKciKjnO
	+NjzbTkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUgDw-0000000AkmX-2Xeb;
	Thu, 26 Jun 2025 06:36:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUgCJ-0000000AkSm-3l0a
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 06:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uUgCI-00046X-63; Thu, 26 Jun 2025 08:34:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uUgCI-005PBU-00;
	Thu, 26 Jun 2025 08:34:58 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uUgCH-001TiZ-2u;
	Thu, 26 Jun 2025 08:34:57 +0200
Date: Thu, 26 Jun 2025 08:34:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFzqETAvVIcvVT6U@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250619152556.3749995-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_233459_932867_D89F7C13 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/5] ARM: i.MX6QDL: add TZASC1/2 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The subject doesn't match this patch. It doesn't add any defines.

On Thu, Jun 19, 2025 at 05:25:52PM +0200, Marco Felsch wrote:
> On i.MX6 platforms we need to set the bypass mode within the DCD unlike
> the i.MX8M platforms which uses the PBL lowlevel code
> (imx8m_tzc380_init()).
> 
> Add an imxcfg helper to configure the TZASC1/2 to simplify the integration.

This sentence would make for a better subject.

Sascha

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  include/mach/imx/imx6q-tzasc.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 include/mach/imx/imx6q-tzasc.h
> 
> diff --git a/include/mach/imx/imx6q-tzasc.h b/include/mach/imx/imx6q-tzasc.h
> new file mode 100644
> index 000000000000..968b17d5ec3f
> --- /dev/null
> +++ b/include/mach/imx/imx6q-tzasc.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +/*
> + * Per default all clocks are on, except for TZASC1/2 CG11/2, so enable them
> + * before activate the modules (disable the bypass mode).
> + */
> +wm 32 0x020c4070 0xffffffff
> +/* Disable TZASC1/2 bypass */
> +wm 32 0x020E0024 0x00000003
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



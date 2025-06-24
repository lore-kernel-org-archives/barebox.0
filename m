Delivery-date: Tue, 24 Jun 2025 13:19:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gi-00AaEp-1n
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:19:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gh-0001n1-W8
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:19:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oGd+qXk5s69+V7AhUu7rh62fKkmZhLnJb61zHmtplvM=; b=X5KMVNuXEmFTV8Buy8w5+1CxhE
	sAnwFURl33oIjrvgiLPilzLp0iVAqtJm4qytHTIX6P9mvKzhid7eeJK9UPX66n2jYy+pDHlMPVSNc
	3KNs5vNIN9XoP46nKWaO8SDPEOWT9IKCyI1f8QVR+0JFa1mD/U1Vq/vZOezgqFJ3p/qouoQ6AyoAP
	2FO15UafzQeFhLMY/HfWw6PdyliCu/1+6zTabVa+69Rlp9RzxN0LAHp5f3WgFjpykLMsyMwneCVCV
	OMCXg+EnBweVkTulbJT4zXcy03EPLX70IIkgCdIQsAtuZqPs79vqrcrlpUygZwHyiZHzKbTM8jGnP
	PhogTVqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1gJ-00000005Pp3-2Knd;
	Tue, 24 Jun 2025 11:19:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU0yr-00000005Jsx-3dqA
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:34:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU0yq-0006dd-K0; Tue, 24 Jun 2025 12:34:20 +0200
Message-ID: <848a88b5-90b8-4c1b-9b43-cbda1b9aaff8@pengutronix.de>
Date: Tue, 24 Jun 2025 12:34:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250619152556.3749995-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_033421_937540_3FCF4985 
X-CRM114-Status: GOOD (  16.23  )
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

On 6/19/25 17:25, Marco Felsch wrote:
> On i.MX6 platforms we need to set the bypass mode within the DCD unlike
> the i.MX8M platforms which uses the PBL lowlevel code
> (imx8m_tzc380_init()).
> 
> Add an imxcfg helper to configure the TZASC1/2 to simplify the integration.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

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

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




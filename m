Delivery-date: Wed, 06 Sep 2023 16:18:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtM1-0063Hp-3u
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:18:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtLz-0001er-0o
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:17:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K+ompCbbASkmvrQ96pn0UnkZZuNfO1awifR5DWaaEY8=; b=ejcUe1VRChFS/78Z4tLuwVRcol
	E4Dl40eC87xo7Br85gaohVGhAjwC8FLv5sO6SpvnDg0PDUGmS3pm7CwXXxuu/WkrXH3/vcsT7v2cG
	BygTSGiQ8rViG9U3/opYytMjpfB5q67yt1yhyJ/emQ7kG6OdjxclcbSCLuZhGs2UAmCAoo2BSElez
	wgV8WnQB+gbkVrCQMgarHAhd99kuf+Gzjupkizfl3Hsjy5MTeBeCDlv5gKM1R2n0dak5gBmGIDeEI
	aIG1jOwBzpk/JkhWDlk3RZSp8slFT4Ae+N4An2Z0azYTkRP+FbVV0O0ayXr2FAK0tnSWKNDWxraYK
	0IIsW4Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtKx-00ADKX-16;
	Wed, 06 Sep 2023 14:16:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtKu-00ADJE-0F
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:16:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKs-0001G3-U4; Wed, 06 Sep 2023 16:16:50 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKs-004Rlj-Hp; Wed, 06 Sep 2023 16:16:50 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtKs-002GH6-0c; Wed, 06 Sep 2023 16:16:50 +0200
Date: Wed, 6 Sep 2023 16:16:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230906141650.GH492117@pengutronix.de>
References: <20230905142648.2936237-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230905142648.2936237-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071652_109223_726E3DCC 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: romapi: reserve scratch space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 05, 2023 at 04:26:48PM +0200, Ahmad Fatoum wrote:
> We have 32K of RAM at the end of the initial memory, where a
> prebootloader can place data for future use. i.MX8M is currently the
> only user and currently uses it to save the ROM API log, which is
> located in SRAM and is inaccessible by the time barebox proper runs
> in EL2. This area was so far not reserved, which can lead to clobbering
> it when chainloading barebox. Avoid this by requesting the region.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/romapi.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> index 2fd803b0d998..aef0ff0534c9 100644
> --- a/arch/arm/mach-imx/romapi.c
> +++ b/arch/arm/mach-imx/romapi.c
> @@ -10,6 +10,8 @@
>  #include <mach/imx/xload.h>
>  #include <asm/barebox-arm.h>
>  #include <zero_page.h>
> +#include <memory.h>
> +#include <init.h>
>  #include <pbl.h>
>  
>  static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
> @@ -84,6 +86,14 @@ const u32 *imx8m_get_bootrom_log(void)
>  	return NULL;
>  }
>  
> +static int imx8m_reserve_scratch_area(void)
> +{
> +	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
> +				    (ulong)arm_mem_scratch_get(),
> +				    sizeof(struct imx_scratch_space)));
> +}
> +device_initcall(imx8m_reserve_scratch_area);
> +
>  void imx8m_save_bootrom_log(void *dest)
>  {
>  	const u32 *rom_log;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



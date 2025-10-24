Delivery-date: Fri, 24 Oct 2025 12:41:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCFF3-00BHoT-35
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 12:41:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCFF3-0007NT-ED
	for lore@pengutronix.de; Fri, 24 Oct 2025 12:41:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vl7iENst4sv3t1QLngOQ3ZvtbyNPQTMTiJ+Po3o7Fms=; b=FFlBl02xKf4j6VCzGuLZeSZjKE
	i69LLZr3F1+DrI4VK8ntTus2GA68Nc6WJVrojd13wo9USXGzmx1Q36GKF0Dmvcapmp9DnoNE+ALt2
	n1fLQSKea6TE9jEnVRCSuaEX0nfw1OzwRN/osEO2QOcoZHm4saSxLu7wcgK0XEPstWpSSvzC1z5+l
	rTMwMfY9mQnk/LtbrmlLvwDODJlMtARjwu/rYsOdeOE1EmXqS25cHocHrFabJ0speyTat5Di+sKyI
	l7fh7l3SZYY5AFQM9Lxljk15FEEaG7rotWn1iL9qFSODrTKGSBnUR3JM7hh/eT+JIBUihFpu2nDvV
	Rsq/bXHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCFEd-000000093wg-2hv1;
	Fri, 24 Oct 2025 10:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCFEb-000000093wH-2Sbx
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 10:41:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCFEa-0007GT-27; Fri, 24 Oct 2025 12:41:24 +0200
Message-ID: <1e0de0ff-acc8-4bb4-9b30-7e808120966c@pengutronix.de>
Date: Fri, 24 Oct 2025 12:41:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251024075419.1970552-1-f.pflug@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251024075419.1970552-1-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_034125_626667_69D0BD0A 
X-CRM114-Status: GOOD (  15.44  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: fix wrong reference to help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/24/25 9:54 AM, Fabian Pflug wrote:
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I assume k3_authenticate_image is only used on the Cortex-R and
CONFIG_LONGHELP is disabled there and thus the issue was not noticed by
the compiler.

Thanks for fixing,
Ahmad

> ---
>  arch/arm/mach-k3/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
> index 449075ba9b..04bddab6e3 100644
> --- a/arch/arm/mach-k3/common.c
> +++ b/arch/arm/mach-k3/common.c
> @@ -168,6 +168,6 @@ BAREBOX_CMD_START(k3_authenticate_image)
>  	BAREBOX_CMD_DESC("authenticate file with K3 ROM API")
>  	BAREBOX_CMD_OPTS("[-o <out>] file")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
> -	BAREBOX_CMD_HELP(k3_authenticate_image)
> +	BAREBOX_CMD_HELP(cmd_k3_authenticate_image_help)
>  BAREBOX_CMD_END
>  #endif

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




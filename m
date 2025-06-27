Delivery-date: Fri, 27 Jun 2025 18:32:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVC01-00BgFm-34
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 18:32:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVC01-00063G-DW
	for lore@pengutronix.de; Fri, 27 Jun 2025 18:32:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sDv9SSEXsT5FOUf/4yFE5MceU3hyUbtXybKTGLbDVwo=; b=efffcdJudVAGI4a4ILm/t+ZcAk
	+2R/zahWrZ6yopr1Ra43UcwEYqSFuRBDK/Z/xwN9+qgk/zpKqzCTEOH9dyk7WBLPFAUvi44Mdfl68
	pbLviBEvbJJeDe8Y3EF2bRgROKPFfAD6NGxzs1dXP8e9o1Q7Vczdu4vsdMwSeLFuuRc2sJZATCx1p
	/0+qZaMmIo0CarXhgBcQeOaeBtM76SUCZuQoF9F+a7CbqcGDvxmps0cS+S8hst+oiKlxveelohVKz
	oOGIZAEVkyhXdPLU/a9z1fS/v1Lx3I2SZFsPxWkgSAyen4CG6bZOIcr97JPt4PG1v/cwTyaKp8jon
	qifq8M/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBzT-0000000FHTv-0zFJ;
	Fri, 27 Jun 2025 16:31:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBAl-0000000F8RF-2lvW
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:39:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uVBAk-00044R-HA; Fri, 27 Jun 2025 17:39:26 +0200
Message-ID: <c7bdaa03-a78d-4b09-b44d-5c6920dbcfaa@pengutronix.de>
Date: Fri, 27 Jun 2025 17:39:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-11-4b098e8ac7cd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250627-arm-optee-early-helper-v1-11-4b098e8ac7cd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_083927_704366_88A1C169 
X-CRM114-Status: GOOD (  14.19  )
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
Subject: Re: [PATCH 11/14] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/27/25 16:07, Sascha Hauer wrote:
> When barebox starts we have to guess if we have to start OP-TEE or not.
> The current detection works by checking if the first stage passed us a
> device tree pointer. This is not robust and might have security issues
> [1], so replace that with the check with imx6_can_access_tzasc(). If we
> can access the TZASC then we are the first stage and configure it and
> start OP-TEE, otherwise assume that we are chainloaded and continue
> without starting OP-TEE.
> 
> Chainloading barebox with OP-TEE enabled contained several bugs, so it
> never actually worked. This patch fixes them.
> 
> [1] https://lore.kernel.org/70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With below bug fixed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  config MACH_TQMA6UL
>  	bool "TQ tqma6ul on mba6ulx"
> +	select CONFIG_ARM_EXCEPTIONS_PBL if FIRMWARE_TQMA6UL_OPTEE

Drop the CONFIG_

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




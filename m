Delivery-date: Tue, 14 Jan 2025 09:39:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSW-000wlg-0E
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 09:39:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXcSV-0006CJ-HE
	for lore@pengutronix.de; Tue, 14 Jan 2025 09:39:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d/vi/UMHP6QedZ80pdKRp/19gT3tN7XySm315LdcjJs=; b=GZ9VtKUPquYR/R3LEUpeBidPSf
	YvJr5RvWZufuCOMzEuMYDiupYr7Gob6Qde3+ScJrNPLaWgfvElWAz8fMPCRFGPcJfp6CcAOrzfKBU
	YNZ9ta9tCdAsA5JNkySXRfVPgeFTILqq0Mz13k6MTDTk/qFsauR0XprinHceR0wRSb4pf3PqAx/zX
	z9YphH6dJDhqB2Tc8RyCBFVkYHXL3uQwDx75KvVfpLYGHnhIzxrD4hfLnqYKSHd9arbpMCt9D8wDR
	FourfNeD9eXtN3HQbkvZ4pPFjj1L0Kkq3Rqz0ITVyeGW+/kjRg17H5/7ent5C/9ZsyDShln16KA/0
	2k263l1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcS9-00000007quK-2ZOS;
	Tue, 14 Jan 2025 08:39:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcS6-00000007qsH-3iDJ
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 08:39:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXcS5-0005tP-Oe; Tue, 14 Jan 2025 09:39:09 +0100
Message-ID: <8290a410-2d0b-4d0e-a5a6-fefcfac2c6c7@pengutronix.de>
Date: Tue, 14 Jan 2025 09:39:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250107143740.16903-1-jmaselbas@zdiv.net>
 <20250107143740.16903-4-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107143740.16903-4-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_003910_926102_6FF03369 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/6] pinctrl: Add sun50i-a64 pinctrl driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 07.01.25 15:37, Jules Maselbas wrote:
> sunxi pinctrl driver, adapted from Linux, is split in two parts:
>  - pinctrl-sunxi.c that implements gpio, pinctrl and pinmux functions
>  - pinctrl-sun50i-a64.c that declare sun50i pins and their functions.
>    This file only require minor adaptations and be easily copied from Linux.
> 
> The pin functions are needed for uart, SD/MMC, and likely for other
> controllers too.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>]

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> v1->v2:
>  - removed `!IS_ENABLED(CONFIG_PINCTRL)` (Ahmad)

Sascha suggested that of his own volition ;)

> +	func_name = sunxi_pinctrl_parse_function_prop(np);
> +	if (!func_name) {
> +		dev_err(dev, "%s: missing 'function' property\n", np->full_name);

Nitpick: %pOF

> +		return -EINVAL;
> +	}

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



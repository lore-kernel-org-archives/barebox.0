Delivery-date: Mon, 06 May 2024 08:22:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rk5-005cWn-0U
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 08:22:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3rk3-0003Oe-MD
	for lore@pengutronix.de; Mon, 06 May 2024 08:22:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ouIRPlptvar19UaTgKIHJkwpAfmhvocWXmBSvhS+tJY=; b=jwOgdCQfAcuR96WcR+hEUGQe4/
	2mrzTrBatg5oCnnjrYGJxZvUAw3llKO87VlsNTibIGJ52YbfrAmJHz1OrRpe7TH6sH8Gy3tn44yQW
	5XJe5SEcY79EUiWywk2hreeDhWWnOyyBXgfICZ8ON8s+Pnd+wB+3cJUsM4x+OD7UsvIMhPokcWUUn
	2KNV/B8BXXdyJImiwi50aE4CgxAfNr2EQbWCdCWVRXAYV/p/3V5JrSiK4xHiDNivs1jTdcERJ1Bvn
	w502UPgpJuE1Ny0BW6rvWXhAdsyf0hQfS+G6rzAvstSf8Ajs0CuA33RTcEpiqYqxbK5kzzwi7M905
	cgSWN1cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rja-00000006Hgf-2hrP;
	Mon, 06 May 2024 06:21:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rjX-00000006Hfn-1cvd
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 06:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s3rjU-0003F9-9O; Mon, 06 May 2024 08:21:52 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s3rjT-00GD9x-Sy; Mon, 06 May 2024 08:21:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s3rjT-00EWhK-2e;
	Mon, 06 May 2024 08:21:51 +0200
Date: Mon, 6 May 2024 08:21:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zjh2_-3fgZBpcJ9i@pengutronix.de>
References: <20240503100923.1222659-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240503100923.1222659-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_232155_578664_2488ACBE 
X-CRM114-Status: GOOD (  18.80  )
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
Subject: Re: [PATCH master] ARM: i.MX9: tqma93xx: handle unknown form factors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, May 03, 2024 at 12:09:23PM +0200, Ahmad Fatoum wrote:
> GCC warns that fdt may be uninitialized. Fix that by treating unknown
> variants as the CA variant. CA was chosen for no particular reason.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/tqma93xx/lowlevel.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boards/tqma93xx/lowlevel.c b/arch/arm/boards/tqma93xx/lowlevel.c
> index 8d89ee530ff8..66991fc6b03b 100644
> --- a/arch/arm/boards/tqma93xx/lowlevel.c
> +++ b/arch/arm/boards/tqma93xx/lowlevel.c
> @@ -89,6 +89,9 @@ static noinline void tqma93xx_continue(void)
>  	case VARD_FORMFACTOR_TYPE_LGA:
>  		fdt = __dtb_z_imx93_tqma9352_mba93xxla_start;
>  		break;
> +	default:
> +		pr_warn("Unknown formfactor: 0%x. Assuming connector\n", formfactor);
> +		fallthrough;

tqma93xx_get_formfactor() always returns one of the values handled in
this switch/case, so this will never trigger. If gcc mourns about it
then adding the default: is enough, no need to add a message.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



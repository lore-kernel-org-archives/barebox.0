Delivery-date: Wed, 22 Apr 2026 09:43:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSFW-00F1GG-1w
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 09:43:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSFW-0000Ga-0p
	for lore@pengutronix.de; Wed, 22 Apr 2026 09:43:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f14OCOYACv1MfVG3O683tXA2KfwyJ51SeoZYDrSwKfs=; b=BcNFldQK5semKq/IeHXwEgwaXw
	3r7VF2hZyPT6tQ3NoafBcb2VKKy3yuycKyLKUT1JPazFyZ5Z4jDKiuicuBWkRnwr+nxEPDDmSGL0z
	fdnuzSH/6HMsXQUe6dtZ7NOv2u63EvTuLb09+6Ihd13UCbCBGaHNS8Hkcl8U3nC5JfQWU46IjY9jW
	BVmzOODu0MbO6NiHGUcpXLSUL3HNxM7VQh+7L//7CAcPOc4LAxY2pwiI+qmfQunqk7LXy0ISjPtAf
	cfC+V0lLfzZHRie3Ktlv0JSsb1bHUpa0BjKGJMnwhma2f2rktf4WNIoMmiz+irTXL/dinhG/LN9a9
	xNT8/d0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSEy-00000009jsV-0CNf;
	Wed, 22 Apr 2026 07:43:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSEv-00000009jsA-1kmc
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 07:43:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSEt-00006c-IV; Wed, 22 Apr 2026 09:43:15 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSEt-006dBP-1E;
	Wed, 22 Apr 2026 09:43:15 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wFSEt-00000008JcM-1Bkc;
	Wed, 22 Apr 2026 09:43:15 +0200
Date: Wed, 22 Apr 2026 09:43:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <aeh8E8taV-bxPoK_@pengutronix.de>
References: <20260415-v2026-03-0-topic-soc_bin_id-v2-0-81fab6ba5de0@pengutronix.de>
 <20260415-v2026-03-0-topic-soc_bin_id-v2-2-81fab6ba5de0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415-v2026-03-0-topic-soc_bin_id-v2-2-81fab6ba5de0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_004317_480573_9F479CB9 
X-CRM114-Status: GOOD (  29.46  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

On Wed, Apr 15, 2026 at 01:10:22PM +0200, Fabian Pflug wrote:
> With the establishment of global.soc_uid_hex, there is no need to look
> for the serial number and reverse it.
> 
> Also some SoC's will have 128-bit UID's, so the hint to 64-bit is not
> correct and should be removed.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 2e4d1ac80a..cb77d0d5b6 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
>  	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
>  	string "CSF Unlock UID"
>  	help
> -	  Device specific 64-bit UID required to unlock the field-return
> +	  Device specific UID required to unlock the field-return
>  	  feature. This value must match the per device UNIQUE_ID fuses.
>  
>  	  The below example shows the expected format. The UNIQUE_ID is
> -	  printed during boot by barebox:
> -	    i.MX___ unique ID: 7766554433221100
> -	  or it can be queried by Linux via:
> -	    - cat /sys/devices/soc0/serial_number
> -	      7766554433221100

I don't think we should remove this. For some people it might be more
convenient to read the SoC UID from Linux or to parse it from the
barebox console log.

> -
> -	  So this value have to be set:
> +	  stored in $global.soc_uid_hex, but must be split into bytes.
> +	  The soc_uid_hex 0011223344556677 becomes:
>  	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77

By using soc_uid_hex we no longer have to reverse the byte order, but
still have to reformat it (split into bytes, add 0x and comma). I think
this little convenience gain is not worth the change really.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



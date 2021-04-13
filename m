Delivery-date: Tue, 13 Apr 2021 09:40:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDf6-00074C-KD
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:40:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDf5-0002hS-Rb
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:40:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ENAtyg1q+E04vPPmUEM4hLOOHKNWpuEcxBOHX/F8POQ=; b=FMHJziGl7gKV4FXd8Us0V6/oy
	roSDaZ9n5OknEZqiJO2Xhga5PChYhUqP9B7DcD6m7bmothkH5GnrhzxU214Q5H7Iob/rmquQ2NOzT
	qDM1xvGJNle/XoL5tK2zUMlP79Xqk0qsuJY8pr3g9P8vcXjBmgbMX85B6XYtwzpPIOlBhbdNgTr2C
	4cHMWweh1SakU/gnuTcAxMD/4Js612kNVBMrnDd9156Q+Hd3zeTjLCGsYi+IswM2ZzUyRH9H3f24f
	n/3fhoQlAHTH737eeDWxSQMeoQDTr+I67PybB18mcAM4cgkWIOlSeHIziuG3o0nXCO+IWlkkXJCK/
	R/j8YlaWQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDdx-008WfV-3j; Tue, 13 Apr 2021 07:39:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDdo-008WfI-Uv
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=yft5COJYelgwVIF6rMMiLrkX4R0hv77lWthrhEG3+EA=; b=atGStgFo/cTvMyKcPB8pm24NGi
 D2/HqD9myjZonQD8qhsaz5ysNDuWbrFcX1EtlfF+prVYTUaiTDqulqc1yVu/m6XNZqo89D+Psyc+Z
 gxCDcooBRe4GRUylc3YZUaJI1yZzmRGmbn+omaYJ4OTSXKr9CwnABXGUMwDUforiZW8cDbDT5hPK0
 JKO1+hOz7lkbVHj8hCKpT6iiANt1bgUbPe+L9lojjbZtJWlN1NSNycX0kBmSerOdhf6EluUMlrBH9
 upmjZDSx3BTYzqlooj9qeWpkRUWWjdK6BPDPf9OL3jD8HEb2qXWhrODhLIYpTMqXZ6Bfu6Gy7Dbme
 jQgMHN1w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDdm-006o9A-89
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:39:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDdk-0002a5-QL; Tue, 13 Apr 2021 09:39:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDdk-0004MJ-GV; Tue, 13 Apr 2021 09:39:16 +0200
Date: Tue, 13 Apr 2021 09:39:16 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210413073916.GI19819@pengutronix.de>
References: <20210412222416.25723-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412222416.25723-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:39:08 up 54 days, 11:03, 88 users,  load average: 0.02, 0.11, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_003918_309646_B0D460B8 
X-CRM114-Status: GOOD (  26.14  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX7/8M: reliably detect serial boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 12:24:16AM +0200, Ahmad Fatoum wrote:
> While not documented in the reference manual,
> info->boot_device_type was observed to equal 15 when:
> 
>  - SoC is strapped for serial boot
>  - SoC falls back into serial boot after failed strapped primary
> 
> The latter went so far undetected. Fix this.
> What's not tested is:
> 
>  - SoC falls back into serial boot after failed primary from fuses
>  - SoC warm resets directly into serial boot because of BMODE
> 
> If those works, we could drop the imx6_bootsource_serial check at the
> beginning, but for now, just leave it be.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index c3cf4b85ff25..e9b5a4944390 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -506,6 +506,9 @@ static void __imx7_get_boot_source(enum bootsource *src, int *instance,
>  	case 5:
>  		*src = BOOTSOURCE_NOR;
>  		break;
> +	case 15:
> +		*src = BOOTSOURCE_SERIAL;
> +		break;
>  	default:
>  		break;
>  	}
> -- 
> 2.29.2
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


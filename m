Delivery-date: Wed, 04 Oct 2023 09:44:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwY8-004chN-0y
	for lore@lore.pengutronix.de; Wed, 04 Oct 2023 09:44:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnwY6-00069R-Eb
	for lore@pengutronix.de; Wed, 04 Oct 2023 09:44:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GMlEcwkhH8lazAQOR6OvJ9dSJ4guiPkb2kx4NAxViIU=; b=XeiTzC0CmB/5rmBMDnAMYuYY+v
	1QARDFVg+7CbeeeHRDeNmvFLp9HQCUOVLWfDvbnsimANR9km5mpu8FBBVUX368lKt7vS9WWaIqfxU
	HEQf34udqy5/pqPavKrsC4udL50NQK5bQcghY7dM+wPgcqr3DVQLC86Du1SZg4msnLZWiUC9opmn5
	fD7+y8UjHPtosnXZDeJMVdGOOPM4WfJv4hTavFAJA3gFSgOpA1yERAV8VwBBuF+Cj8WLqWPQjDeRX
	lewpg2H1UdCxbeBGZvKy2p2iGtdzuia3iLHI7UZxe4aqAZVh2ipixVEposuQV1P784NDSuoaLlXxE
	Ihg7wg3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwWw-00GeWX-33;
	Wed, 04 Oct 2023 07:42:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwWs-00GeV3-2Q
	for barebox@lists.infradead.org;
	Wed, 04 Oct 2023 07:42:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwWq-0005z7-GZ; Wed, 04 Oct 2023 09:42:44 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwWq-00AyTo-4F; Wed, 04 Oct 2023 09:42:44 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qnwWq-00Cit5-20; Wed, 04 Oct 2023 09:42:44 +0200
Date: Wed, 4 Oct 2023 09:42:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231004074244.GF235829@pengutronix.de>
References: <20231002092043.3097587-1-a.fatoum@pengutronix.de>
 <20231002092043.3097587-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231002092043.3097587-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_004246_788423_080CB340 
X-CRM114-Status: GOOD (  19.81  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX: fusemap-ocotp: add sec fuses for i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 02, 2023 at 11:20:42AM +0200, Ahmad Fatoum wrote:
> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> For i.MX8M devices, the security config 1 fuse was moved to 0x470[25].
> Additionally, all devices except the i.MX8MQ have the DIR_BT_DIS fused
> within the factory, see [1].
> 
> [1]: https://community.nxp.com/t5/i-MX-Processors/DIR-BT-DIS-and-others/m-p/1220615/highlight/true#M168363
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/mach/imx/ocotp-fusemap.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
> index 6ba794c16619..02ac5d8e73bb 100644
> --- a/include/mach/imx/ocotp-fusemap.h
> +++ b/include/mach/imx/ocotp-fusemap.h
> @@ -53,5 +53,9 @@
>  #define OCOTP_GP1			(OCOTP_WORD(0x660) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define OCOTP_GP2			(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  #define OCOTP_PAD_SETTINGS		(OCOTP_WORD(0x6d0) | OCOTP_BIT(0) | OCOTP_WIDTH(6))
> +/* i.MX8M moved the security related fuses */
> +#define MX8M_OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x470) | OCOTP_BIT(25) | OCOTP_WIDTH(1))
> +/* Only MX8MQ requires fusing of DIR_BT_DIS */
> +#define MX8MQ_OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x470) | OCOTP_BIT(27) | OCOTP_WIDTH(1))

You can merge this into the patch using the defines.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



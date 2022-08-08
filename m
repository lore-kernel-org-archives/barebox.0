Delivery-date: Mon, 08 Aug 2022 15:12:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2YU-00GCuH-7a
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:12:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL2YV-0000Ss-8T
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:12:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fNziw8UR5HhdL9ZhTLbi+Qs7MavTpfgAx5/WTHx4Zf8=; b=oWdW3LXXKt23zp2PzsATC8ZYZf
	oQer2trVIVLcrZ5pdXF70PsOXLiTXSjJMCXhFHN7IwzH/bdIxlzbroQ9JW6wES96wzi7/2mmf5KkW
	hoKa698Fd8qkCqPFb2Gp0EVlCZTLrBUwU6EN04mOQDFNjz9i6WBmBNcM+/BX9YK6lH8IL9ILZoq28
	FtSVnWLIdNwsAdZ8mWzM1lp+Smn/32I+uhj3PBfLYJbZj1qqnhnP+3LzyAnMo3k65QjtvmdIln/fK
	WT0pEtxdm6cUtLnPV4s3FrfNVIjZak5dC7AAoWE6RprknExDEWLCqKN3LacWeyYms6950wfKeKqCw
	m1w44E4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2X6-00DycO-MR; Mon, 08 Aug 2022 13:11:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL2Ww-00DyX0-2O
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:10:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Wu-0008KI-Dr; Mon, 08 Aug 2022 15:10:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL2Wu-0003Fj-4m; Mon, 08 Aug 2022 15:10:48 +0200
Date: Mon, 8 Aug 2022 15:10:48 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808131048.GL31528@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_061050_152923_43D4A0C3 
X-CRM114-Status: GOOD (  18.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4 1/8] scripts: socfgpa_xml_to_config: document pincfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 01, 2022 at 02:07:01PM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  scripts/socfpga_xml_to_config.sh | 8 ++++++++
>  1 file changed, 8 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/socfpga_xml_to_config.sh b/scripts/socfpga_xml_to_config.sh
> index 3bb0dd283b..1e6056cfb4 100755
> --- a/scripts/socfpga_xml_to_config.sh
> +++ b/scripts/socfpga_xml_to_config.sh
> @@ -74,6 +74,14 @@ pinmux_config() {
>      # FIXME: Either find solution how to parse these values too or replace
>      # script with something that goes more in the direction of a programming
>      # language
> +    # 21:19 RTRIM
> +    # 18:17 INPUT_BUF_EN
> +    #    16 WK_PU_EN
> +    #    13 PU_SLW_RT
> +    #  12:8 PU_DRV_STRG
> +    #     5 PD_SLW_RT
> +    #   4:0 PD_DRV_STRG
> +
>      DEDICATED_FIXME="[arria10_pincfg_dedicated_io_bank] = FIXME,
>      [arria10_pincfg_dedicated_io_1] = FIXME,
>      [arria10_pincfg_dedicated_io_2] = FIXME,
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



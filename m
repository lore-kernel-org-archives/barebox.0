Delivery-date: Tue, 02 Jan 2024 12:52:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKdJt-000Y1K-1v
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:52:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKdJs-0000BH-J2
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:52:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h+Izql1gtSMZ3B/XNPZZoC56b9UZ1VM3vZeoNy51TbM=; b=vCVKljre4+i1qCmQfLo2y0K77d
	vlaLSm7NXk+Wx73+bz1/GRFAQPekkjWgSGV+BV12DXu+uTie6nJQ7oXyuXojSqqKHro3cQd8RmJxB
	X6LpeY9+O03loR5U4yFigg3FPG3c9+HOnW/vUTQh9Or3+/3Ki5+79gtzwnGAd3JzrLoDtbGHCFtrm
	TyKqlK6HfxKBy2Hg4SHiQqT7zZdyPwGqVDOPqy65LlWVmxeVQy/eDQZL1mSeVTsWDjD/RpxE4N662
	lofCSjnSveUWzjAPuPv5fr5mfbgp1mI1KEFJfKv2F9RyNFPX/U+9azxa/TdTP9wwUIABsqZFBTRbC
	i/GTqx9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKdIr-007tCt-0i;
	Tue, 02 Jan 2024 11:51:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKdIn-007t9V-0x
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:51:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdIl-0008PQ-8D; Tue, 02 Jan 2024 12:51:19 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdIj-003Ag5-Ow; Tue, 02 Jan 2024 12:51:18 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKdIk-009uIR-Pf; Tue, 02 Jan 2024 12:51:18 +0100
Date: Tue, 2 Jan 2024 12:51:18 +0100
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20240102115118.GE1318922@pengutronix.de>
References: <20231218-doc-missing-empty-lines-v1-1-d18280ebafba@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231218-doc-missing-empty-lines-v1-1-d18280ebafba@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_035121_331620_512A45DE 
X-CRM114-Status: GOOD (  20.60  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] doc: user: barebox: add missing empty lines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 18, 2023 at 10:58:07AM +0100, Stefan Kerkmann wrote:
> These where missed in b90e9ad8f7922b6a694c119017168bea1b6e16a1 and thus
> didn't render the code blocks.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  Documentation/user/barebox.rst | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks

Sascha


> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index ea4db28d08..43e5a631ba 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -219,6 +219,7 @@ Another option is to generate a FIT image containing the generic DT image and a
>  matching device tree with ``mkimage``:
>  
>  .. code-block:: console
> +
>    sh: mkimage --architecture arm \
>        --os linux \
>        --type kernel \
> @@ -233,6 +234,7 @@ This FIT image can then be loaded by U-Boot and executed just like a regular
>  Linux kernel:
>  
>  .. code-block:: console
> +
>    U-Boot: tftp $fit_addr barebox-dt-2nd.fit
>    U-Boot: bootm $fit_addr
>  
> 
> ---
> base-commit: ed433cbef99860b39dfbc2d36983026cced54583
> change-id: 20231218-doc-missing-empty-lines-12a48d7dba82
> 
> Best regards,
> -- 
> Stefan Kerkmann <s.kerkmann@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



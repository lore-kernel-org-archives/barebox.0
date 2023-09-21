Delivery-date: Thu, 21 Sep 2023 10:05:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEgZ-005dlA-1q
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 10:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjEgW-0002a3-FG
	for lore@pengutronix.de; Thu, 21 Sep 2023 10:05:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1TK70/XJKAUAopO2frXve5YRXyj8TsWHEloXBRI2frQ=; b=y/T36nsok8EuslLNgo6Lj82R6c
	3A66bjAf/AfJG8Qyd9d0EZhv4WboN/yaMge1o4/SivMdcHGLsem2QOuqTnvtrOaq4+MATm/I1aUEc
	tAxR4YFAet6cypmIyrePDI1qE222zTxW9fGf8535prwYyDe8ptxeGYBO4hyweJRnWKVslnOxLgea6
	M1GW/MPRX0drokO/qPBvClzaINjJoeQ8qTZuXAO7fq6SX1XGO91nvgDKxXiySrf4pnQ3ypfiey+bD
	BsgwLEEEfOSnatZF0wWybVa1zTvzr5QFBfDGZsNNaVrW4mF9PjJLPyaoAXrVSMYmO5BT+ZbftABFN
	huZugzRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEfS-005Rcn-0D;
	Thu, 21 Sep 2023 08:04:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjEfP-005Rbl-2b
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 08:04:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEfO-0002CA-L5; Thu, 21 Sep 2023 10:04:06 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEfO-007sIA-8e; Thu, 21 Sep 2023 10:04:06 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjEfO-00Af8T-6P; Thu, 21 Sep 2023 10:04:06 +0200
Date: Thu, 21 Sep 2023 10:04:06 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921080406.GY637806@pengutronix.de>
References: <20230918162033.19642-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918162033.19642-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_010407_844296_C8C9B8A5 
X-CRM114-Status: GOOD (  22.00  )
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
Subject: Re: [PATCH] Documentation: user: introduction: suggest b4 shazam
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 18, 2023 at 06:20:33PM +0200, Ahmad Fatoum wrote:
> b4 am requires manual application of the patch. b4 shazam -M fetches the
> series into a branch (FETCH_HEAD) and has a useful heuristic for when
> the base the patch applies on is unknown.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/introduction.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/introduction.rst b/Documentation/user/introduction.rst
> index e7388b8bc95e..25fed6c53c4d 100644
> --- a/Documentation/user/introduction.rst
> +++ b/Documentation/user/introduction.rst
> @@ -29,11 +29,11 @@ http://lists.infradead.org/mailman/listinfo/barebox/
>  Mails sent to the barebox mailing list are archived on
>  `lore.barebox.org <https://lore.barebox.org/barebox/>`_.
>  
> -Patch series sent there can be fetched with `b4 <https://pypi.org/project/b4/>`_ ::
> +Patch series sent there can be applied with `b4 <https://pypi.org/project/b4/>`_ ::
>  
>     git config b4.midmask https://lore.barebox.org/%s
>     git config b4.linkmask https://lore.barebox.org/%s
> -   b4 am https://lore.barebox.org/$messageid # replace with link
> +   b4 shazam -M https://lore.barebox.org/$messageid # replace with link
>  
>  There's also an IRC channel, which is
>  `bridged to Matrix  <https://app.element.io/#/room/#barebox:matrix.org>`_:
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



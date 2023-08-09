Delivery-date: Wed, 09 Aug 2023 07:41:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTbwz-00DMWX-Us
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 07:41:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTbwy-0000g6-9i
	for lore@pengutronix.de; Wed, 09 Aug 2023 07:41:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C+p50uDezZ+FQZZTDmef9z9US3DL2UhnsAd/MWv3M0I=; b=rM0JO95/Js4sifg6TeU5m3/JDK
	gvwIJw4k97Mte6MVn0Tb7bJUOFtcS+d+Ag7st3OzNIDXbrGNG/2AlmNqaJGZMKNzce9jFWRrJTnnm
	1/8r+7m0Wl1Od8u1vJwswGN5Ab9Eoctv2qFY9/bI8Y4aaghHJsEWRX5iGn13dmC8/ukfeUMJmbwIO
	IEOIiO5O0qqXMKn8qeJvZEMv/oKgkOUqghinKnk1wjpeTnbCDPww6t9mjoV2DomlYtnbP0zN6C0t4
	eHJVvsRHaf5yqPOYKaMKypW7uBt/FX+VUjZbiBYzDOV77ENGA2XEEMEI3yoqpDYKCb0dWjO9Tef0v
	+JJCRG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTbvb-0045Nv-2U;
	Wed, 09 Aug 2023 05:40:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTbvY-0045NZ-0d
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 05:40:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTbvR-0000OL-C6; Wed, 09 Aug 2023 07:40:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qTbvR-0006CM-4f; Wed, 09 Aug 2023 07:40:05 +0200
Date: Wed, 9 Aug 2023 07:40:05 +0200
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230809054005.GQ26314@pengutronix.de>
References: <20230808092617.2037996-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230808092617.2037996-1-rhi@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_224012_236720_8264E7F7 
X-CRM114-Status: GOOD (  21.57  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] doc: dt-bindings: barebox,environment: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 08, 2023 at 11:26:14AM +0200, Roland Hieber wrote:
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> 
> ---
>  .../devicetree/bindings/barebox/barebox,environment.rst         | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> index 40239f424ac0..67d1173b2fdc 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> @@ -23,7 +23,7 @@ the path to the environment. Supported values for <type>:
>    be the label for MTD partitions, the number for DOS
>    partitions (beginning with 0) or the name for GPT partitions.
>  
> -If the *environmnet* is located in a GPT partition, use
> +If the *environment* is located in a GPT partition, use
>  ``6C3737F2-07F8-45D1-AD45-15D260AAB24D`` as partition type GUID.
>  
>  The file-path is the name of a file located in a FAT filesystem on the
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



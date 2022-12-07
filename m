Delivery-date: Wed, 07 Dec 2022 08:01:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oQY-00DLRB-MD
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 08:01:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oQX-0000Dx-MI
	for lore@pengutronix.de; Wed, 07 Dec 2022 08:01:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XmC1mG9iZvJI+flE//hz4aFQNKIMaxsbm3JUYrUaaKA=; b=m+lqEVA+cmP72kUisynGxRY+8t
	5aLhAkC3QSKBUwcrhvYRxjYRZ9X3FUO9PUQnK3HFWpESuTgjQJDLmZXpHC6JRpLb9a0ekFNQuep7E
	j0B/Qn1cN9x6WdKlrV4j+TpkzlDPdiDa5q+S8wSRvRvhGAIs77uxslKbTXW5OSN/QSEkBbXBMdqMJ
	+T31c8c2EdwTkXzZUlnfYGFfS4RD/+bGK1s8BFBBzESctSVReQZHApUY9KxItxbO+BV0g/o4W68b4
	2/N3nwK90A2DTLEWnFj3X/mzrFATaD4Opz9A4KlXlOe/7cZm202HNQ4IoWVfeUcKeEMTT2mlcn5Xq
	DmlRJFSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oPL-00DcmB-Im; Wed, 07 Dec 2022 06:59:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oPG-00DckM-F4
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 06:59:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oPF-0007vC-7f; Wed, 07 Dec 2022 07:59:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oPE-0000S3-HR; Wed, 07 Dec 2022 07:59:48 +0100
Date: Wed, 7 Dec 2022 07:59:48 +0100
To: Thorsten Scherer <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207065948.GB29728@pengutronix.de>
References: <20221205211054.zi77zva7xns54kbc@NB142.eckelmann.group>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205211054.zi77zva7xns54kbc@NB142.eckelmann.group>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_225950_520663_6D7F2623 
X-CRM114-Status: GOOD (  21.01  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: devicetree: bindings: Fix broken ref
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 10:10:54PM +0100, Thorsten Scherer wrote:
> Fixes: 594d5d58af ("Documentations: devicetree: bindings: document watchdog-priority")
> Fixes: 21dda946e7 ("restart: do restart-priority OF parsing in restart_handler_register")
> Signed-off-by: Thorsten Scherer <t.scherer@eckelmann.de>
> ---
>  Documentation/devicetree/bindings/power/restart.rst     | 2 +-
>  Documentation/devicetree/bindings/watchdog/watchdog.rst | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/devicetree/bindings/power/restart.rst b/Documentation/devicetree/bindings/power/restart.rst
> index 42b87f7e9c..9a84c4f224 100644
> --- a/Documentation/devicetree/bindings/power/restart.rst
> +++ b/Documentation/devicetree/bindings/power/restart.rst
> @@ -7,7 +7,7 @@ Optional properties:
>  
>  - ``restart-priority`` : Overrides the priority set by the driver. Normally,
>    the device with the biggest reach should reset the system.
> -  See :ref:`_system_reset` for more information.
> +  See :ref:`system_reset` for more information.
>  
>  - ``barebox,restart-warm-bootrom`` : Restart will not cause loss to non-volatile
>    registers sampled by the bootrom at startup. This is a necessary precondition
> diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.rst b/Documentation/devicetree/bindings/watchdog/watchdog.rst
> index 415a4520f4..753dc7e35f 100644
> --- a/Documentation/devicetree/bindings/watchdog/watchdog.rst
> +++ b/Documentation/devicetree/bindings/watchdog/watchdog.rst
> @@ -7,4 +7,4 @@ Optional properties:
>  
>  - ``watchdog-priority`` : Overrides the priority set by the driver. Normally,
>    the watchdog device with the biggest reach should reset the system.
> -  See :ref:`_system_reset` for more information.
> +  See :ref:`system_reset` for more information.
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



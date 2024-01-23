Delivery-date: Tue, 23 Jan 2024 14:19:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSGgR-00DUav-2J
	for lore@lore.pengutronix.de;
	Tue, 23 Jan 2024 14:19:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rSGgS-0001Pj-Df
	for lore@pengutronix.de; Tue, 23 Jan 2024 14:19:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=72jnuj8PKQ1ZTbLklTDphjK4yzWPvV7qe6a74b1dgyo=; b=sFsGaeUzWxV1ZEN8Ws27bXntBf
	pw2HjGa77QzhBzA3kDlAPJAxWWKEzN2W2Yjxqxdti4Zi++VrLcr9R3bxhoxmSexnPdQQrS/LLtqd2
	kZNoKX1v9yrIRJs1orFMt8EHqvZcqMe+Q7QmGGBtpkPf/jEzo7ZhdhLvVlFaQZm4w3NZpaR5H3YTK
	QcSI9Ll6ZbFpFWAk7ZwEIfG6aya1nqOVSofHEiWVzQhaUT76k6kMdWjDEntpOPTWKpsnCDx5g0Lp5
	YAzjgRFaREcGXnEnQ2D9wgQ+Te7/bZ+0AWZpfug18tLRFrTLla9FdBk2o3Vn8Cvp8UlXBmVqaoUAT
	PcWwZeAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSGfD-00GZIX-1O;
	Tue, 23 Jan 2024 13:18:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSGf9-00GZDS-1r
	for barebox@lists.infradead.org;
	Tue, 23 Jan 2024 13:18:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSGet-0001EX-PP; Tue, 23 Jan 2024 14:17:43 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSGet-001q8f-Cp; Tue, 23 Jan 2024 14:17:43 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rSGet-001N03-AV; Tue, 23 Jan 2024 14:17:43 +0100
Date: Tue, 23 Jan 2024 14:17:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240123131743.yghw7jvkkia2jgr3@pengutronix.de>
References: <20240123131433.3825978-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240123131433.3825978-1-bst@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_051759_610266_E8BFB99C 
X-CRM114-Status: GOOD (  14.87  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: usb: document bbu fastboot partition name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-23, Bastian Krause wrote:
> After looking this up the nth time in the code base, it's really time to
> document this.

:)
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  Documentation/user/usb.rst | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 95d6dd7e363..92fe1234645 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -168,7 +168,8 @@ The Fastboot gadget supports the following commands:
>  ``fastboot flash`` additionally supports image types UBI and Barebox. For UBI
>  Images and a MTD device as target, ubiformat is called. For a Barebox image
>  with an available barebox update handler for the fastboot exported device, the
> -barebox_update is called.
> +barebox_update is called (exported as ``bbu-<update_handler_name>`` fastboot
> +partition).
>  
>  The barebox Fastboot gadget supports the following non standard extensions:
>  
> -- 
> 2.39.2
> 
> 
> 



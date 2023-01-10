Delivery-date: Tue, 10 Jan 2023 15:45:23 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFsS-007qRr-4Q
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:45:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFsQ-0005f0-4z
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:45:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZBrICfgPWoMYNOOxICCUNlViciRRt9D5X+3S7/4a1dk=; b=0E3EA4Ob7LefHSsnVYQ7Wphla3
	Uh1lcbU1LEXs6mKkGvv4EYSOKcfhS+jGgm9sDSqzFclUPQJSUg0R6KEcWT8yKf577BvnhpA/caAPv
	0sXCrWezXSdSHOaBjyzY/DRStCyNEFjxifpzSTbxNxL8QTT681UzktE7jJuBe5wnQ/roLEFHPZ9xx
	E0FKQXdXnKEh4u227myiXeSc98Xkl9bqWB6s0nMNFG40i4ayVSdx+wHkQefuCoUlaghltlXwFZb8U
	HQNR/VKKrxo/jRsIggxfw8Q69UH4cbVwBKoaAsLmagvCTdFylwVbL7DYJa1Ss0OLgJpew6S3gEgj/
	TBl2dtlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFrF-007N6B-Cm; Tue, 10 Jan 2023 14:44:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFr9-007N4H-Mq
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:44:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFr8-0005L8-8i; Tue, 10 Jan 2023 15:44:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFr8-0004ce-1r; Tue, 10 Jan 2023 15:44:02 +0100
Date: Tue, 10 Jan 2023 15:44:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110144402.GL28911@pengutronix.de>
References: <20230109110921.1590312-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109110921.1590312-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_064403_786699_4125CB88 
X-CRM114-Status: GOOD (  25.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] fixup! Rename device_d::device_node to
 device_d::of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 12:09:19PM +0100, Ahmad Fatoum wrote:
>   - Out-of-tree patches often add a board driver, which may use the
>     old device_d/driver_d naming. Especially with bisecting, this can
>     be a hassle
> 
>   - We may split up some parts of struct device into a new
>     struct platform_device like Linux does and we don't want
>     to break out of tree patches twice.
> 
> Thus add the old names as aliases for now.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/driver.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/driver.h b/include/driver.h
> index 693d5cb3e580..c789f3151e70 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -74,7 +74,10 @@ struct device {
>  	struct list_head cdevs;
>  
>  	const struct platform_device_id *id_entry;
> -	struct device_node *of_node;
> +	union {
> +		struct device_node *device_node;
> +		struct device_node *of_node;
> +	};
>  
>  	const struct of_device_id *of_id_entry;
>  
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



Delivery-date: Tue, 16 Sep 2025 08:29:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPBm-003asf-2X
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 08:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyPBm-0003so-60
	for lore@pengutronix.de; Tue, 16 Sep 2025 08:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=34X74jrisEKXVvPKkEQ8qiNh9mcItcfCrrV7MoOSUTo=; b=G7zomcnAZQtO96z8TD9svf3FSB
	gkfWsfuM6WmUheE6aBQDD0jmFBbGkgAQpQFvaR9roVNv11EvJDVrs6HFmfJt+ozMqkgGIvbN172A4
	df3BBefKPevy0jktK9/VHqyStJHbJTm9I7ymqOIX5/sPAkWWbkcqHHcgSKi9LMy6cmj9SaqPkNEtN
	Ynzs1ywpxEX+EHPROXkfpbqVWQ9C7nb7Tpe6I+6/l6UZuTtae3Z+JdqzNQtNLBBojmFvRWn7RumiI
	NM55kCvzsHZmx2pSAL3fokizUyix3ZRoUT+Nho5HuWsAlAovMHq+WLdPUTx2MRuhrEXl7HFXb1gFB
	89Bg5dfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPB9-00000006usN-2Yiw;
	Tue, 16 Sep 2025 06:28:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyPB6-00000006urY-1FAz
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 06:28:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPB3-0003lM-DH; Tue, 16 Sep 2025 08:28:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPB3-001Xig-0j;
	Tue, 16 Sep 2025 08:28:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uyPB3-00BT0v-0Q;
	Tue, 16 Sep 2025 08:28:33 +0200
Date: Tue, 16 Sep 2025 08:28:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <aMkDkV7PauVJ5CQ7@pengutronix.de>
References: <20250915144119.1828166-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915144119.1828166-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_232836_390243_0CEC79F3 
X-CRM114-Status: GOOD (  20.59  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: remove non existent Kconfig option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 15, 2025 at 04:41:19PM +0200, Sascha Hauer wrote:
> CONFIG_USB_ROLE_SWITCH does not exist in barebox. Remove the test for
> this option.
> 
> Fixes: 5d01c33175 ("usb: dwc3: sync with Linux-6.3-rc2")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/dwc3/core.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Stefan already fixed that. Dropped.

Sascha

> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index dfc9c85ad8..985213deb4 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -70,8 +70,7 @@ static int dwc3_get_dr_mode(struct dwc3 *dwc)
>  		 * specified or set to OTG, then set the mode to peripheral.
>  		 */
>  		if (mode == USB_DR_MODE_OTG && !dwc->edev &&
> -		    (!IS_ENABLED(CONFIG_USB_ROLE_SWITCH) ||
> -		     !of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
> +		    (!of_property_read_bool(dwc->dev->of_node, "usb-role-switch")) &&
>  		    !DWC3_VER_IS_PRIOR(DWC3, 330A))
>  			mode = USB_DR_MODE_PERIPHERAL;
>  	}
> -- 
> 2.47.3
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



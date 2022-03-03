Delivery-date: Thu, 03 Mar 2022 10:55:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiBI-00GO9A-1X
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 10:55:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiBG-0007KV-Kg
	for lore@pengutronix.de; Thu, 03 Mar 2022 10:55:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/+l6fqivxIpTT7yTZjmV7NjefWY6cIx+Hz7/QGHGnLg=; b=zURMU4f2kvvw2E8NQL7/TfwuPL
	2apattAE20e+t8etwrJxTsrm3wAhLHYbKSFnRrLDsBCg0RHVMnJu15euZPGxe/4SlfJDFWhbzkyv+
	lRJ9R6V1TEJnwUkK1FANnk4FPbw3zpLYYWBwd1kobg+nGjblsL6GxmSwCsjyKA9ZY9RQWr/3dllbY
	E7liofgUd3gsnQea1WG074d7INgi2NvpHj3TjF2eI6k5sa00GZ2BJS+E6i3Pn+K2Trchi8SoVmU8q
	MFMVqaqTbI5i+3WyUUPaLPudVaHhtw9rDa80geZP1XrpLwL6w3oN9s9w9vvMDIKAOAw7gsDHtv8gB
	bMPSdYHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPi9f-005xc4-U9; Thu, 03 Mar 2022 09:53:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPi9a-005xbN-SB
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 09:53:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPi9Z-00072h-FW; Thu, 03 Mar 2022 10:53:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPi9Z-0000xQ-6X; Thu, 03 Mar 2022 10:53:45 +0100
Date: Thu, 3 Mar 2022 10:53:45 +0100
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220303095345.GA5348@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020083954.3787-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:52:04 up 82 days, 18:37, 83 users,  load average: 0.22, 0.23, 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_015346_935137_0FD31A93 
X-CRM114-Status: GOOD (  28.00  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 20, 2021 at 10:39:54AM +0200, Daniel Br=E1t wrote:
> Make 'phy_optional_get' return NULL instead of ERR_PTR(-ENOSYS) when the
> CONFIG_GENERIC_PHY is not enabled. It makes more sense to return NULL ins=
tead
> of straight up throwing a error since the function has 'optional' in its =
name.
> This also fixes dwc2 usb driver which would previously fail inside its pr=
obe
> function despite being able to function without a phy just fine.
> =

> Signed-off-by: Daniel Br=E1t <danek.brat@gmail.com>
> ---
>  include/linux/phy/phy.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

After I have received a patch which lets the EHCI driver depend on
CONFIG_GENERIC_PHY which effectively disables the EHCI in a bunch of
defconfigs I finally deciced to take this patch as-is.

Sascha

> =

> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 679ce6e42..321e546f9 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -195,7 +195,7 @@ static inline struct phy *phy_get(struct device_d *de=
v, const char *string)
>  static inline struct phy *phy_optional_get(struct device_d *dev,
>  					   const char *string)
>  {
> -	return ERR_PTR(-ENOSYS);
> +	return NULL;
>  }
>  =

>  static inline struct phy *of_phy_get_by_phandle(struct device_d *dev,
> -- =

> 2.17.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


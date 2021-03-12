Delivery-date: Fri, 12 Mar 2021 11:24:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKeyT-0004Kz-Vp
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 11:24:53 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKeyT-00032o-9j
	for lore@pengutronix.de; Fri, 12 Mar 2021 11:24:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7WuDoNnbPfa6az60lisdM3Kh146mB5pK3BElFjPUw1A=; b=N1YcYQaDaSpB2J68DGI3O2sGb
	ZiYscGWjlKHtj7xjQ8/MivQmD/SXOielBN8I0XY8fQ/PswFPP3YDDbgGyD44Opn5+ku/pLANOV7kw
	62J/el3paNhzHkIzJN2v3WGcLp5Wt1Xc4whIhsqX8fRUNPJxtP2Fq+nF/wbLp4mj8OwponZK5fl+N
	zemGQFe53zQYptM/fDV1wCerYLB5LWpT6r84ahoafmWRL4sXqKL0xzAW3db2DXowMkctmX+wbRcY/
	JKZS0HzmKr09og16KLaWsSToFAaKz2NgsbA9eTAhOfc9UFScyzFaA0SJw4vMTWNFgHFC7N88Gl0gY
	IqqeZjUTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKexi-00BA4P-10; Fri, 12 Mar 2021 10:24:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKexZ-00BA3T-D4
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 10:24:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lKexY-0002sG-JW; Fri, 12 Mar 2021 11:23:56 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20210312101309.29650-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fdfda15d-cdcd-19a7-a874-98c0b2b3c89c@pengutronix.de>
Date: Fri, 12 Mar 2021 11:23:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210312101309.29650-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_102357_802860_F3C8AC15 
X-CRM114-Status: GOOD (  21.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: fix waiting for link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 12.03.21 11:13, Sascha Hauer wrote:
> phydev->adjust_link() is called only from phy_update_status() when the
> link status changes during that function. phydev->link is also updated
> in genphy_update_link() called from phy_wait_aneg_done(), so it can
> happen that phydev->link changes outside of phy_update_status(), thus
> phydev->adjust_link is never called and no link change notice is
> printed.
> 
> Instead of calling genphy_update_link() from phy_wait_aneg_done(), call
> phy_update_status(). This makes sure that a link change is properly
> noticed.
> 

Fixes: 8f75aa496dcb ("net: reply to ping requests")

Isn't it?

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/phy/phy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 622acbe40d..e8e8dad5bd 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -571,7 +571,7 @@ int phy_wait_aneg_done(struct phy_device *phydev)
>  	}
>  
>  	do {
> -		genphy_update_link(phydev);
> +		phy_update_status(phydev);
>  		if (phydev->link == 1)
>  			return 0;
>  	} while (!is_timeout(start, PHY_AN_TIMEOUT * SECOND));
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 02 Jan 2024 10:02:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKafO-000OXh-2v
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 10:02:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKafN-0006q2-Re
	for lore@pengutronix.de; Tue, 02 Jan 2024 10:02:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nfybDLZqYLUcuPQ0pDNPY3WRZtdCPax+aUpN7QbLmrs=; b=V2EffyZwVDNk3QWiWsPNKjniY+
	DgNm56cuLsdZ3LUEfA6nV7I6OdMICwrl70IvaGsOh/8JC4RbQNKi3NFkIeK4UJlthjBlGKwHj2Wuw
	cT23oosh641uyMHftGZ2xKNrI+He2ZCuruM8Rs2CtA0YP9em/jHtQmYEkVXbvx0eXblEOEfilUrTs
	SZGHPWYWzLCHVCikU6ftgqorin6Pe7PvTEeFuggfCJHXPhus5KzLh/opiVp/YZsZynKLebW6chKqY
	4RsSuwALRm8jMx7H85Ad1QvHHxI72CcAn1EaSETcopMtkPQ3HlGBTPjvtMFdzvaZRkbofenLN8fyV
	fDKnyNmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaeH-007OzL-1T;
	Tue, 02 Jan 2024 09:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaeE-007Oyo-1t
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 09:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKaeB-0006FB-QT; Tue, 02 Jan 2024 10:01:15 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rKae8-0038qF-Qo; Tue, 02 Jan 2024 10:01:13 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rKae9-009tJh-Qv; Tue, 02 Jan 2024 10:01:13 +0100
Date: Tue, 2 Jan 2024 10:01:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alvin =?iso-8859-15?Q?=A6ipraga?= <alvin@pqrs.dk>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Luiz Angelo Daros de Luca <luizluca@gmail.com>,
	Alvin =?iso-8859-15?Q?=A6ipraga?= <alsi@bang-olufsen.dk>,
	realtek-smi30be0000.ethernet@30be0000
Message-ID: <20240102090113.GU1318922@pengutronix.de>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_010118_644186_98039CE0 
X-CRM114-Status: GOOD (  17.02  )
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
Subject: Re: [PATCH 0/4] fix barebox support for MDIO-connected Realtek
 Ethernet switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Dec 22, 2023 at 03:07:24AM +0100, Alvin ¦ipraga wrote:
> While bringing up a new board with an MDIO-connected RTL8365MB, I had to
> make some changes to barebox to get network boot to work. This small
> series addresses all of the problems I encountered along the way.
> 
> Signed-off-by: Alvin ¦ipraga <alsi@bang-olufsen.dk>
> ---
> Alvin ¦ipraga (4):
>       net: fec_imx: reverse registration order of mdiobus and edev
>       net: dsa: realtek: fix support for MDIO-connected switches
>       net: dsa: realtek: unify ds_ops
>       net: mdio_bus: associate OF nodes with their devices

Applied, thanks

Sascha

> 
>  drivers/net/fec_imx.c                  |  10 ++--
>  drivers/net/phy/mdio_bus.c             |   4 ++
>  drivers/net/realtek-dsa/realtek-mdio.c | 105 +++++++++++++++++++++++++--------
>  drivers/net/realtek-dsa/realtek-smi.c  |   2 +-
>  drivers/net/realtek-dsa/realtek.h      |   3 +-
>  drivers/net/realtek-dsa/rtl8365mb.c    |  24 +-------
>  drivers/net/realtek-dsa/rtl8366rb.c    |  23 +-------
>  7 files changed, 97 insertions(+), 74 deletions(-)
> ---
> base-commit: 934cb2146e5b34eb45c81e3f9bc9b63c95701e43
> change-id: 20231222-realtek-mdio-fix-2672b2ef4ae6
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



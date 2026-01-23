Delivery-date: Fri, 23 Jan 2026 08:29:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBbm-004PAz-2O
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:29:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBbl-0004FW-Oo
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:29:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1QxKk3qBoDHfmKv9VzwdG7c/C+Shywzv6u4ZNYYYjcg=; b=2hQtoBbDV/swr2yV0ht3yzYI+4
	mZSuKbp5YggLYGCj9OuyR+so5dVcY/MoMxf0U52ASt+ieMuJQuzBN3nxpIZdl0TQb7urNyL/iR5nP
	/Xgpzb6kvIVIG2N/ttpGuFNeSgoYSX2C6YOTRB+qZfUa0ZkBIhCkzuQT03BBS6R0vERZfGLBlDtpn
	f4k6U/y+uQYRiR/WatzuR2ne1KZO9i3mokPaJWe+OgORbmELCyiTXxG2XoT6hyWgkNXoa+lPgXZDw
	RlcR8P7FNrFykwTpZEQpz9HkU3+zixz8Of4VwcEbFG7F2OKDWNPHGZcJcRmhfNDrfePW1G3H9vDHF
	xz93z0Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBbK-00000008NFS-3TFM;
	Fri, 23 Jan 2026 07:29:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBbI-00000008NEs-281G
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:29:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vjBbF-0004B8-F0; Fri, 23 Jan 2026 08:28:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjBbF-0023SG-32;
	Fri, 23 Jan 2026 08:28:57 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vjBbF-00AreD-0R;
	Fri, 23 Jan 2026 08:28:57 +0100
Date: Fri, 23 Jan 2026 08:28:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aXMjOcgaFkrx5HWy@pengutronix.de>
References: <20260121075623.3906595-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121075623.3906595-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_232900_546504_4D8C9FD9 
X-CRM114-Status: GOOD (  18.08  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: realtek: sync with Linux v6.19 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 21, 2026 at 08:56:22AM +0100, Ahmad Fatoum wrote:
> The BeaglePlay has a RTL8211F-VD Gigabit Ethernet PHY at mdio0-phy00,
> which detects link up, but fails to communicate when used with the
> barebox generic PHY driver.
> 
> The Linux Realtek PHY driver already matches the RTL8211F-VD PHY's
> ID, so bring the barebox driver up to date.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/phy/phy-core.c     |  54 +++++
>  drivers/net/phy/phy.c          |  63 +++++
>  drivers/net/phy/realtek.c      | 411 ++++++++++++++++++++++++++++++++-
>  include/linux/phy.h            |  19 ++
>  include/linux/string_choices.h |  79 +++++++
>  5 files changed, 614 insertions(+), 12 deletions(-)
> 
...

> +	} else {
> +		phydev_dbg(phydev,
> +			   "2ns TX delay was already %s (by pin-strapping RXD1 or bootloader configuration)\n",

Dropped the "...or bootloader configuration" in this patch while
applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



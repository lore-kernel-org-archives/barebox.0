Delivery-date: Wed, 11 Feb 2026 10:35:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6dY-000UDH-27
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 10:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq6dY-0001X1-WD
	for lore@pengutronix.de; Wed, 11 Feb 2026 10:35:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xv8pCkbe4HMutMN6vP9aTNN35D1Y7Hz6DlD8I6lz0LU=; b=aJfj0tiFCmlaNo3td+5xsUe45n
	5W6EA16cMfrOEK76QDdx+ybBD5cukTxs0XiIPmohzwKgXbwkY32fYiqVrGjz5gz3/1HM/LXCJU4jn
	IHcOLBiLZ9/mshcubZX6k0eOGAQ1G8RhAfsKAztRgzKYOjZMQPyu1dTE4R3CUY/bcUltGXt4zlomG
	R2JXpS/O1Ega+TABESs6tq/Vg660wJ8QmC+wMVa9hRaHmraXS+d3anpt4/VUFgopcsq9shZVvz888
	any5dam4Twezs7+u2iuPjO93M8zNJ8URshn4ViUd8Zpk2HCvmoHUV0yQC+s5A0r2hIx44VyJxup5u
	juQAxyzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6dF-00000000RkG-1dlT;
	Wed, 11 Feb 2026 09:35:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq6dC-00000000RjE-0tgq
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 09:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6dA-0001Sj-Py; Wed, 11 Feb 2026 10:35:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6d8-000Drt-1z;
	Wed, 11 Feb 2026 10:35:31 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vq6d9-0000000EzS2-3nxN;
	Wed, 11 Feb 2026 10:35:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Renaud Barbier <renaud.barbier@ametek.com>
In-Reply-To: <20260210125225.981725-1-renaud.barbier@ametek.com>
References: <20260210125225.981725-1-renaud.barbier@ametek.com>
Message-Id: <177080253190.3572787.2007702184525633090.b4-ty@pengutronix.de>
Date: Wed, 11 Feb 2026 10:35:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_013534_262175_73E3ED4B 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: Re: [PATCH v3 0/4] net: expand gianfar support to ls1021a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Feb 2026 12:52:21 +0000, Renaud Barbier wrote:
> This patch adds limited support for the Ethernet controller on the NXP
> LS1021A:
>     * Only one port has been tested i.e enet1.
>     * The PHY negotiation has been limited to 100Mbits-FD.
> 
> In this version 3, remove code that was meant to make the difference
> between the mdio register offset between PPC and ARM if retrieved from
> the device tree. However, the PPC platform does not support DTBs and the
> mdio offset is already taken into account into the mdio access functions.
> Hence, the clean up.
> 
> [...]

Applied, thanks!

[1/4] net: gianfar: disable link information
      https://git.pengutronix.de/cgit/barebox/commit/?id=f532dc064126 (link may not be stable)
[2/4] gianfar: apply checkpatch recommendations
      https://git.pengutronix.de/cgit/barebox/commit/?id=9af9cb22a97f (link may not be stable)
[3/4] net:gianfar: add device tree support
      https://git.pengutronix.de/cgit/barebox/commit/?id=49b79bb5e566 (link may not be stable)
[4/4] ARM: ls1021a: initial Ethernet and mdio configuration
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d789e0de5a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




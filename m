Delivery-date: Fri, 12 Jun 2026 15:41:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY28q-0054ij-0O
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 15:41:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY28p-0002hG-Ha
	for lore@pengutronix.de; Fri, 12 Jun 2026 15:41:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GVjFPdMThlh4najOeB+uvzSL380nmaStZ0C4UMuipYQ=; b=uyQ+mf3aGSTHn8QYH78kWAnkIi
	8OgGK9ye50fGfzm4MU1b4oD+P2p4FSwfP42FfjuGXdaiGOlQ914/aK/gY0sAfbvaczLQWIuZrXO+J
	rFehuchsciLKnW5gpJbF/J0it8eb4UyjDEeAykK9UoFj80tcG31CCxDhCpT5Kc4T4pGpCfQTG2WYx
	c/1qQ1zwgKayTy224yMuzuAddExJaI3YyBAyYkYU3+FzUGPwE1SxzE18Ur7DKRP3sfWyJmcTy98gz
	sHXxU5Qqt5i9BuJjbR0MI/IDfJskRssQt+oMgHjtlnKv8aSbUGyCcVWrWDiq/Do5xR/Z337z8HEfK
	8ctgNxrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1Eo-0000000AtSI-1nuX;
	Fri, 12 Jun 2026 12:43:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY1Em-0000000AtRo-1jSM
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 12:43:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1Ek-0002Zi-0x; Fri, 12 Jun 2026 14:43:50 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1Ej-002NeR-3A;
	Fri, 12 Jun 2026 14:43:49 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wY1Ej-0000000GkzV-3iJx;
	Fri, 12 Jun 2026 14:43:49 +0200
Date: Fri, 12 Jun 2026 14:43:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <oube5swhy3xg7owo64pfr4k6lfvc2c7er72v6rb7n4qlxruhcd@ssh25gw72asn>
References: <20260612115800.3475528-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260612115800.3475528-1-bst@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_054352_452248_6CC0B7C4 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-06-12, Bastian Krause wrote:
> Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
> driver is used. This causes the errors below since barebox tries to add
> the memory twice:
> 
>   imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
>   initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
> 
> Remove the memory node to fix this.
> 
> 604c974c968 ("ARM: dts: i.MX8MP: remove memory node") already fixed this
> for the i.MX8MP EVK and the TQMa8MPxL on the MBa8MPxL.
> 
> Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>



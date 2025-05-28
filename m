Delivery-date: Wed, 28 May 2025 18:28:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJe7-001FPG-2Z
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:28:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJe2-0001lS-V0
	for lore@pengutronix.de; Wed, 28 May 2025 18:28:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MA2CEzOxkXJHOxU3awt3hmP70m1XeF+O9DRwcLo84zU=; b=uT6pt2qxxsYe4juyZtCVP+Y/9O
	QQXb4G7Y8L6dciLDWaAtIGKAPBDjVUlb1fs2HDXd1Ua9AqFMj47pxhClELRy6FBhoEHgl82a8D+w9
	SA68Khz5Yb1p3EtzU3uYXB3EdmhTREL170TR1RX4gYjOpgVXSxkClR2xP79ZPJh396OSMfaL5cKYP
	YtkBeK7PCZYBEu/gZoTnxKozou62mPmZ1H9Dyk0gBz8y5rSVyGhiHccPL9YpQwOylFv8il62KI2bM
	P70AUcJ7wpQkVVgR+npsGvzTkP7+7W43xEtOjc6IgGAQWIeIFb5Nsxc6buDGkMaqGKPK4wUi+MNVT
	4ACoIyOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJda-0000000DfA5-2vrB;
	Wed, 28 May 2025 16:28:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKItS-0000000DZdE-3Qcn
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:40:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKItR-0007p5-Lm; Wed, 28 May 2025 17:40:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKItR-000c3O-1X;
	Wed, 28 May 2025 17:40:37 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKItR-00EXct-1G;
	Wed, 28 May 2025 17:40:37 +0200
Date: Wed, 28 May 2025 17:40:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20250528154037.qeev5mm53wpjxnme@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
 <20250528-rk3588-optee-v2-9-63070238dd13@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528-rk3588-optee-v2-9-63070238dd13@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_084038_852289_8906C649 
X-CRM114-Status: UNSURE (   7.55  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 9/9] ARM: rockchip: fixup memory in device tree for
 TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-28, Michael Tretter wrote:
> Add the memory nodes for the detected SDRAM configuration to the fdt
> before passing it to the TF-A.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>



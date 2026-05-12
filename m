Delivery-date: Tue, 12 May 2026 08:26:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgZP-000oGg-0s
	for lore@lore.pengutronix.de;
	Tue, 12 May 2026 08:26:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMgZJ-0007Mx-Vx
	for lore@pengutronix.de; Tue, 12 May 2026 08:26:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vrB8CXIPb/m5jlmqKFOTnpaXx4GBdjh50NKQFt6uE+o=; b=SQ2lh+nVAy+/ndiS6R0GU7We2z
	3DFUpBGMZ45jsNEv+xvz7ibj/0X/Dpgj00buHuf/XQIoj2AcSUuGoHZzv3nn7ENz2d9DFrWEtNIyt
	QEidMmkRGgK/ssPe0z3QZrtPSbQdp10L2gL4OzXbW6w0o6T1cnP/VdrDEpj0kP9ZngDO+S6u6cNCx
	FLPJWIZbtu3m5oglz7ni0HUxgw/HHDqsktdEYwXFFBefvi56zVD9d+VAIu9tD3F4BI3EmYwh8fyKt
	5lulM9+h+Xd4hhqH6fw8vfMqVdfWNDR7W6uSHbDm5semvMAn4r9w0vISfqcCMgxwNx358LovbsqA2
	O/XN1PfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgYG-0000000FldL-1OhO;
	Tue, 12 May 2026 06:25:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMgYC-0000000FlcR-17ce
	for barebox@lists.infradead.org;
	Tue, 12 May 2026 06:25:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgYA-000732-RI; Tue, 12 May 2026 08:25:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgY9-000NRX-2u;
	Tue, 12 May 2026 08:25:02 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMgYA-00000001TZJ-2PxK;
	Tue, 12 May 2026 08:25:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260511-rockchip-secure-boot-doc-v1-1-b4339a0d007f@pengutronix.de>
References: <20260511-rockchip-secure-boot-doc-v1-1-b4339a0d007f@pengutronix.de>
Message-Id: <177856710257.351974.9661061617063300627.b4-ty@pengutronix.de>
Date: Tue, 12 May 2026 08:25:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_232505_986031_09318558 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: rk35xx: add secure boot documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 May 2026 17:53:50 +0200, Michael Tretter wrote:
> While barebox supports secure boot on rk3588, user documentation how to
> sign images and enable secure boot is still lacking.
> 
> Add this documentation, now.
> 
> While at it, add some documentation for the Rockchip image header, too,
> to explain how the signature guarantees the integrity and authenticity
> of the included barebox image.
> 
> [...]

Applied, thanks!

[1/1] Documentation: rk35xx: add secure boot documentation
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbd846c548b3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Mon, 15 Dec 2025 08:42:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3DW-00Bf8V-0b
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:42:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3DV-0003qQ-KY
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:42:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A/Dn8L/fKE1X3DGmf/e3TgxXUtics9WpFkNXZoTktoU=; b=OGbCXR3KGPBbwmejbzs4DMN8Tj
	2dpIDqVE4fj6Qw0dhs2dqmbruzBWCeAR6TrM8vX8lHHjuQgt1QEKopwXTc1ltaAwPQdaIx3KSY/ov
	kiw7QBOlEnEKvCRzQ6eAmJPUsri9dtiQ/bLTAAHo2oYcpRotEZVuOn4QwxZsajWRaSM+UjTceZlcb
	YXZzMxJDuj3wKEr5q+qmceaKYdgHfnpMpTPLLi1W4I687/IgRDo8wIkQdTaRSz4xgGCLxQD4nRbMb
	EL1vTj8QUl/QLBOB6frqBBjbIisvCmR1rZB0zMUBquAXGzhNqR/BrXwDYOYDtZ/t9nhKzrp2x5Kbd
	RtIU/w6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3D2-00000003DJ1-1V4R;
	Mon, 15 Dec 2025 07:41:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3Cy-00000003DIU-3hLF
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:41:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3Cw-0003hG-Rd; Mon, 15 Dec 2025 08:41:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3Cw-005k8x-28;
	Mon, 15 Dec 2025 08:41:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3Cw-000000012nC-2WLW;
	Mon, 15 Dec 2025 08:41:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251212153649.365215-1-a.fatoum@pengutronix.de>
References: <20251212153649.365215-1-a.fatoum@pengutronix.de>
Message-Id: <176578448659.249051.7861285066236174897.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:41:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_234128_991935_C1E87CF3 
X-CRM114-Status: UNSURE (   8.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] i2c: omap: fix probe on am335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Dec 2025 16:36:20 +0100, Ahmad Fatoum wrote:
> The AM335x uses ti,omap4-i2c as compatible for the I2C device tree
> nodes, but that compatible unlike its brethern has no driver data as
> it's determined using the machine compatible in the probe function
> instead.
> 
> device_get_match_data() returning NULL is thus expected and should not
> lead to an immediate error.
> 
> [...]

Applied, thanks!

[1/1] i2c: omap: fix probe on am335x
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3c4f9a12b8c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




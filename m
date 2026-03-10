Delivery-date: Tue, 10 Mar 2026 11:09:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu25-00A3lQ-13
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 11:09:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzu25-000631-LT
	for lore@pengutronix.de; Tue, 10 Mar 2026 11:09:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8q9c6BwJtb84qb6Erus7KDylfRp55KH5UkAMsyJcTSU=; b=DSIPcPRPGyZXErHOJk/60Vgfyy
	M2qWMyMhwWVJ4uoEf7zjs+oD6uhPrGuLxDKNWP5wQe92BLX98ELynkpAbGVxXtTEFewW+2Gz5VKTP
	V1QfQrA0wUUf6Dx3dR3jwjqEgQepN+15wPaGrQgQSvB4ut8brHBVoiRMAcJFDVxfgSAUmuD+6Z8nR
	Xt9EvrOWhFX5BbhhZZdwVn4ahfM7tAr2MdFerBPRRYuSVj1w8G0fchMqhZnVSPwoCAyHqa3zCV/uQ
	jvQYCMNO5fsQ/ZQHtuUHcK2tGfMihrlOhRuvXc5P59zTiStZqQT765N6ABPUy1zts1HpIry2JmxGw
	DkduU7eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1j-00000009AH9-1eps;
	Tue, 10 Mar 2026 10:09:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1i-00000009AGD-0ngL
	for barebox@bombadil.infradead.org;
	Tue, 10 Mar 2026 10:09:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=8q9c6BwJtb84qb6Erus7KDylfRp55KH5UkAMsyJcTSU=; b=Vligizn2nlFyRSm43nIZnJwy69
	fa4eTrtKoyB7yRlv5qEfBN8nRmX4bMV7Rjw3pMWtSgoqBlNmQ3qtRa8IxStgJWWCKw6dAfUiJ99xt
	mTxA1UVjWros1ZBnOeLtc0lSpgpFabDEugYrZ5jenZlIHaiZCLl6irhdVABQCRTqxEhR/5sdR1Aym
	gc+dT7ds+9NQ02BwQ+bEZYuvXm7P2jVRy3a2bEXjGaIbZkIKc1Y68NczaxrRXrPrt9CGYIVA0pxE+
	FP5IbudvSuPv2qsRcbGoSaGLq9BpUgg9CillJifjgBs9TdU2FVV/4vvpO/oAFydLRYvMKS2J9OE9k
	JJgkOm+A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzu1d-0000000EDTM-2cEX
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 10:09:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-0005kk-H0; Tue, 10 Mar 2026 11:09:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1Z-004gFS-36;
	Tue, 10 Mar 2026 11:09:15 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzu1b-00000003BHM-0t2f;
	Tue, 10 Mar 2026 11:09:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260305070147.3419069-1-s.hauer@pengutronix.de>
References: <20260305070147.3419069-1-s.hauer@pengutronix.de>
Message-Id: <177313735520.757414.16770188704556931471.b4-ty@pengutronix.de>
Date: Tue, 10 Mar 2026 11:09:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_100918_123338_FFDBDE5E 
X-CRM114-Status: UNSURE (   8.24  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: pass smaller device tree to OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 08:01:47 +0100, Sascha Hauer wrote:
> libfdt is slow on larger device tree, especially fdt_subnode_offset.
> 
> Adding the memory nodes to the ROCK 5T device tree takes about 2 seconds
> on my machine.
> 
> OP-TEE doesn't need the entire tree, but only the memory nodes.
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: pass smaller device tree to OP-TEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=838744e14a21 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Wed, 14 Aug 2024 10:47:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9en-009TlA-0r
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 10:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se9em-0003ic-MM
	for lore@pengutronix.de; Wed, 14 Aug 2024 10:47:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NXydK81AwSlxd1iseK8EctWrN2He2Jwa7ArP9LIZCTI=; b=p2ZoqBB8ImoEFxt2sMKSWJUJS7
	43vqbmcSro+uLqDlvGq7LYjGDxC3XOTt+nW1tSoa0bvzUxoYK82+uNBC9VAOOKAv/gsg2ww3e1cGa
	8AW0ROQUT05ET1xhBbbIhxzuJyTZVirRlYobgV/d8boFrOXUPiQw0G0JldzbPAneY3PTT4SKPK/no
	rMw2RWjlbcw2z1cqFf1engxJweCAdzJTFMGNWfvHYLAz2xZ1+1PswfwQLKTpnRLhIr7AZeyreLDwx
	yJsia8fnlhfSQRmqAZhlXNMCh64uGNlfLxuGPdN+sE0oGCO/PuhwcuEv4zEXQCsNuPs1i6e40tLeQ
	RJa2llXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9eD-00000006Gba-2d2S;
	Wed, 14 Aug 2024 08:46:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9eB-00000006GbH-12S0
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 08:46:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NXydK81AwSlxd1iseK8EctWrN2He2Jwa7ArP9LIZCTI=; b=TdhU+yLIyGpQkZaMaFGp6CLzAY
	LMl1OeIVFfxY0ZfIolwJWd7dezGAcf9d0WI2nVpnDVEOkFNMNknvIoCd8nPOAv1GlgfxbsZQffulW
	OYDuJNXXVMxVNFHZqx+u01K7cDCJzsD5C5eAVC8NDYRrHw2oNuV8TbvnMY3+hUp+V8VrCblJCFSlz
	n2iA7j5o3c4lHnd7lxt7pSqem3LBWqpGV6nSlXANGj4rCL3XSkBCXvkvxKCXflRUW3Gx5P3DQHtHV
	tdZGHVJl45q5woQATTSyLUKtQ4wQ4SJqFv5QmvpoejS2dPXrwZFg1YbhLuP8qqaxqJxyz57mkG+qr
	GZTMNiqA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9e7-00000007yhl-2H7i
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:46:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e6-0003aK-Gj; Wed, 14 Aug 2024 10:46:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e6-000Jtz-0h; Wed, 14 Aug 2024 10:46:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9e5-005Pfg-36;
	Wed, 14 Aug 2024 10:46:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Yann Sionneau <ysionneau@kalrayinc.com>
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com
In-Reply-To: <20240813124408.2569-1-ysionneau@kalrayinc.com>
References: <20240813124408.2569-1-ysionneau@kalrayinc.com>
Message-Id: <172362517796.1290283.16743123284393024894.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 10:46:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_094619_773289_F25764E7 
X-CRM114-Status: UNSURE (   5.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/3] kvx: add qemu dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Aug 2024 14:44:06 +0200, Yann Sionneau wrote:
> Add qemu dts that will mostly be used to run test in CI.
> 
> 

Applied, thanks!

[1/3] kvx: add qemu dts
      https://git.pengutronix.de/cgit/barebox/commit/?id=b5e4def4741e (link may not be stable)
[2/3] ci: container: add qemu-system-kvx
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7d4174db5f2 (link may not be stable)
[3/3] ci: add support for running basic tests on kvx arch
      https://git.pengutronix.de/cgit/barebox/commit/?id=61749d3e754c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




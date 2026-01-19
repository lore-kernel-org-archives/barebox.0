Delivery-date: Mon, 19 Jan 2026 13:19:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoDx-0031i9-0H
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 13:19:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoDw-00057X-3s
	for lore@pengutronix.de; Mon, 19 Jan 2026 13:19:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DeQFYnShjpOmlZiB2Ig/sC/vEo/33eKbvEkKMMvMyZE=; b=4iD9JD4uisoRaTj9SMZrF2ytB6
	a7tllSAXbM8Wa+EKWTHgBMAwoygnFLHkLYbg4g/lOYbubVanPv4EDj+mNDRrnfaGOL1ncz7eyx7Ec
	L27e+nSJrb89iOY+Kx+ynoD4OFHwQHJemN9g9CDPHG6NN6ZWFQI/w1qzru/wuqIS/5npj7OHz932B
	JWD5JuBuCbfi62rE2V3hH2cqf03Y3tCoNv3QJQLtc6MHYRIz/G7sJKWTIIQIa18FpxIxlE2JyllNB
	trIPgbboOwrg7BrQSdzloB8T+wxsSOGEmyi9uC2X5uPrKS5+TTJ1ClJxnwYpmsrr3PizUa29jPPMu
	bZUMH2iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoDX-00000001z8I-3mbe;
	Mon, 19 Jan 2026 12:18:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoDU-00000001z7q-0SN0
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 12:18:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoDS-0004zG-AP; Mon, 19 Jan 2026 13:18:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoDS-001PX5-2W;
	Mon, 19 Jan 2026 13:18:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoDS-00000003qyF-0AXe;
	Mon, 19 Jan 2026 13:18:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260116171530.2467685-1-a.fatoum@pengutronix.de>
References: <20260116171530.2467685-1-a.fatoum@pengutronix.de>
Message-Id: <176882512203.918568.7263236672219318428.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 13:18:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_041844_924983_677226F9 
X-CRM114-Status: UNSURE (   7.08  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] boards: qemu-virt: drop unused
 __dtb_fitimage_pubkey_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 16 Jan 2026 18:15:13 +0100, Ahmad Fatoum wrote:
> Commit f018a6e4606e ("boards: qemu-virt: drop fitimage-pubkey.dts") has
> removed the reference to this symbol, so remove the unused/unusable
> left-over declaration as well.
> 
> 

Applied, thanks!

[1/2] boards: qemu-virt: drop unused __dtb_fitimage_pubkey_start
      https://git.pengutronix.de/cgit/barebox/commit/?id=47872f98bace (link may not be stable)
[2/2] boards: qemu-virt: add overlay for when first flash is secure-world only
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d8084554542 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




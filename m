Delivery-date: Tue, 17 Mar 2026 09:33:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2PrN-001k75-0y
	for lore@lore.pengutronix.de;
	Tue, 17 Mar 2026 09:33:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2PrM-0007VP-PA
	for lore@pengutronix.de; Tue, 17 Mar 2026 09:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4I8O73tM4BQS34TkO+9yDsMNzDScWPYHVqfUD7K2YDY=; b=KuTwJJ0XV5Q7NTc2wCtma6oZXG
	f/WBD3cmMIn2ImcVCCJLQkRVFgGvmQsplWVK5hAkGKxXV9gr3XeMqK2c8pIxE2FvQeJdhYfmk4Hhv
	icrem9WhcpIS7uhLvu/wD4DJi3xdQDFYwAVxX/sW7ATSV9W5nN8Ww+0Al6eid0NbYWNGvQm311IUV
	PDZwgGaHxBGwutP9Vu++ngaJzW59CW/9f0GJvoBjn8aZxomMHvjTBojNiYpCjyuLvez8Zx09+gTkx
	sAX0/qvd4JvyNy/ZEkaPmkSA/7hwB+7rL1/nhMNZMCZdnK0UmiLAbSiDnqRiifyxrIEsv1Uo+y1tf
	Sng/1e1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Pqg-00000005jbe-3xWy;
	Tue, 17 Mar 2026 08:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Pqe-00000005jb6-2ouv
	for barebox@lists.infradead.org;
	Tue, 17 Mar 2026 08:32:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqc-0007LR-8K; Tue, 17 Mar 2026 09:32:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqb-000hxA-2z;
	Tue, 17 Mar 2026 09:32:17 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Pqb-0000000Cqs7-3ctY;
	Tue, 17 Mar 2026 09:32:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v2-0-cf377c10efd5@clermont.in2p3.fr>
Message-Id: <177373633785.3063078.15736661933383976324.b4-ty@pengutronix.de>
Date: Tue, 17 Mar 2026 09:32:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_013220_720854_CEDBAFE1 
X-CRM114-Status: UNSURE (   7.51  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/3] ARM: socfpga: Enclustra SA2: enable HS USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 10:55:43 +0100, David Picard wrote:
> Enable high-speed USB on Enclustra Mercury+ SA2 module:
> - Enable options in the defconfig.
> - Enable the high-speed USB 2.0 controller in the devicetree.
> - Change 1st stage image compression method to keep it small enough.
> 
> 

Applied, thanks!

[1/3] ARM: socfpga: Enclustra SA2: add defconfig options
      https://git.pengutronix.de/cgit/barebox/commit/?id=f992151a6c04 (link may not be stable)
[2/3] ARM: socfpga: Enclustra SA2: enable USB1 HS
      https://git.pengutronix.de/cgit/barebox/commit/?id=8972f106fac4 (link may not be stable)
[3/3] ARM: socfpga: xload: compress image with xz
      https://git.pengutronix.de/cgit/barebox/commit/?id=7693d5f1de9a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




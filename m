Delivery-date: Mon, 06 Jan 2025 10:14:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjBZ-00HQVK-0N
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:14:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjBZ-0002MT-38
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:14:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FaFZm6YKOkrSAN8WsgiKj4/p6UmzmiH0d1LyYkAZlXw=; b=24QtfdyolOY6MZl2DkGqPFU9iI
	dMLWjd6xm/T7CsitxP28B5ASUEGRmXovLYeP1PEZ3m9WQ+fGDX1d3GBclLdfa7fHWu+oFsM6CicyG
	6T7AwXYnIdOQvkfu7l6vEjGTsj99UBAt8cInsh5lSGteSibSJSeTAKDQzVNcxgzH3T/biSMpepNCz
	2Kk0OPGlUrmAlZJYLaU6A+egulkv5idFu7gVHF/M5gqbtbWg+udGzAMTl3dTsymzLgjW001IgCdLH
	rY2T07HIcBLeYA3zMN66KAIhpe+2xEwsWWyni+2ComoArc+GAn1FNcu1teVN52AFjW6O9j30V1Efx
	KDSFadXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjB4-00000000cvy-2Wdi;
	Mon, 06 Jan 2025 09:13:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjB2-00000000cvD-0RVi
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:13:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjAz-0002EW-IA; Mon, 06 Jan 2025 10:13:33 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjAy-0078dO-1U;
	Mon, 06 Jan 2025 10:13:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUjAz-008lho-0Y;
	Mon, 06 Jan 2025 10:13:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20241228063651.3487846-1-eagle.alexander923@gmail.com>
References: <20241228063651.3487846-1-eagle.alexander923@gmail.com>
Message-Id: <173615481316.2089927.13534541779574440623.b4-ty@pengutronix.de>
Date: Mon, 06 Jan 2025 10:13:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011336_166879_D1A04D8A 
X-CRM114-Status: UNSURE (   5.22  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: Compile at91sam9g45_reset handler only for
 affected SOCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 28 Dec 2024 09:36:51 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] ARM: at91: Compile at91sam9g45_reset handler only for affected SOCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=a030a831f3ed (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




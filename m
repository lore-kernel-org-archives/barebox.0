Delivery-date: Tue, 05 Aug 2025 11:07:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdl-007F73-1C
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:07:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDdk-0008K6-Rz
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:07:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XHYriW1LF+Q3Mh3e7Olqls8DioM/FH0UDcwsNfRG5BE=; b=M+e85KhDytfleu7C9Ba2HxQoPn
	P1mh2l9sQkeOv/3k8mUhJe88AI74p3GlIo9Ygqg7YUYguI5Ie4hqcMqdRwB3vQTLYvtNDBcxsf3z1
	b9DdguM/gChdk65HFkmJjZnLg7uLuYsVI3IloKVSE4562lQqNML0TJ+cR58CiyNF51/hGD6HpRMZ0
	9vh9XvXsqnEJXqgW5vggCDq2RNwgd6npCCR7arrjN5fGHGX2pmSLWO2AXUP2ZB5MmrjR9HxI3dNFH
	RrY6ngg4McXan4X3ONXXM5hc+/dGRFEJ6U1RJvGHo6U2pov8+cdGo8XpW5RJlWs36k39zlycTZ7vq
	oH6MHsNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdE-0000000CIzu-1fx8;
	Tue, 05 Aug 2025 09:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujD6u-0000000CBjL-0Lbl
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:33:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD6s-0004Sn-Q6; Tue, 05 Aug 2025 10:33:26 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD6s-00C0iW-1U;
	Tue, 05 Aug 2025 10:33:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujD6s-00EfnJ-1J;
	Tue, 05 Aug 2025 10:33:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250718-clk_register-v1-1-009e23a7da84@pengutronix.de>
References: <20250718-clk_register-v1-1-009e23a7da84@pengutronix.de>
Message-Id: <175438280639.3497230.8921717707811095217.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 10:33:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_013328_134319_D14A9456 
X-CRM114-Status: UNSURE (   5.61  )
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
Subject: Re: [PATCH] clk: clk-gpio: Use clk_register instead of
 bclk_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 18 Jul 2025 15:37:18 +0200, Jonas Rebmann wrote:
> GPIO-gated clocks wrongfully used barebox clock interface which leads to
> bugs due to clk not being initialized from init->ops.
> 
> 

Applied, thanks!

[1/1] clk: clk-gpio: Use clk_register instead of bclk_register
      https://git.pengutronix.de/cgit/barebox/commit/?id=6ee81f9cee04 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




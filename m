Delivery-date: Mon, 15 Jun 2026 09:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ27q-0063xy-3D
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ27p-00066b-Ja
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:52:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ky0W0h3NleEQZngqMnZ/tLBVUWPqMpIaM9sWVNFGFy4=; b=MU6Rv/uIaTGXTTMGK162dJJ44m
	hp4XxnVMqHGEB9N0TEuQyXBw9LteaAz2TsMnvA0o+W1nrqjnGdXvaI7oPCL4OpuGD90GPqH33WgQI
	MJTXAcfMFbZdPqKsouBZavH2Vunw1UNFg5VGXD/SafWrmSa3BFkrTlfrFFIW2CBNaf+GWKssFF/aO
	SNJfH9Unl7cG3yfyuj1ch8Zq3RbEKlprs3ZL43rYUlzkNlAI/gnY1ZClDsNaM/xhmNJCVJNtWcR/M
	T50ayPMISsoUylx4N9Tha7pvvuaAfnkR0kyQegcn3MYK7Mxw2RlWb4yNEyG2M+TH1a7sZFYgfkvEn
	Inf1BrIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ26o-0000000Dooh-1sUF;
	Mon, 15 Jun 2026 07:51:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ26m-0000000DooI-21Lq
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:51:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ26l-0005lI-1X; Mon, 15 Jun 2026 09:51:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ26k-002pJw-3C;
	Mon, 15 Jun 2026 09:51:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ26k-0000000D2JP-3su9;
	Mon, 15 Jun 2026 09:51:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20260610174919.3813577-1-bst@pengutronix.de>
References: <20260610174919.3813577-1-bst@pengutronix.de>
Message-Id: <178150990692.3107116.3289956970900459986.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 09:51:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_005148_546290_8529852C 
X-CRM114-Status: UNSURE (   4.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: nxp-imx93-frdm: use tabs instead of spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jun 2026 19:49:18 +0200, Bastian Krause wrote:
> 


Applied, thanks!

[1/2] ARM: nxp-imx93-frdm: use tabs instead of spaces
      https://git.pengutronix.de/cgit/barebox/commit/?id=44fc2f6569d1 (link may not be stable)
[2/2] ARM: nxp-imx93-frdm: add bbu handler for eMMC
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b557db8a089 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




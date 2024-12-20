Delivery-date: Fri, 20 Dec 2024 09:52:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYkg-00ANmH-1R
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 09:52:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOYkg-00062y-E3
	for lore@pengutronix.de; Fri, 20 Dec 2024 09:52:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s0lc+zj6IL5GFgU/jUuN8noLU1j8oi0PO6J9rdzEM0M=; b=N+hDlTdhz2EGMGg0SIzArtEEQI
	1i00wVuVU4XQngIu3Z+dNm9zKQ58V4uVPxgSAFrq5f6BJyBSVlKjrLlHgjqVHdR/upTkVULo48sw8
	l+15Z1tTovl4rO99o0zdd1QYe0613MTMtZCu+BVKxblgCtg1cHd9arKsC92gbBYj0dYmQd9n5Ujqo
	Vo9+DbRPLgIOjtIXOb8UVxq7mv0Vm0zu7iHd1jjtgXf1+Hku139CBLY4rHORfbFsFV5ahidDhYfoD
	G2X9FdhuNTR+db5T48JsfAL0X/bDhIrregWZ74YkOues9jm8VSKqJbDbMGfOPk6aYl5qRy6LSmoit
	cqorAEFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYkJ-00000004Kqe-3Lyi;
	Fri, 20 Dec 2024 08:52:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOYkG-00000004Kpe-30Yf
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 08:52:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYkF-0005q9-IF; Fri, 20 Dec 2024 09:52:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYkE-004LXA-1w;
	Fri, 20 Dec 2024 09:52:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOYkF-00DE0m-0y;
	Fri, 20 Dec 2024 09:52:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20241218-toradex-colibri-imx6-v2-1-a5e810ef7a5b@pengutronix.de>
References: <20241218-toradex-colibri-imx6-v2-1-a5e810ef7a5b@pengutronix.de>
Message-Id: <173468474729.3152094.9455792557747088421.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 09:52:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_005228_757724_E7246DE2 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: Re: [PATCH v2] ARM: boards: Add support for todarex colibri imx6
 on iris
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Dec 2024 15:08:19 +0100, Jonas Rebmann wrote:
> This patch adds support for the toradex colibri imx6 on the carrier
> board toradex iris. Both imx6dl and imx6s variants are supported but
> only the imx6dl was available for testing.
> 
> Tested was:
>  - UART console
>  - Boot via USB loader
>  - Boot via eMMC
>  - Ethernet/tftp/nfs
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: Add support for todarex colibri imx6 on iris
      https://git.pengutronix.de/cgit/barebox/commit/?id=9581980c4241 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




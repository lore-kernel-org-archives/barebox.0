Delivery-date: Wed, 19 Nov 2025 18:35:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLm5d-002jW1-13
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 18:35:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLm5c-0002nq-Q1
	for lore@pengutronix.de; Wed, 19 Nov 2025 18:35:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hf7GIA2sLWyWBLihAG5kOdsrNLEH3NJJvVu9ZSCPwpA=; b=0e+/w+MoHGjNY/8AV/tdWw10Yv
	gnruaXYKvOe0Bvi+m2WtsPXRM2ClEU6PmZtjq4G3ACgMNfyHQ07peRxinfJ0se/TzMRt7l8rUEsw5
	rAXKFuXDqqiw4L3p2zy08iaoKGkrRDu380Np1BtCzco1tTL/6oSqshz/66co614Yf0iGTMYoJPN/G
	6UtdGWy+Cjks/MnE6JfPnqrkqaDDPDuqgRmK9X3q0XBJ00gGShqKeSharBPQ8XPy2zy6CH7EBMxnz
	BVIVpsmB4dB+ZsVjfXmv8ioLxwagUMx6GqqhP7PJ2AmirjGn7DGojvBIay/sXdhnViIke6tnWL9Db
	5pMoDZJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLm54-000000049fa-2G7l;
	Wed, 19 Nov 2025 17:34:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLm51-000000049dM-3O7I
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 17:34:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLm4y-0002cA-Pu; Wed, 19 Nov 2025 18:34:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLm4y-001HuS-1x;
	Wed, 19 Nov 2025 18:34:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLm4y-00000006ON1-48nZ;
	Wed, 19 Nov 2025 18:34:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251118-simple_panel-v1-1-7d8f617953ce@pengutronix.de>
References: <20251118-simple_panel-v1-1-7d8f617953ce@pengutronix.de>
Message-Id: <176357369253.1523620.2524723795827424059.b4-ty@pengutronix.de>
Date: Wed, 19 Nov 2025 18:34:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_093455_871057_487E3C2D 
X-CRM114-Status: UNSURE (   7.46  )
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
Subject: Re: [PATCH] simple-panel: parse for bus-format of the panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 18 Nov 2025 11:39:33 +0100, Michael Grzeschik wrote:
> When the bus-format is set in the simple-panel devicetree
> use this for BUS_FORMAT queries of the vpl interface.
> 
> 

Applied, thanks!

[1/1] simple-panel: parse for bus-format of the panel
      https://git.pengutronix.de/cgit/barebox/commit/?id=48da104cf7fb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




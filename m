Delivery-date: Fri, 13 Mar 2026 12:14:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10T6-000AfO-0l
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 12:14:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w10T5-00052D-N7
	for lore@pengutronix.de; Fri, 13 Mar 2026 12:14:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X4NV4iPCUcBIfdCPBvOOKJmUTcI/rM7z3wJdpxSKI7E=; b=anlTabUVs3w1+MXQvNsK1mWYdd
	p+iWjFpq7Ipphr0ubk0UWcVVmxrYsG1B4qec1LjWQxNHlQ3PCCVSFP17d2kfS94inhNJogFZkHxs7
	AIGhR0DVa7bKsDcZgNr07jGGbd6wZW0nx1YIXek1qb8pVRC6OOUx36+B7RyHAJ8RtqjPsLumEMxuu
	0OXG0pMo6JaJaxn7YWy0u4R21RHcyTYwpxVDjbC9tph+xoX4nI3rRPDcePg3WRzjq5joUv/ksCgp/
	yPNcBL1j5jHTiMKilkLg55nEq/NbetI44qlJzEA0QdF/vlLVVSB1FvLPnJDoyOqt8koXSNBh01w/u
	AVXf6LSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10Se-0000000Hb2F-0svY;
	Fri, 13 Mar 2026 11:13:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w10Sc-0000000Hb0m-0RHY
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 11:13:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10Sa-0004vV-8h; Fri, 13 Mar 2026 12:13:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10Sa-0004RX-0H;
	Fri, 13 Mar 2026 12:13:40 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w10Sa-00000000rga-08HT;
	Fri, 13 Mar 2026 12:13:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260312160433.194560-1-a.fatoum@pengutronix.de>
References: <20260312160433.194560-1-a.fatoum@pengutronix.de>
Message-Id: <177340042002.206359.73330334326620046.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 12:13:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_041342_143045_D9AA1FC5 
X-CRM114-Status: UNSURE (   5.60  )
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
Subject: Re: [PATCH master] of: fdt: refuse / in property and node names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 17:03:54 +0100, Ahmad Fatoum wrote:
> / is used as delimiter between nodes, so seeing it in a device node name
> hints at something fishy going on, so refuse that outright.
> 
> 

Applied, thanks!

[1/1] of: fdt: refuse / in property and node names
      https://git.pengutronix.de/cgit/barebox/commit/?id=aca01795056d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




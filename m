Delivery-date: Tue, 18 Nov 2025 09:55:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLHUY-002Gdp-2U
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 09:55:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLHUW-0001T2-Jq
	for lore@pengutronix.de; Tue, 18 Nov 2025 09:55:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u85DjSxZs0FvrfMS1u3QVJsSNya7N0Mi3B5pv4Iq6Cs=; b=vDQwcBCfrRmLFHtfDMdzdYBzyO
	gSe2svkgdOUfeo33vFKPLGL8simLd4YyI7WC75G5MjUTkD90xnorw42D95Pfh4rfokmSlSRzlWRJm
	MR3tKnNUlQS+S0UekDbXSUvE0j31WuO2gJgrV9cdq1vdFkw8wX7qLLaTG00TxDJ+Jsakd2hqX4aVC
	aNfM9jA30eJVr7IQE3tNDUktZbEw0S8krdcq6EHFlM33+mWluEsOxGqCaAt76XWE7pOTnJNUc3Pfi
	IUESS+ayrLcVBWbLun8cltHktp7vao88RQC+2uvvCGnUj/VxScEfWOxHPUoqNFZ++zyk66dA8ttmo
	Ccm0PSVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHU4-00000000756-1wzM;
	Tue, 18 Nov 2025 08:54:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHU0-0000000072b-0fM5
	for barebox@bombadil.infradead.org;
	Tue, 18 Nov 2025 08:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=u85DjSxZs0FvrfMS1u3QVJsSNya7N0Mi3B5pv4Iq6Cs=; b=jzW+3/+9/z/oTn+pr6XPrf8wro
	L9sPoSOfmM/DH0NWFnaUcGmuRqZvIwOeZJCKdDJF1WndHsl4pbaGlFuxlmz6xOVHl6PzwQ2DaKoPQ
	Y1bvAVzpWAbnsAHZ04GWuQrj8WNclIpHdX3NWujDrx71bf8rxbUQpAE3fmgYWenCrBXkiY9jxq+0Q
	V0BBJKTxGARUMXIdNqlBmyiVx5O/vDHIE+CTCxgr2QbHCh3dWVo/RVT9HL6R+TcnooPLwSV3rB1TI
	9zd10uRYUAipkWQUbDi3U612MRm6nOxIj8d47uGkxm5LLMWcxPbIbZggD1afQG5sjqfbB0yYUOJRU
	cJdJfh3g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLGcJ-00000009D0R-1EQY
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 07:59:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLHTu-0001KO-Ed; Tue, 18 Nov 2025 09:54:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLHTu-0013Jn-0A;
	Tue, 18 Nov 2025 09:54:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLHTu-00000003cTC-1n8X;
	Tue, 18 Nov 2025 09:54:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Maud Spierings via B4 Relay <devnull+maudspierings.gocontroll.com@kernel.org>
Cc: Maud Spierings <maudspierings@gocontroll.com>
In-Reply-To: <20251114-eqos_rmii-v1-1-4a20cf7cb4c0@gocontroll.com>
References: <20251114-eqos_rmii-v1-1-4a20cf7cb4c0@gocontroll.com>
Message-Id: <176345607397.862559.16012078450682232330.b4-ty@pengutronix.de>
Date: Tue, 18 Nov 2025 09:54:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_075911_503378_D751D241 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: Re: [PATCH] net: designware-imx: don't set txclk when mode is
 (r)mii
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Nov 2025 16:05:17 +0100, Maud Spierings via B4 Relay wrote:
> Add an early exit to eqos_set_txclk() when the mode is (r)mii.
> 
> The "tx" clock is actually something called the "slice 81 clock" which
> must always be 50M for the rmii mode. This will later get divided into
> the actual tx clock /2 or /20 which does match those clock rates. Still
> the provided clock != tx clock when the mode is rmii.
> 
> [...]

Applied, thanks!

[1/1] net: designware-imx: don't set txclk when mode is (r)mii
      https://git.pengutronix.de/cgit/barebox/commit/?id=173d4f2bfc11 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




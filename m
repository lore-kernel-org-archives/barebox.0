Delivery-date: Mon, 27 Apr 2026 14:30:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHL6i-00GwZX-1A
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 14:30:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHL6h-0005fD-Ra
	for lore@pengutronix.de; Mon, 27 Apr 2026 14:30:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=97Ng6WYa7ninlYlTMRXC8UW2JiQZY7PBqLyV7PXkVKw=; b=JNGHuCMybf/aw65165y2DcpDki
	XnKU/bFWklIx+SLWsCbSiK1H6OzcXHENvKDcEALTDtItpoMVnH4w3UT3UaP9T4M79/LG1aYWFZnqL
	CZvNdMeK94lvTelzWQRVq2rGV0vZP6PTre2d8pGFph0Mnsv6hvlWoRoTBLlhPlsxrjhjMU3+bp6fM
	kFDNzFKRqjLgCHnrDFREB/cu9/zZcq1D0MzWUynciliGVCGVFb0sVgcDA2s3x9HRTqLunlIuL/a1L
	PxdqTKdrYZAUrANdf3TjQoFBDpujIHmm/066N/B/JqhPasgk5TOtqAEYHig+AHZEoafoFPBRLHIES
	S+iGf7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL6M-0000000GusU-3Td8;
	Mon, 27 Apr 2026 12:30:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL6K-0000000Gus6-0VIc
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 12:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHL6I-0005Wo-Ly; Mon, 27 Apr 2026 14:30:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHL6I-007UJt-1b;
	Mon, 27 Apr 2026 14:30:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHL6I-00000005SLb-1m13;
	Mon, 27 Apr 2026 14:30:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
References: <20260423-socfpga-agilex5-dwmac-binding-v1-0-19b4b0cddbee@pengutronix.de>
Message-Id: <177729301042.1300181.17219576843927482000.b4-ty@pengutronix.de>
Date: Mon, 27 Apr 2026 14:30:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_053012_165796_FAD87AD1 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] ARM: socfpga: xgmac: switch to upstream device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Apr 2026 08:58:10 +0200, Michael Tretter wrote:
> The compatible used by the xgmac driver in barebox doesn't use the
> existing binding for the xgmac, but uses a custom compatible string.
> Therefore, the Ethernet nodes that are already defined by the imported
> Linux device tree are not used.
> 
> Update the driver to use the same compatible as Linux and remove the now
> obsolete downstream device tree nodes.
> 
> [...]

Applied, thanks!

[1/2] net: xgmac: switch to upstream compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f7d956b1377 (link may not be stable)
[2/2] ARM: socfpga: remove obsolete gmac device tree nodes
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2a8d03fc86c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




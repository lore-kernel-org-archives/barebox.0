Delivery-date: Fri, 28 Nov 2025 08:12:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseH-005hpF-2i
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 08:12:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOseH-0003jb-Ac
	for lore@pengutronix.de; Fri, 28 Nov 2025 08:12:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wiu+ovguWrjgA/fmnC89enf0fJ/f4BebHqEg2nAyE7Q=; b=SRCtySI/qe8REnCyiq3LDlj+xH
	WC8ElUFLr6tAxw17190wGTsNjkb610QPIJV2eSamc3viQxDPb5PXWug0LlyrdO/ROeGxeE+lZhc8Z
	M4Gm4F+sm7aMv8W4B+z3z4LwVDTrKTUyKIpmTkhLUBLOAEvMb12GlRoaWTvI8+UKbz1AKbGqnFj9M
	qgdLq7ZW3txJgcwUuqhaS+fQpV12I/If5otUD38f1fIVZ6znOL4W0jwoS6H288nfEqvboQzeaNdi4
	GLWA8KiNVc+m7VjzHqZGt7OtelHxqc8NXjcfYbQPuh+JJ6jGQbSRJBnTJeHvlOg+FfJY7WBlpLUT5
	Z0lrMFSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdi-000000004oY-01gw;
	Fri, 28 Nov 2025 07:11:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsdf-000000004nt-2BWf
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 07:11:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsde-0003NA-1Q; Fri, 28 Nov 2025 08:11:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsdd-002uxe-2k;
	Fri, 28 Nov 2025 08:11:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOsde-00000009Pnz-108O;
	Fri, 28 Nov 2025 08:11:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251127-imx93-dt-v1-1-62e9fcc32770@pengutronix.de>
References: <20251127-imx93-dt-v1-1-62e9fcc32770@pengutronix.de>
Message-Id: <176431388979.2244131.17052491843675424671.b4-ty@pengutronix.de>
Date: Fri, 28 Nov 2025 08:11:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_231131_564892_63C83A6D 
X-CRM114-Status: UNSURE (   5.88  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] arm: dts: imx93: Add LCDIF & LDB nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Nov 2025 15:19:28 +0100, Michael Grzeschik wrote:
> LCDIF port 1 is directly attached to the LVDS Display Bridge (LDB).
> Both need the same clock source (VIDEO_PLL1).
> 
> 

Applied, thanks!

[1/1] arm: dts: imx93: Add LCDIF & LDB nodes
      https://git.pengutronix.de/cgit/barebox/commit/?id=9146e578eaff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




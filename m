Delivery-date: Tue, 21 Jan 2025 09:59:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taA72-002aR1-0Y
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:59:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taA72-0006SS-Ay
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:59:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PALuzWfB1PhlFlNpfA+tHese4QLmnKRvk67NHM+T4TQ=; b=kqqHA1u7BZ/vXywXG6lxDl3qk1
	wo59Jk4HX3mNSCo3n9QVwUQoHRJABUKFXbJbVLsIvtPhj50guuiZjdgjOAJWU3JA/gm3H1QQYekPy
	h6tuQvJEyQb+WgWVXOMiyuKYrGN/FHXhx2Qcl3QBuAxIlCDpkIRSTbj9QK/Lxf4Fww6RJXRuNv/IO
	W+MzLfn5xwXSzAUyz+alXMrJ58pj2D4WJJdhzEJcCwJWDl8vkl2Dyr3p3nWKodP0qtP3vJlV4D+bS
	3IjpGEXmlG4Zi3eqapW/WawLukPUmONvT1PCsZD+4Fb0Vj6d5Mt4qbN8t6k4i4+i+ZyETrarL2z+E
	7IwuW4AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taA6c-00000007LJr-37bW;
	Tue, 21 Jan 2025 08:59:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taA6Z-00000007LJJ-3ten
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA6Y-0006KW-BW; Tue, 21 Jan 2025 09:59:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA6Y-0014uf-0Y;
	Tue, 21 Jan 2025 09:59:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1taA6Y-0015Co-0M;
	Tue, 21 Jan 2025 09:59:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250116140924.298889-1-a.fatoum@pengutronix.de>
References: <20250116140924.298889-1-a.fatoum@pengutronix.de>
Message-Id: <173744996610.258264.2524570593652245073.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:59:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_005928_005584_26C80813 
X-CRM114-Status: UNSURE (   6.65  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: allow overriding mkimage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 15:09:23 +0100, Ahmad Fatoum wrote:
> mkimage is not built as part of barebox and the barebox build for the
> BeaglePlay assumes it's in PATH. To make integration in build systems
> easier, let's allow specifying the location of the mkimage binary via
> the MKIMAGE variable.
> 
> 

Applied, thanks!

[1/2] kbuild: allow overriding mkimage
      https://git.pengutronix.de/cgit/barebox/commit/?id=367dbec66b2c (link may not be stable)
[2/2] kbuild: allow overriding compression tools
      https://git.pengutronix.de/cgit/barebox/commit/?id=29082943c3ca (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




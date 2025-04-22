Delivery-date: Tue, 22 Apr 2025 10:37:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7985-003yRm-2w
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7985-0000ew-3d
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:37:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VKDCKEIGrlOOV/h13Y+bhvGgcDdHYhfRO7GcxM1Rr70=; b=SQxfKuHfpGZxE2qKjDd/HlOegf
	nug681S0ZZi1CAdh+2VlpGbRBCGNNbVnJj03jgCOduiN2yiN/h4Dnk8giegtr+08xmgqE8NCIXruI
	CCHJGtQFD/FoNXA6Ql0NadbVx0ni38g+nnNArDGM4GeenSMSibAFGeJCCqJRAAaVFz4/vgHF5y+OQ
	yYcNRUKmsGEdt2UK5s1jO3xDFR12KtRDaoh+kcegqtzAW4oTLa+QztGwhTXJ39IDXGIvStTFXiggi
	qttCLGeSPYvfN3e0GiT5i6s+bWCRYjPjppo+jbESokdL3hYJL5a4eJ3aDAI5I0umI8phI2PW6dJ8R
	93XQMS1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u797e-00000006LP1-0WQQ;
	Tue, 22 Apr 2025 08:36:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Gr-000000069xL-49jY
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:42:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Gp-0006in-4J; Tue, 22 Apr 2025 09:42:19 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Go-001Vtc-30;
	Tue, 22 Apr 2025 09:42:18 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78Go-00CYmS-2n;
	Tue, 22 Apr 2025 09:42:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, 
 Michael Olbrich <mol@pengutronix.de>
In-Reply-To: <20250422063910.126829-1-a.fatoum@pengutronix.de>
References: <20250422063910.126829-1-a.fatoum@pengutronix.de>
Message-Id: <174530773886.2993589.7402067742484019436.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 09:42:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_004222_038698_F7D95E62 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: treat char as always unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 08:39:10 +0200, Ahmad Fatoum wrote:
> The C standard makes it implementation defined whether a plain char is
> unsigned or signed and the architectures where barebox is compiled for
> differ in that, e.g. chars are traditionally unsigned on ARM, but on x86
> for example they tend to be signed.
> 
> This caused different bugs[1][2][3] in the past, especially around
> behavior when casted to int. Let's instruct the compiler to treat char
> as always unsigned. This may fix some issues that flew under the radar
> so far, but also break drivers that were compiled and used only for
> specific architectures, which implicitly assumed char is signed, which
> we'll have to fix.
> 
> [...]

Applied, thanks!

[1/1] kbuild: treat char as always unsigned
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a6033a6610b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




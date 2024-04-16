Delivery-date: Tue, 16 Apr 2024 15:35:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwixs-003Qd3-37
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 15:35:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwixo-0006rN-EM
	for lore@pengutronix.de; Tue, 16 Apr 2024 15:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UYgC0jIuF4Rlgt2t+XF/uUUPhdY6xdLuEhnNjoHj+i4=; b=aWgNOHqKKqVmegCOJnIDQ3+m60
	nW3JSfB0AmxRjq3Xx/PPX4St6ta0rNiaRbYnBDTpp/PqeW6puQguE3W7G0r7BNOUBzN36FuanlbiK
	rnAD+52Tcge8/SwHcV/+Vy+OkBz0FpPyQb9ZHPS/rRqpfFzg1PT0/wW1iCbxlbt+Swe35mcs34tlW
	0YpNy0RvOhsp/FqxpBgWEt2DT5J2wN3KgtMq7XwBHO6ZWk9L0x6d9jKJcpjhU8p64tJ4bMb/H12b3
	CyyVUYMM/xMqe0R9to3UjWW0ytuEqC0amPNnMo3s+xnH9opMm54EPhyGLBnNq+6JaLH+ZP3uxgYtJ
	S/hh/QkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwix1-0000000CLGD-389f;
	Tue, 16 Apr 2024 13:34:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiwt-0000000CLDr-2TLR
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 13:34:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwiwp-0005FS-S7; Tue, 16 Apr 2024 15:34:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwiwp-00CcRO-BP; Tue, 16 Apr 2024 15:34:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwiwp-008C5Z-0x;
	Tue, 16 Apr 2024 15:34:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
Message-Id: <171327444729.1952917.8961298051753998541.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 15:34:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_063411_663689_8557C4D6 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/4] arm: boards: add wolfvision pf5 mainboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Apr 2024 15:32:11 +0200, Michael Riesch wrote:
> Habidere,
> 
> This series adds support for the WolfVision PF5 mainboard, which serves
> as base for recent WolfVision products. It features the Rockchip RK3568
> and can be extended with several different extension boards. The
> WolfVision PF5 IO Expander is one example of such an extension board.
> Support for this extension is also included in this series.
> 
> [...]

Applied, thanks!

[1/4] arm: dts: copy pf5 device tree from mainline linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=50b1eceef4eb (link may not be stable)
[2/4] arm: dts: add common state for wolfvision boards
      https://git.pengutronix.de/cgit/barebox/commit/?id=fdfa97893c38 (link may not be stable)
[3/4] common: add wolfvision board code library
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f20e518aad1 (link may not be stable)
[4/4] arm: boards: add wolfvision pf5 mainboard
      https://git.pengutronix.de/cgit/barebox/commit/?id=69bfc54d6eb0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 28 Oct 2025 08:27:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDe7R-00Cbo8-0P
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 08:27:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDe7Q-0003av-Kr
	for lore@pengutronix.de; Tue, 28 Oct 2025 08:27:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VibbY5wYTI4lKgIDONIgPloA0hZLrP3gnne/GrxjSSo=; b=Tg4QdHzCfYwHOgdIjogs0fV2d9
	CtombqWZa/uXdR/YNkfKdN885SWupQNabXJ6iTrwBbo+2H6nRb2tEzeTZJrI1leEknwwIBnElKk1w
	FehAcfNOhRR6EKpRyK5zAj+yXE++XHPMI+fy1B27zQqVjktGNuSivs5AO0l6yLJZrlqSA/yfLzFxE
	LPT0iO8Fx7wlY9WSaCsXaHzQRZqczBfsuOxuuv6CjR1+AC2L/4+04thm4/A9RMlSAt1a6uFi074uL
	hCdo5hb5uW8d5y/QZ7i8KpmA27LfefLZMEUCJopmgyX7bsa3CGOoexhR5AlroqHlklacSIe2bJgTQ
	l7IIHytg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDe70-0000000FPQm-1T5P;
	Tue, 28 Oct 2025 07:27:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDe6x-0000000FPQ0-43Jl
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 07:27:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6w-0003TN-BY; Tue, 28 Oct 2025 08:27:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6w-005pwz-0Y;
	Tue, 28 Oct 2025 08:27:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDe6w-0000000BfdB-2KWF;
	Tue, 28 Oct 2025 08:27:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251027073622.2468586-1-a.fatoum@barebox.org>
References: <20251027073622.2468586-1-a.fatoum@barebox.org>
Message-Id: <176163643810.2781516.18358920127273592720.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 08:27:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_002720_008929_6915223F 
X-CRM114-Status: UNSURE (   6.18  )
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
Subject: Re: [PATCH] video: Rockchip: add vop2_data::version field like
 Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Oct 2025 08:36:21 +0100, Ahmad Fatoum wrote:
> This makes it easier to compare Linux and barebox code.
> 
> 

Applied, thanks!

[1/1] video: Rockchip: add vop2_data::version field like Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e5569ee8f3e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




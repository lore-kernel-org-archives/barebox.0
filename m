Delivery-date: Fri, 23 Jan 2026 08:12:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBKy-004OkG-1h
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:12:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBKx-0002Ro-Fx
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:12:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+iDhCYIUTrcI7BSYv1GBTHF0wmG4WtKz9Tjn+brw/FQ=; b=c7Gv6NzP5KWQxRBxvdEZU0DYQB
	ZWDwz6knfPqIMC3aJ2Nmgh9aOOjKAc1Pf7xqcDUInUXHhZVKShY1ziMjAvJE2p+S7gyCtug9cJ3lb
	Gfafp8NWsXt0JPPKn+wf1FRWUV8JVmF6rxbXYgtrULsS1sxT2IU4P+gE+uX/EmGMsK2VVTiHNc2rk
	ND3jOt8Rz1dOeRE4YrvXWtF/ImC9QBVX95/h0F2QUUed9ZZARZaMj9gYN7Vgbu2lReUOSGUGgzNs4
	4mdrAatREEiekV7eMhJI9qL/tYlNx8Tf+NLVWHyfpqTcPjdUQ7KqUu1HhYIqObsec1zDX7Jiz1Vtd
	2TrDxK/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBKP-00000008Lf9-11bR;
	Fri, 23 Jan 2026 07:11:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBKM-00000008LeP-0wiC
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:11:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKI-0002JL-Nd; Fri, 23 Jan 2026 08:11:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKJ-0023F2-0d;
	Fri, 23 Jan 2026 08:11:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBKI-0000000GBhx-1ybU;
	Fri, 23 Jan 2026 08:11:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260120122453.627239-1-a.fatoum@pengutronix.de>
References: <20260120122453.627239-1-a.fatoum@pengutronix.de>
Message-Id: <176915228646.3858088.1790532781299611339.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:11:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_231130_269268_193FF221 
X-CRM114-Status: UNSURE (   6.69  )
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
Subject: Re: [PATCH 0/3] ARM: socfpga: shrink socfpga-xload configs in size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 13:24:43 +0100, Ahmad Fatoum wrote:
> Just shaves off 1 kilobyte (out of 60K), but it gets CI green again for
> now.
> 
> Ahmad Fatoum (3):
>   include: asm-generic/bug.h: allow disabling CONFIG_DEBUG_BUGVERBOSE
>   ARMv7: hyp: allow disabling support for invoking barebox in HYP mode
>   ARM: socfpga: shrink socfpga-xload configs in size
> 
> [...]

Applied, thanks!

[1/3] include: asm-generic/bug.h: allow disabling CONFIG_DEBUG_BUGVERBOSE
      https://git.pengutronix.de/cgit/barebox/commit/?id=4960df3b58ee (link may not be stable)
[2/3] ARMv7: hyp: allow disabling support for invoking barebox in HYP mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5e631936133 (link may not be stable)
[3/3] ARM: socfpga: shrink socfpga-xload configs in size
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa074a458034 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




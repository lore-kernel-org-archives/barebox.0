Delivery-date: Thu, 28 Nov 2024 10:28:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGapA-001Oj1-0I
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:28:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGapA-0005UI-2R
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:28:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zccQuoJqGY5sSaJ+01lAf3wSKHYMxejMB8qdyqpHpN0=; b=LNBM73HY7NEtlKuUkexMP2g7OH
	B6guPoqt2cNUNLcI9CmzvWnTbRjHUgk0OUkG5WLR+TIeWx0zLY5Cy3PHScX/cHtLd9BYJLXoDFgSY
	XGn7PKbhfPV55cpNoYzPHM9yzYErOvBH+xQb/j5gK5dAU6/PBaH7RTUu2Q/aI0ubjKm/Drlo/mm+r
	B/XkvoV5O4L+iQKHGN+Kf+sMN8Xdg0M91Jq0c+TE31sZRp5HEN2H5DoC6FlormjtkskTp3sIiL4V+
	CFHa3jSAcIcFL24vDvYU0+oeLudxFTPbPWKiI20jpn6COb7vt1mlgQtC47yUpOXzVvjXc6S+9F8zm
	PgFZU1Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaok-0000000F8iA-2AdF;
	Thu, 28 Nov 2024 09:28:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaoh-0000000F8fE-1ldt
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:28:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaof-0005JK-Sd; Thu, 28 Nov 2024 10:28:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaoe-000aXg-2p;
	Thu, 28 Nov 2024 10:28:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGaof-00FurQ-1s;
	Thu, 28 Nov 2024 10:28:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241125151353.428428-1-a.fatoum@pengutronix.de>
References: <20241125151353.428428-1-a.fatoum@pengutronix.de>
Message-Id: <173278608558.3793449.14240366594456022504.b4-ty@pengutronix.de>
Date: Thu, 28 Nov 2024 10:28:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_012807_465081_0F0E2ECA 
X-CRM114-Status: UNSURE (   6.40  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] commands: reginfo: make command
 mpc5xxx-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:13:50 +0100, Ahmad Fatoum wrote:
> The reginfo command sounds very generic, but it's actually only used on
> the PowerPC MPC5xxx. Move the command there.
> 
> 

Applied, thanks!

[1/4] commands: reginfo: make command mpc5xxx-specific
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9a83b4c3fec (link may not be stable)
[2/4] include: common.h: move out get_ram_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ccff8cc19d3 (link may not be stable)
[3/4] include: align: reword STACK_ALIGN_ARRAY macro parameter for clarity
      https://git.pengutronix.de/cgit/barebox/commit/?id=921613ba9c08 (link may not be stable)
[4/4] ARM: bcm283x: remove common.h include in mbox.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=e36001c647da (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




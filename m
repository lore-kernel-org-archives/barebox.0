Delivery-date: Fri, 23 Jan 2026 08:45:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBrb-004PP6-09
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:45:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBra-0006Oh-2o
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:45:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4uMeigUmjfuYBFPKiaw9/ih0gZ62jLTBYiMv4M9B/ao=; b=agOWiR5y3cnsmEo2vd9IWwX53J
	zucOUvKqc/01ZQ1OqLwV4FVL2M+NBpZ/W9ITBI6A884liOWnSdCiQjK9NdJPqKxQtDpgzb1P52Vu8
	0Zn2ECuK3a1OND2+WxUjdmCd7XJIuPWTPIo0s5wwWSv1Y01qhDRvygS52SlbM3H0j/wAhCJuLOJfT
	JH8iYTaD9hbt4uQXBZTdiR8kyFq7YvKHu96Pc/fin924qiLi0GrXTQN1jrvI5CihgAZpXm3aC/k5X
	v6GEBX/BUru8L9G6zJmF+NGfaEUx8k/IY0KIf5YGFoSuQsCEDNGvr825NfZW5UDqG34Dvt8KrsxtQ
	BBVYtwHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBr6-00000008OKH-4C73;
	Fri, 23 Jan 2026 07:45:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBr4-00000008OJW-1oEt
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:45:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr2-0006Hq-PS; Fri, 23 Jan 2026 08:45:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr3-0023YH-0l;
	Fri, 23 Jan 2026 08:45:16 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBr2-0000000GDog-28jt;
	Fri, 23 Jan 2026 08:45:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
In-Reply-To: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
References: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
Message-Id: <176915431650.3866187.4327761330604404177.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:45:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_234518_476540_B7F63B04 
X-CRM114-Status: GOOD (  10.34  )
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
Subject: Re: [PATCH 1/4] of: fdt: implement of_del_reserve_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Jan 2026 12:36:46 +0100, Ahmad Fatoum wrote:
> OF_MAX_RESERVE_MAP is only 16 and we have instances in the code that add
> reserve entries in device tree fixups, which means it can be exhausted
> when fixups are applied repeatedly.
> 
> Whether it's still apt in 2026 to use reserve entries is a different
> discussion, but let's just add a way to delete reserved entries again in
> cleanup code.
> 
> [...]

Applied, thanks!

[1/4] of: fdt: implement of_del_reserve_entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e28508ce3a9 (link may not be stable)
[2/4] ARM: sm: fix repeated call to of_add_reserve_entry on every fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=946388dee629 (link may not be stable)
[3/4] bootm: delete initrd reserve entry on bootm_boot return
      https://git.pengutronix.de/cgit/barebox/commit/?id=8eea7a84b975 (link may not be stable)
[4/4] video: stmfb: add screen base only once
      https://git.pengutronix.de/cgit/barebox/commit/?id=31e8d676439c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




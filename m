Delivery-date: Mon, 03 Nov 2025 09:42:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq9L-00EnNI-0Q
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 09:42:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFq9K-0000VB-KM
	for lore@pengutronix.de; Mon, 03 Nov 2025 09:42:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j6a1iNwusALB6pWtq5r65MKwKs43oRtJv1+36u0sAe4=; b=SYvOFV5mlJ/qMq/+i/EoT676O2
	WnEIJ/csbKCA4JFKPo9Ycd48anwblTOl5aUUA65EH7W8YZ4d4+5TzSnm56DHWJjh7sqB9OJQcnnJ3
	sKRTaK/urOF8IT9RoC0my7jPSrsE8xhpkQuLrWOAUbPSCoedMcpIDP9evHVMsp8gxer5Pnfl6PFqR
	TLl+zKPGFoXu4JQFNBXGcs0HhAbuzDWs/kjip2WeIwBcw5wN/WhwLAUmF/ZTUSMCFNOlZe1NbhDPF
	ExiLsusdWAAGyilfGyL8K1JXDtPXCcMN3SFzT3xuJGZCTyg1lmC4aNmGK4GKLRYnG/FD8eb1lbLAo
	Eyzmrz5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq8t-00000009S6P-1mh9;
	Mon, 03 Nov 2025 08:42:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFq8r-00000009S5f-1Kxn
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 08:42:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8p-0000Kn-Ra; Mon, 03 Nov 2025 09:42:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8p-006pT7-28;
	Mon, 03 Nov 2025 09:42:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vFq8q-0000000HLkg-0CgQ;
	Mon, 03 Nov 2025 09:42:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251103074509.302260-1-a.fatoum@barebox.org>
References: <20251103074509.302260-1-a.fatoum@barebox.org>
Message-Id: <176215933960.4135129.6975035075206516935.b4-ty@pengutronix.de>
Date: Mon, 03 Nov 2025 09:42:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_004221_364272_880831F6 
X-CRM114-Status: UNSURE (   8.85  )
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
Subject: Re: [PATCH] common: elf: rename elf_section misnomer to
 elf_segment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Nov 2025 08:45:08 +0100, Ahmad Fatoum wrote:
> An elf section is needed for linking, the segment is needed for loading.
> 
> We only handle statically linked ELF files currently in barebox, so we
> do not look at the sections at all.
> 
> Replace the misleading struct elf_section with the correct naming:
> elf_segment.
> 
> [...]

Applied, thanks!

[1/1] common: elf: rename elf_section misnomer to elf_segment
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea3dc64d3218 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




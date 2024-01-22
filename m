Delivery-date: Mon, 22 Jan 2024 10:37:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqkM-00BHbL-0f
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 10:37:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqkM-0003Ur-U7
	for lore@pengutronix.de; Mon, 22 Jan 2024 10:37:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x41yilSPFUHczsWbaIKIqvuI2Daka1B5ebIZ7szYw78=; b=w91vrWPlJT0gv3uDvngHjRD67B
	V5Npx9awVZzwIDt+5HX1pFYQ9OXXwNOq/kMhtmxvs+XN3Uxsbf03JGxfBKfgFTAoN9xct/wp5qTra
	Gf/+fQLeMx4es26JR+xv3th6k5/gtw0IqIm1ulEyGNgpz2pOWziXmk0hDstHJxvewvaK00sK0BYPV
	pSpIKQygZ8w6SbXpEqdTS7t/OsjYYvfL39G7EtxMoPEwH5oD64RtgznEoaqpxG1c0uIocyt0eq4Tf
	9g4/gVKHo2L/AiepG4ZzzHk7FCq3hqPozc8HKmPNXXu1gO9kYgpKb3RKqRcJbOp1v6SCfIgT/Aaym
	rK+uIw9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqjQ-00BJNF-1F;
	Mon, 22 Jan 2024 09:36:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqjK-00BJMa-2R
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 09:36:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqjJ-0003J6-K8; Mon, 22 Jan 2024 10:36:33 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqjJ-001YmB-7n; Mon, 22 Jan 2024 10:36:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqjJ-007yzE-0a;
	Mon, 22 Jan 2024 10:36:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240119215438.1354583-1-a.fatoum@pengutronix.de>
References: <20240119215438.1354583-1-a.fatoum@pengutronix.de>
Message-Id: <170591619317.1902715.2510313905703984300.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 10:36:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_013634_790661_63DC5C5F 
X-CRM114-Status: UNSURE (   6.95  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: fix Debix environment partition
 unit address mismatch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 22:54:38 +0100, Ahmad Fatoum wrote:
> The environment partitions start at address 0x100000, but the unit
> address indicated otherwise. As the reg is what matters, align the unit
> address to follow suit.
> 
> 

Applied, thanks!

[1/1] ARM: dts: i.MX8MP: fix Debix environment partition unit address mismatch
      https://git.pengutronix.de/cgit/barebox/commit/?id=454a7354148c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




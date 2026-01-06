Delivery-date: Tue, 06 Jan 2026 08:42:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1iF-001oeP-0N
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:42:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1iE-00060S-KC
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:42:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VpZ6+RW4Oi+KoGFe3B4If9BBPyejVpNMZiGqxj7GL38=; b=PDnBRn93+zjcYhyMs1xx3KCGBN
	KOwcV289XWAHeX/Nzx03MvzmIVHrp8pZkB1hY12ClYWSr/rx4OajoKZ6lhMG5y0sQpQoeN3DUbMiI
	2pM6UVu6b4QKJPwSIfey37+eIa1FvyVI3z4qzn9qqjppWcun2fWXLDOcipvsmxUsyJXR8szpWGKhU
	2q7MbgjH9yLcAcCe+PjIPvppC9mQphYe5y8nqwQOfVUdX+6ECitaJ3xVRiuCsQPKCzPUNodRY+uV5
	F73dXmIlw6Xhzpl4itq1nqNS6Kjb1GlVucE6KBzugIYkihJ3hUtc+vbJOvKF56TM2ZtxkLbMwRPKa
	L/IgqkYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1hp-0000000CXam-0Z8B;
	Tue, 06 Jan 2026 07:42:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1hk-0000000CXZp-2VFJ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1hj-0005w1-01; Tue, 06 Jan 2026 08:42:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1hi-009JJk-2b;
	Tue, 06 Jan 2026 08:42:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd1hi-000000088os-381v;
	Tue, 06 Jan 2026 08:42:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260105081251.3244288-2-a.fatoum@barebox.org>
References: <20260105081251.3244288-2-a.fatoum@barebox.org>
Message-Id: <176768533074.1940517.10041646589019270656.b4-ty@pengutronix.de>
Date: Tue, 06 Jan 2026 08:42:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_234214_932494_00725B4D 
X-CRM114-Status: UNSURE (   7.45  )
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
Subject: Re: [PATCH master] sandbox: fix make dependency for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Jan 2026 09:12:46 +0100, Ahmad Fatoum wrote:
> The final barebox ELF didn't have a dependency on barebox.o, which means
> that the final executable wasn't always updated.
> 
> Fix this by adding barebox.o into BAREBOX_PIGGY_OBJS, as the .elf
> rule already has $(BAREBOX_PIGGY_OBJS) as dependency.
> 
> 
> [...]

Applied, thanks!

[1/1] sandbox: fix make dependency for sandbox
      https://git.pengutronix.de/cgit/barebox/commit/?id=82854ee1ff6d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




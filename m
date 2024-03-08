Delivery-date: Fri, 08 Mar 2024 08:09:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUM7-00DNkE-1O
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 08:09:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUM6-0001bB-Sr
	for lore@pengutronix.de; Fri, 08 Mar 2024 08:09:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q6+DapjgDY8pqqV9LYBijhnMgWylzPRrj7/XXYlyrd4=; b=1drPB2QBBxC+QEGCc1Nt9+4NAh
	O2t8kUp/EXFfVfeqGizaaf4qPxmh8gmjD7piDF7r4jmmFAkwjB9xqYXgHAs6UHG1MS4Xsg/1cFz62
	IrelZi8NBXmkj1J5OnucEdT13faCzWgnejW2NlvGpveI0O9ZeXBK/56lJ9lJ1WJ6fYLbuTPdc6y6n
	RA1CeHqDZ7VlPpqW7izbKdsIQ7xhxkegLtSiHG1RBavePyPSciAEOXH9MIalrJ3rDvsFdmlaVRkkd
	cf3Ln5PbjKVvSOaqRR8M5J71fmCM3YshwUjyAbG2flNwwRRzlrNt2PHbZDQb4pCAnZ7M9hM4nwhKV
	LjMOcXQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riULf-000000085IT-0wGh;
	Fri, 08 Mar 2024 07:08:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riULc-000000085Ht-0MSd
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 07:08:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riULa-0001I0-KU; Fri, 08 Mar 2024 08:08:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riULa-0055jI-8A; Fri, 08 Mar 2024 08:08:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riULa-0075oa-0c;
	Fri, 08 Mar 2024 08:08:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240306193924.712323-1-a.fatoum@pengutronix.de>
References: <20240306193924.712323-1-a.fatoum@pengutronix.de>
Message-Id: <170988173018.1689909.13574244903657082060.b4-ty@pengutronix.de>
Date: Fri, 08 Mar 2024 08:08:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_230852_163774_C777358B 
X-CRM114-Status: UNSURE (   8.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] pbl: make PBL_FULLY_PIC specific to ARM64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Mar 2024 20:39:24 +0100, Ahmad Fatoum wrote:
> This has only been tested on ARM64 so far and quick test on a
> Raspberry Pi 3 Model B in 32-bit mode hangs, so mark this
> ARM64-specific for now.
> 
> CPU_64 implies ARM already, but we list both anyway for documentation
> purposes.
> 
> [...]

Applied, thanks!

[1/1] pbl: make PBL_FULLY_PIC specific to ARM64
      https://git.pengutronix.de/cgit/barebox/commit/?id=32da0a9de977 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Wed, 22 Oct 2025 08:56:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSlS-00AWN1-1w
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 08:56:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSlS-00031M-2l
	for lore@pengutronix.de; Wed, 22 Oct 2025 08:56:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sl1lZeezLfgElRbx1+jKLC8FgM3XuUoQxwg4Bnzh0Uw=; b=SslfWCznduM65ltjPIgPxVQxvp
	dIfwETj8kIeDjNj/brX3XvtWn7GR4VjhH5Uq4ngyS4pl8XUjp0C4x1k2cv1/mBwWGD5VnjUzsgPpZ
	EFEQGgCf249KSUeTL+PGP+u/k/XJj3ue9+rhQHYB+kcvnOceJKvHiGcTOcS+jZGuVGllRqBz72YFm
	8hbNTaAeKy90kAde30nBIepgYtV4Tqz6AvCaTXpliX8V2uMRFAolQKtecjVz8XSL2zoi1nCwlG2fB
	JVVsoLgHSxYGNmY5GBit9ccjRX97JGsoYQ7eqa+ezhm0qyic49FYAzHporIgGcu8id0ZdLOyo6QJ5
	01UwoZVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSl6-00000001k6M-495B;
	Wed, 22 Oct 2025 06:55:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSl3-00000001k4P-2STy
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 06:55:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSl2-0002sY-1u; Wed, 22 Oct 2025 08:55:40 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSl1-004qfe-2n;
	Wed, 22 Oct 2025 08:55:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSl1-0000000H5U8-3N1t;
	Wed, 22 Oct 2025 08:55:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251020182640.588413-1-a.fatoum@barebox.org>
References: <20251020182640.588413-1-a.fatoum@barebox.org>
Message-Id: <176111613979.4072639.6964875497603524435.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 08:55:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235541_630889_C59B28E4 
X-CRM114-Status: UNSURE (   5.91  )
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
Subject: Re: [PATCH] checkpatch: increase maximum line length to 100
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 20 Oct 2025 20:26:39 +0200, Ahmad Fatoum wrote:
> Linux has bumped this variable to 100 as well and we do not mind longer
> lines where it serves readability.
> 
> 

Applied, thanks!

[1/1] checkpatch: increase maximum line length to 100
      https://git.pengutronix.de/cgit/barebox/commit/?id=5aeb67b2cbb7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




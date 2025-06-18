Delivery-date: Wed, 18 Jun 2025 11:53:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTv-008ZRT-0m
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTt-0003LX-O3
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8b918IoeRnYwisbaBJZEr0pJyiEgQDqrQ17x9wCX2Lk=; b=JqBnu8d/yLTOOEKBX8Y7Ah5M1X
	9u87RPuV4NshgifEIIrmPhXLpPzNt9Xfpt8LGJ/h/+JvQiYLE0ZsQhfxeRrlo20tWqIyv3Okzkycq
	swVNtcckanI6QZu9H4jArPHM2F953rL+/ouh66HWLjoC5WLyxZtC0yG4A84ETy8glrN3fb40Hb1Z4
	kc7wCC96EeVRVTqDq6DoAiao1f7ChnmChAf85KqTj072dL3xEA5zP6GRJQZczTHyM4HG+bKp4uDxf
	w72KmHu+hx7JxYTbPu731K/gLCnHp9Jqclf9l9VgcNOulzPlgKZBRBGUyw8wao6DpFrGPsT95niLU
	bgucg81w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTP-00000009f7t-19b2;
	Wed, 18 Jun 2025 09:52:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpF9-00000009cky-347k
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:38:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpF8-0000Vf-Ae; Wed, 18 Jun 2025 11:38:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpF8-0047HM-0S;
	Wed, 18 Jun 2025 11:38:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpF8-005T6K-0E;
	Wed, 18 Jun 2025 11:38:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250617124238.2024714-1-bst@pengutronix.de>
References: <20250617124238.2024714-1-bst@pengutronix.de>
Message-Id: <175023948606.1303277.13646179937713821383.b4-ty@pengutronix.de>
Date: Wed, 18 Jun 2025 11:38:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023807_770193_7F56C1CF 
X-CRM114-Status: UNSURE (   6.43  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] console: handle input consoles in
 of_console_by_stdout_path() gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Jun 2025 14:42:38 +0200, Bastian Krause wrote:
> With CONFIG_INPUT=y, inputs are registered as consoles without setting
> the dev member. This leads to a NULL pointer dereference when passed to
> dev_of_node().
> 
> So add a check prior to calling dev_of_node() with a NULL pointer to
> prevent this.
> 
> [...]

Applied, thanks!

[1/1] console: handle input consoles in of_console_by_stdout_path() gracefully
      https://git.pengutronix.de/cgit/barebox/commit/?id=7657eaf3ed3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




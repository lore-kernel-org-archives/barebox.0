Delivery-date: Tue, 22 Apr 2025 11:52:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIW-00407W-1T
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 11:52:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7AIV-0002Bo-UM
	for lore@pengutronix.de; Tue, 22 Apr 2025 11:52:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1n6cWl0Ib+uefUmUTJbc3qRNNG1kV/A6m3fPMgr51Sg=; b=Ozwjla8y2gHjfHpWGTQuAjsahn
	Eli2BYPzYKEZ4UZnrWVSNWfFJnXLW9T54kK1UrQ/+wDK9CmF3un4ntzaqd8M3JDH4BX6kbqBqwZ1O
	C/74TC52V3mzHq41ZIY8Uo5CbeN+sNoVay0desSsah+XAPn7gEbKj+EjEzMCT7hzkCzG/eiAZk2mj
	H1OXGzyFrc71h8fBoWwRPO2YVtpOHrh/7JX70rLvxNXvBXnl4FvYgXQ23D+Fw3rSlDL/IFlWLm9aa
	0xsmngVJktWTCfxVztO9qrAxoKpXsa4yWOr4TLPReLIESc3vUQPtnv0fL5Sn9R6OYEXf0+AaGD5B8
	7mQ7QTfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AIK-00000006dEU-3fE8;
	Tue, 22 Apr 2025 09:52:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78mk-00000006G6s-3Ttr
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:15:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78mj-0004rl-EI; Tue, 22 Apr 2025 10:15:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78mj-001WFC-0n;
	Tue, 22 Apr 2025 10:15:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78mj-00CaZP-0Z;
	Tue, 22 Apr 2025 10:15:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20250422051920.3415169-1-a.fatoum@pengutronix.de>
References: <20250422051920.3415169-1-a.fatoum@pengutronix.de>
Message-Id: <174530971717.3000466.13487746486312284781.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:15:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_011518_872383_4A1EF5FC 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: adapt warning message when resolving supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Apr 2025 07:19:20 +0200, Ahmad Fatoum wrote:
> We have the exact same message in the MCI core, but with vmmc hardcoded,
> which makes it harder to see where the message is originating from.
> 
> As the message in the regulator core is printed out when resolving
> a regulator's supply fails, mention that.
> 
> 
> [...]

Applied, thanks!

[1/1] regulator: adapt warning message when resolving supply
      https://git.pengutronix.de/cgit/barebox/commit/?id=c6c3b15e0750 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




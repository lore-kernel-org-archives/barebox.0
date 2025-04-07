Delivery-date: Mon, 07 Apr 2025 17:27:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oOE-009bRY-14
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 17:27:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1oOD-0004xM-Px
	for lore@pengutronix.de; Mon, 07 Apr 2025 17:27:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XIXTcZSA+fO4khz0HREWFM/A+5EGOzKz6XQ/WSRphY=; b=iPVDloBPPPZHPTLPx5Fx4SM5ya
	tbxtQLcXMaYt5B+OoAN6JjlnYyzgW15LJ3C/ypoElyEHVH0ihDdrtjbLvzF2nYIONzkl2Lr/gIe3U
	ihod8YLdJWtNQkiIfZRN0h8Byv6K0NONqXZ3Oow0t4qjkEQwtvCV5oMgdHZGVlD+R3nACaFYbEQft
	l6AlKTLvNC1F4slQt2xXxB0XHPS0VEfBqw9DiGi6E48bKHyXElxlzlPsFQbibAzvFchPJx1qhx48U
	U9J97vZCEX1J/L9qMPZ1zopBxk9RmMAUirvzcTc9UFGDfKpF4jALHmumLK/Ba6or/iYvXMaOpIM7Z
	XgT9bZRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1oNs-00000000xUb-0Hg0;
	Mon, 07 Apr 2025 15:27:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1m6a-00000000OWX-1ow2
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:01:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6R-0000WJ-3p; Mon, 07 Apr 2025 15:01:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6Q-003lPX-2i;
	Mon, 07 Apr 2025 15:01:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1m6Q-00BdTA-2T;
	Mon, 07 Apr 2025 15:01:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250407104756.3379066-1-a.fatoum@pengutronix.de>
References: <20250407104756.3379066-1-a.fatoum@pengutronix.de>
Message-Id: <174403088676.2773129.11393641147371485796.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 15:01:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060136_472277_DE8BD5AF 
X-CRM114-Status: UNSURE (   6.36  )
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
Subject: Re: [PATCH master v2 1/2] bootm: associate bootm overrides with
 struct bootentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 07 Apr 2025 12:47:55 +0200, Ahmad Fatoum wrote:
> The boot override logic is currently controlled by the boot command,
> which makes it cumbersome to exercise from custom bootentry providers.
> 
> A more natural place would be associating it with the boot entry logic,
> so move it there.
> 
> No functional change.
> 
> [...]

Applied, thanks!

[1/2] bootm: associate bootm overrides with struct bootentry
      https://git.pengutronix.de/cgit/barebox/commit/?id=95b7413668a7 (link may not be stable)
[2/2] bootm: remove ability for late override of bootm.image
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d6aaf0100f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




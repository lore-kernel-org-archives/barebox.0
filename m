Delivery-date: Mon, 17 Jun 2024 08:50:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6CY-007Rss-30
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 08:50:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6CY-00071o-EC
	for lore@pengutronix.de; Mon, 17 Jun 2024 08:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b9WGV94n+DyV+YYPMC024qXtJ4PWewG7yKH8IP8ImhE=; b=dVECaDuSceBo2vctXVcufm8NDs
	OzDNuu2f6aYxmUQ/5UCza+opgn163Du9iKxov5XBaJ9Mdv9dPYhH8YkCMQyjWVeEm955NCbxJqGMy
	lBnQk95hnTYPPgguGinXvU5OpKVFRbmQ1w6yyUc3MnQQQDqFCxk1Q30kRwm42Ot4ICEF4FlF950c3
	3RqtaKDSYmGvsZK7fxin9rcSsHvarBE2OYhdFdBZY+WcaPRANkEjzANC9exQ6X/B/HbciVA8nrVs4
	WmgDNN1y05+FskC2pAxx0zWkKQF7k+rbTsK9LnKrPgdk65K7bOtII/Q4CapTLsgUar2RSbrx1J/HY
	FxAGtnyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6C9-00000009Ubx-11Ax;
	Mon, 17 Jun 2024 06:50:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6C6-00000009UbF-0QWd
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 06:50:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6C3-0006wb-Sf; Mon, 17 Jun 2024 08:50:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6C3-002uiB-8o; Mon, 17 Jun 2024 08:50:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6C3-0016sb-0e;
	Mon, 17 Jun 2024 08:50:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240615093005.230804-1-antonynpavlov@gmail.com>
References: <20240615093005.230804-1-antonynpavlov@gmail.com>
Message-Id: <171860701919.264737.883610599413027970.b4-ty@pengutronix.de>
Date: Mon, 17 Jun 2024 08:50:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_235022_180659_DF8EE52F 
X-CRM114-Status: UNSURE (   3.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] gitignore: ignore *.dtbo and *.dtbo.*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 15 Jun 2024 12:30:05 +0300, Antony Pavlov wrote:
> 


Applied, thanks!

[1/1] gitignore: ignore *.dtbo and *.dtbo.*
      https://git.pengutronix.de/cgit/barebox/commit/?id=72afdb7cf5a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




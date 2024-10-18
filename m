Delivery-date: Fri, 18 Oct 2024 11:02:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1isW-005p6G-2W
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 11:02:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1isW-0002qw-8D
	for lore@pengutronix.de; Fri, 18 Oct 2024 11:02:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IlYQUElKrV9EQ0FPPL+98lOp4su5zxDY3sRkuUCVG88=; b=l93mqqi0TbDRu0Q1VqUdNblod4
	zssWZH4+Ud/ufjumLwcmNyjS1oALialHe8Ydr8VVy/jcyLZXg6uEL8I8Q4uY8WJfx78lXn6d8mWD/
	1tOs5evt6Yj7fAkpO4Xdn60SY6cQdEHXp7wVLlSjwMveuaHRK+n30JolNMAocJv+fd40wkbv9ZeNa
	AENtM9vjuYm3RMWyaS4jipmVJF3nL69mBGt2vQLf8qV9sQxuIYvprhv1KuRhY+y98PoIYykfiTGoq
	8nioH9fUKxTGsUAhXpzTuJmzN+ZE9au+e691Ov63G1yjfxjji2fWLmjhK5lJKSQFWVS4eXJbzBfO1
	a6AU2SqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1is1-000000005ka-0T74;
	Fri, 18 Oct 2024 09:02:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ikw-000000004K2-1UnP
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 08:54:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iku-000258-Sp; Fri, 18 Oct 2024 10:54:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iku-000BLZ-2H;
	Fri, 18 Oct 2024 10:54:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t1iku-00CHsE-27;
	Fri, 18 Oct 2024 10:54:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241017090947.127049-1-a.fatoum@pengutronix.de>
References: <20241017090947.127049-1-a.fatoum@pengutronix.de>
Message-Id: <172924168465.2928475.10741317893043780882.b4-ty@pengutronix.de>
Date: Fri, 18 Oct 2024 10:54:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_015446_551169_08349DC5 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: lpi2c: fix potential read of uninitialized
 variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Oct 2024 11:09:47 +0200, Ahmad Fatoum wrote:
> If the continue statement in the do {} while () loop is
> reached on the first iteration, the loop condition is evaluated without
> having first being set.
> 
> Fix this by initializing it to the maximum length of the I2C message.
> 
> 
> [...]

Applied, thanks!

[1/1] i2c: lpi2c: fix potential read of uninitialized variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=502ce2e332f5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




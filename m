Delivery-date: Wed, 24 Sep 2025 07:52:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1IQW-000SYA-19
	for lore@lore.pengutronix.de;
	Wed, 24 Sep 2025 07:52:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1IQV-00020t-Qu
	for lore@pengutronix.de; Wed, 24 Sep 2025 07:52:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ajOrg+87iG0kzJ/ZjN1zsqbNiKeRWWIwP/Lm6249ebY=; b=YMPGqGu8z+9diY8MGbJ0LztCID
	eRHrPipYBfc1Xs3daVJwkJWbuWMpypM4G77diHYyi5DtSq3gz8Gnm0OTeZOF0pOaT+GpHPIPd3X/Y
	imGrujnwTqPJis5or44oZ2t+qnML1FGgFa7NB/x36Hv0zCklGNRXhpUzTnJSetTsUBERhPcw9W8cz
	EDZWktawggY7n4+leBhKHbXINOs3DmZBXb0x8hGblmoEcCutRO3JWVDBnQWFCVyYy267Q55Upbnyh
	ArBvNJ/ZeZ7zvlIGdBEMfuulAQ/D5VvMtukjPVNL1vgTltLs6vfs33H31uNuc8EGvTFl6XxnbSUQH
	GgSgZvIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1IPm-0000000Fb9g-1scQ;
	Wed, 24 Sep 2025 05:51:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1IPi-0000000Fb8g-2THE
	for barebox@lists.infradead.org;
	Wed, 24 Sep 2025 05:51:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v1IPg-0001ud-FQ; Wed, 24 Sep 2025 07:51:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v1IPg-000CgJ-0i;
	Wed, 24 Sep 2025 07:51:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v1IPg-00000005r4K-0hO0;
	Wed, 24 Sep 2025 07:51:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250922131253.2728716-1-s.hauer@pengutronix.de>
References: <20250922131253.2728716-1-s.hauer@pengutronix.de>
Message-Id: <175869309615.1395504.11500971207152941276.b4-ty@pengutronix.de>
Date: Wed, 24 Sep 2025 07:51:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_225138_632014_6526CEC4 
X-CRM114-Status: UNSURE (   6.14  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] lib: add crc16 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Sep 2025 15:12:52 +0200, Sascha Hauer wrote:
> This adds crc16 support taken straight out of Linux-6.16
> 
> 

Applied, thanks!

[1/2] lib: add crc16 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=83865ed69b4d (link may not be stable)
[2/2] nvmem: add support for Atmel sha204(a)
      https://git.pengutronix.de/cgit/barebox/commit/?id=0837819622a2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




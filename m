Delivery-date: Tue, 01 Apr 2025 12:39:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZ1z-006xIH-2L
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 12:39:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZ1z-0007mg-7P
	for lore@pengutronix.de; Tue, 01 Apr 2025 12:39:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=evwA8QRvfpc64Ez8d5zUpPE4i6yjA6H3reRDl29uvtc=; b=ZHU6ApUly+pXYTBZwwDxxHmxAO
	L8JoRUAtGI2ra+DVFwoRNrzS8AolJIYkQgd4GT2a4taDA5mr3Ddb5wP3C7rSi14XOvfO0hL81kEB2
	NlJRwrbmsKulzb9oI/8MNoS5zNPyVadggH3aMxCOoh2q2qHfXexdt8rHO2KDeTdbtkydTnxAEoyZV
	2Gkg4eog+dw1ou2IdJsDghfThS5hz51AbOy/fqOvjvAM2RsaIvqQyxJke8Pl624Dd7q6f4HuT6WFz
	Ko5mNZ3s6cnQ8/Xkb+1w18EOtUBI5EFe23WHU8gebdCQ7sKHHebMabU4CIQKGU7kq6WOlQL7YSzhR
	LXP49QKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZ1V-00000002eZH-0myk;
	Tue, 01 Apr 2025 10:39:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzYe1-00000002bD5-16JF
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:14:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzYdy-0004kV-DN; Tue, 01 Apr 2025 12:14:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzYdy-002kPB-0i;
	Tue, 01 Apr 2025 12:14:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tzYdy-00DUOi-0U;
	Tue, 01 Apr 2025 12:14:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250401092027.2436393-1-a.fatoum@pengutronix.de>
References: <20250401092027.2436393-1-a.fatoum@pengutronix.de>
Message-Id: <174350249414.3215047.2975100255379401368.b4-ty@pengutronix.de>
Date: Tue, 01 Apr 2025 12:14:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_031457_340289_EA4B71A6 
X-CRM114-Status: UNSURE (   5.40  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! test: bthread: change comparison condition for
 switches vs. yields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Apr 2025 11:20:27 +0200, Ahmad Fatoum wrote:
> As Bastian correctly notes, the asserts should have different
> conditions.
> 
> 

Applied, thanks!

[1/1] fixup! test: bthread: change comparison condition for switches vs. yields
      https://git.pengutronix.de/cgit/barebox/commit/?id=e719105f56a1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




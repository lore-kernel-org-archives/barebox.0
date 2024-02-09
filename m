Delivery-date: Fri, 09 Feb 2024 13:35:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYQ6i-00A6eM-2E
	for lore@lore.pengutronix.de;
	Fri, 09 Feb 2024 13:35:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rYQ6j-0003B7-DV
	for lore@pengutronix.de; Fri, 09 Feb 2024 13:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KMtKBYwXAFZ4RR+pWGOq6oYN5SRhPZUBwUYPc3A3QiU=; b=Gdc/da7KwLc7vhp3PBzvJdQL4M
	erA9X97hVqkmfInJXjhZaKnmjtlrcJPr7IKTM2tH0hdsh7tpVH+G3tvwOCOpskMTQSzJwhs26/7qA
	NLI7uKWukMJ2/TgzO2TO0xk0t80+rE5KOj9ukrmGGGjweSYAabjoZU9fYecWOSzp1lVzwRlezmUUo
	lfHmXKYGhQor769Iawb4/x8VHkvjPBTZRsd4co5Ul6ReCVJZSIoV0ml0TPC7lcCWWodAPRNxMd0ny
	HjVPGWMZKzX/UEiguNT7JsF07T54giWp5vts7YjP6Px8geXmFYxr1aHUejpNfjddhDoeS4oG7yhdV
	stuEnalg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYQ6H-0000000Gy0r-1g93;
	Fri, 09 Feb 2024 12:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYQ6E-0000000Gy0F-2yUB
	for barebox@lists.infradead.org;
	Fri, 09 Feb 2024 12:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ6D-00036s-JO; Fri, 09 Feb 2024 13:35:21 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ6D-005Pjc-5O; Fri, 09 Feb 2024 13:35:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rYQ6D-00HWmR-0K;
	Fri, 09 Feb 2024 13:35:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@zdiv.net>
In-Reply-To: <20240208191625.2455-1-jmaselbas@zdiv.net>
References: <20240208191625.2455-1-jmaselbas@zdiv.net>
Message-Id: <170748212110.4177555.2273280376202637226.b4-ty@pengutronix.de>
Date: Fri, 09 Feb 2024 13:35:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_043522_786076_25C873C6 
X-CRM114-Status: UNSURE (   5.78  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Fix heading level of TFTP windowsize
 section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 08 Feb 2024 20:16:25 +0100, Jules Maselbas wrote:
> The section title about TFTP windowsize support was at the same
> heading level as the page main title.
> 
> 

Applied, thanks!

[1/1] Documentation: Fix heading level of TFTP windowsize section
      https://git.pengutronix.de/cgit/barebox/commit/?id=b6701ed76f22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




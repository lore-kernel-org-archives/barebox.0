Delivery-date: Wed, 03 Dec 2025 09:47:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQiW5-007SMA-0D
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 09:47:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQiW4-0002tw-Hn
	for lore@pengutronix.de; Wed, 03 Dec 2025 09:47:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/3LE5FObbZ5QAc8fgQ0Cj4pL/HSMctwAgAFwLiOLwo=; b=Z/djJYu4rW/CJ932TJEKkhxJDR
	UcNoRDhW/OZZbXma3SmyFtsTvnLScakruMUbaDLoLRwAJLkSeXnXsSMRcay/WktxJlRs/+FQq+c8G
	jG8h5Z6ARJSuaw9qPBsGCumWvhME/0qSveTNyasQptxLJnlUbuHK11mCnP0hc+N4bbAslOGAWfVEs
	Bco9GuGldk8ojPDF2yv2k39hdXsMiOVY9oCLbHP+us3h/YvzRPGYb2BwVd8j+C+6OiD8nyBuV7fwD
	CW8Ev44gxXqb69kI8ysWjn0OcyKqY7aeQ+QbcB5qn5Jb1hv1Lr/sGQOVYGNKP487lZtUmXYq2c9TX
	Xnprm6uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiVY-00000006KVu-0aly;
	Wed, 03 Dec 2025 08:46:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQiVU-00000006KVJ-43fv
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 08:46:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiVS-0002oX-BR; Wed, 03 Dec 2025 09:46:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiVS-003kR0-0X;
	Wed, 03 Dec 2025 09:46:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQiVS-0000000CtWG-0STj;
	Wed, 03 Dec 2025 09:46:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251202163253.1554775-1-a.fatoum@pengutronix.de>
References: <20251202163253.1554775-1-a.fatoum@pengutronix.de>
Message-Id: <176475159810.3072653.7561800264760170588.b4-ty@pengutronix.de>
Date: Wed, 03 Dec 2025 09:46:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_004641_012322_13CA9F37 
X-CRM114-Status: UNSURE (   6.28  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Dec 2025 17:32:52 +0100, Ahmad Fatoum wrote:
> pmdomain: rockchip: skip skipping message when nothing skipped
> 
> if ngpd == 0, there are no subdomains and there was nothing skipped, so
> suppress the message in that case.
> 
> 

Applied, thanks!

[1/1] fixup! pmdomain: add Rockchip power domain support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4902e707cf8e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




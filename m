Delivery-date: Mon, 20 Oct 2025 14:58:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTU-009tlf-1z
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:58:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTL-0000Yt-1z
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2DVHNcu0Ubxlvk4RaUzSD65bI+m8kavfGf6JlMu98cI=; b=eb1iX9kGmJ86z9YC9aHKRzvu2I
	UofUzzYFXLVgEp5BZXpW2JG0PhxLcUxWhIBWRWPeQnHTI7ekiYZ+zU5zuYZCsVgQFN9UOAnv1nLlf
	OlIN12W/LnRIgkF5KKlVaxjSQ8P+nuPCf/5vPb5cpLLfheiPuD8UhEj74Qr44Ft+aQyFECKXZXy3h
	RaBLwp4udcL1Vx7PuCaq1cz7gjhnDdNdmh7CamFlbgiUxRU0/4JFeA2TrW26K5BS5gg99UFNv2oB0
	pbR6TWKkGu6NV5FNPtSZWtrEpcpkbVSuO01aCOn8weMYDQU+kcT5ANWkzmfxGMGhv8YS2iMBpbZ8l
	MwzBoD3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSf-0000000Df8B-1tyO;
	Mon, 20 Oct 2025 12:58:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSc-0000000Df3z-3ta9
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSa-0008Ba-7l
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAoCg-004XZG-22;
	Mon, 20 Oct 2025 13:37:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAoCg-0000000A6TB-2NaA;
	Mon, 20 Oct 2025 13:37:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20251013135645.3282864-1-a.fatoum@pengutronix.de>
References: <20251013135645.3282864-1-a.fatoum@pengutronix.de>
Message-Id: <176096025056.2408136.17664532360240562056.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:37:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_055802_970926_30D8FA0A 
X-CRM114-Status: UNSURE (   4.70  )
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
Subject: Re: [PATCH master] Documentation: migration-2025.09.0: add missing
 guide
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Oct 2025 15:56:34 +0200, Ahmad Fatoum wrote:
> v2025.09.0 has been released and it contained multiple things worthy of
> a migration notes entry. Add them now.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-2025.09.0: add missing guide
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b680dc28b9e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Thu, 28 Aug 2025 12:36:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urZzx-005PjR-37
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 12:36:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urZzw-0001yS-RV
	for lore@pengutronix.de; Thu, 28 Aug 2025 12:36:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qh3EOtHYBszoaJjME/LNiQnqUScvjKW5g0X6dwteWF4=; b=GvwI0OWPf1P9zL3ZtKWpoOI9qH
	TgoVQLa0A3Xeon4nDUVw77M2DqWGVaYumG0mYHfuJTQ+M7ZmniY6gCtP6CsxRVwu/q5wrGy5ssA9y
	4/p/s/SmamfzE1RDQt5ZzvLc4p05qy09Mr4u+Q2fMMPz4TuE5TnJIto1DOIKCR8Yfy5KJSDxCeoEJ
	hQszhZHEfzaciRjx3MwNrdXLuJXeYRU8zVrLzTu5rcCv5wET2u8Xjhrc7vyMR/tX8ic9sOKJ7yb7A
	HvDSVhyRN5dfgOGAQD6RiTadBewhDbCNEj00QTxbL1sVV0g3W5vqO9hBbLIdI3o3alys9min5+rWP
	Rcpme1IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZzT-00000001BWh-3eLV;
	Thu, 28 Aug 2025 10:36:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZ6O-0000000101x-1X7F
	for barebox@bombadil.infradead.org;
	Thu, 28 Aug 2025 09:39:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Qh3EOtHYBszoaJjME/LNiQnqUScvjKW5g0X6dwteWF4=; b=MaAq67gkLl3nAVUfJrYfOOzXHz
	8+9J2tok9Wq9Pki7302+Tv5gl1IBoaWDhk63DGPE40rALmsjfgjXkTno23Y6zdta74Vnk+HuTpZQa
	OPqLYf86o9B0KcHrQQJ4wmtnU1GKRbiKJlBiYIVoYcRGhgg+OPmYUHJ0ve4Cu3PQ+mUc65wSEXMs4
	gDdFtevMhmKWOUR6++ox63LwRn8um55cn1wVtc/QqysEchl7If0fgQzn+/29yMYPEPunSz70EuYXS
	wj1G7wf4JnBmpFH8Ev44c3UmP78NKJBaa3Uw8o9tdhYzl4qEYhpaR9u2C0i3Ks3E0havfZPQ0tPfX
	ZCJdpGBA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urZ6K-00000002gMx-2rpB
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 09:39:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6I-0006LJ-1n; Thu, 28 Aug 2025 11:39:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6H-002XQI-2W;
	Thu, 28 Aug 2025 11:39:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1urZ6H-00000008DwI-31WV;
	Thu, 28 Aug 2025 11:39:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>
In-Reply-To: <20250827151435.16352-1-akurz@blala.de>
References: <20250827151435.16352-1-akurz@blala.de>
Message-Id: <175637396171.1960191.16855206939116719713.b4-ty@pengutronix.de>
Date: Thu, 28 Aug 2025 11:39:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_103924_900187_5D965093 
X-CRM114-Status: UNSURE (   5.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM i.MX: fix iMX6SL detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 27 Aug 2025 15:14:35 +0000, Alexander Kurz wrote:
> When booting iMX6SL SoC, a message "detected unknown i.MX6 revision 1.2"
> has been reported. Fix thie detection for iMX6SL again.
> 
> 

Applied, thanks!

[1/1] ARM i.MX: fix iMX6SL detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=195ac2e8a760 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




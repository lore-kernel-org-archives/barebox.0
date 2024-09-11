Delivery-date: Wed, 11 Sep 2024 10:38:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIsJ-003QRI-0K
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:38:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIsI-0007sy-2K
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:38:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCTtiPZD6EJNkC3a/c5ernRnvnY7/dx6kQBKYWfrKy4=; b=bYHp4ugPbJITAm0BNIr2LRQ8nD
	mboOQfjuWgGUZziAP9PloQOUzS5jEE5cuBghhh6iFZ5tUOkYOv1BYQ8AHqw3D39V8V+0/MIyDlP2F
	T98RiCoI2YNpM9Lo4M0CSAdG6/H1wW4sQC95uA/U+LNTIMGTbzIzvi7Ed/WbPtvMiAUTqtu3rr8b7
	aZrn5Yt2LUikdOvg7It9+Fn4oUGWCs7WfTxSrsP4B8Xp1IxMvag1QNk6IEUdtKwL5uZ/BJzePRwDw
	/zoYuzXAW1ujTGyCIgsSDVHMRAg7PX4wusqbJwObBjZLgXQSv6/tR5HLmAxGioW72DcJgcO7ZxDRh
	xbepwbVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIru-00000008hQU-1Wgg;
	Wed, 11 Sep 2024 08:38:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIpp-00000008gCK-2WMz
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:36:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIpo-0006Ju-1q; Wed, 11 Sep 2024 10:36:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIpn-0075xC-KN; Wed, 11 Sep 2024 10:36:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIpn-001gDQ-1r;
	Wed, 11 Sep 2024 10:36:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lst@pengutronix.de
In-Reply-To: <20240910090336.89871-1-a.fatoum@pengutronix.de>
References: <20240910090336.89871-1-a.fatoum@pengutronix.de>
Message-Id: <172604377957.400585.16489117583814611401.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:36:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013621_693723_A05305E6 
X-CRM114-Status: UNSURE (   6.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: errata: document errata workarounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Sep 2024 11:03:36 +0200, Ahmad Fatoum wrote:
> Give all errata workaround functions a kernel-doc listing the title of
> the erratum and what CPUs it affects for documentation purposes.
> 
> 

Applied, thanks!

[1/1] ARM: errata: document errata workarounds
      https://git.pengutronix.de/cgit/barebox/commit/?id=191a36264362 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




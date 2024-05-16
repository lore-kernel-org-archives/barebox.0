Delivery-date: Thu, 16 May 2024 08:06:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UGU-00GrMi-2P
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:06:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UGU-00065r-7f
	for lore@pengutronix.de; Thu, 16 May 2024 08:06:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UWkTPOep3MQadARAMj+aSbjAqoDVGRnsLhWbW3W3UBw=; b=pQf9pGSlaOwKJr+tkX8NMJoXBh
	LehbaEbsX9bRKup+EkAb0Dx1cWU/Y9obbsq5MxlCu6Ga3fjvGvok0YF6RmO8Mf9bOg8+UsefNkqqp
	mX0XcoOsyaEEsPL3dbO/b0LVoVz6Q7cpsIt/Bbsww+6Gtgn0njHePxHrJ8xDzAUgXRWSaHtShI95a
	wT7QQk33vIB78rMujSIAvrPFPUMPsjRhfcT2sP8B4ld6ie4FHdx55oXU8RYeJjyTz794qyPEfo6cJ
	3c55N87OrrjNMVwgY2k7QYKTudVQ/Py6aOe6BpKnrdXPjsAqBlpBhhhq/PoPImanTV6sOJ87YasPg
	6FmkAKvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UG2-00000003pBX-23qZ;
	Thu, 16 May 2024 06:06:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UFz-00000003pAx-0qWL
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:06:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UFx-0005zi-77; Thu, 16 May 2024 08:06:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UFw-001fIC-Qf; Thu, 16 May 2024 08:06:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UFw-00BS0U-2T;
	Thu, 16 May 2024 08:06:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240515112254.288003-1-a.fatoum@pengutronix.de>
References: <20240515112254.288003-1-a.fatoum@pengutronix.de>
Message-Id: <171583958076.2729247.6149115239007184783.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:06:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_230623_370925_F9105C00 
X-CRM114-Status: UNSURE (   6.04  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: move ramoops device creation into common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:22:54 +0200, Ahmad Fatoum wrote:
> We already have a generic place where we check for reserved memory
> matches, so add ramoops there as well.
> 
> 

Applied, thanks!

[1/1] of: move ramoops device creation into common code
      https://git.pengutronix.de/cgit/barebox/commit/?id=34d1c6cc820c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




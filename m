Delivery-date: Wed, 13 Mar 2024 08:41:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJFN-0044fP-06
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:41:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJFM-0006PQ-GS
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:41:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KOGWIq8HHxpkkDiWgA2ewlCAoJkKMPuSR7amdUH+Oy0=; b=r9OR8vqboZh+AuYuRNqsVrG51o
	X6hFz5Mfqo5PsQnVFh5W9r+U6tW5nIPAry+vkzF0OIg7/jR3ZUUO2Syysbcv5+Lsay+chvZ1S85lg
	vLWl0k03ONfufn1OVKLSoKviT15/G9bziyN9H++9N33lHI1LQG8RYIQX5TEerHVszGAfi/V8Gm3ip
	Gi6/ME9YSgggNTSaTwNiK6cSDGZ9foIzZXczcrBiZi6aaRRLi3e6jyv1nhYXsd4ne8x6PhAA98gao
	LzqzSJRnB8RujjYyXFSC5bXElkyi4LNb84TR649nImphLDoh7kG9zh1VbDjQE+NcbJmPywtbqlgAB
	mJcccd1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJEt-00000009Dz5-3LHP;
	Wed, 13 Mar 2024 07:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJEr-00000009DyB-15De
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:41:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJEn-000613-VO; Wed, 13 Mar 2024 08:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJEn-0064T9-J1; Wed, 13 Mar 2024 08:41:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJEn-0043I3-1h;
	Wed, 13 Mar 2024 08:41:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
In-Reply-To: <20240312154827.638763-2-u.kleine-koenig@pengutronix.de>
References: <20240312154827.638763-2-u.kleine-koenig@pengutronix.de>
Message-Id: <171031568152.965946.1024358805222463010.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 08:41:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_004125_350705_44A08FC7 
X-CRM114-Status: UNSURE (   5.13  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] imx25: Feed the unique id to machine_id_set_hashable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 Mar 2024 16:48:27 +0100, Uwe Kleine-König wrote:
> This enables barebox on i.MX25 to generate a per-machine eth address.
> 
> 

Applied, thanks!

[1/1] imx25: Feed the unique id to machine_id_set_hashable()
      https://git.pengutronix.de/cgit/barebox/commit/?id=fccedb1a18e7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




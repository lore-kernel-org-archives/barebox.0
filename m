Delivery-date: Mon, 27 Oct 2025 11:13:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKEX-00CIrO-1o
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:13:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKEX-0002bv-2Y
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:13:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sqhuXFMgehafMvDv7e7xgr5B2Tzhof7CIPmqFaHJ+AA=; b=eVI8/SoE6dv0s/zVEqULS/0n4x
	n2Q6L8rNtxxFl8nPytlOynT9Ku5lRhRrZ5j9VdSoOZ6g1pNMj68zmGVLo2Fs3d0H1qycV7y2Rh3PZ
	d+WZY3v1MgooLxvmQMarRK+bhuybSvM7+IPdAYbMKItAC8dpJkVygx3tx8uOVzRsBHQtNvNdjSgiL
	8JNG/f5VjjGrzzBIX+MCS/zbPhykL0gnzvUsaQicZ4pMjKWB1fptLRavOiSuV2Z1edzh7a8uKvCzn
	UtmFUuEe11k6FwalQvaobI2BdF+tc7g7sQwq7zlOJke3+9sZDUGU0B3MPc+QWFc1VqGPN5vQfeJtO
	F57e1HhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKE8-0000000DdIR-3SNu;
	Mon, 27 Oct 2025 10:13:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKE6-0000000DdI0-42jY
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:13:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKE5-0002WA-Hq; Mon, 27 Oct 2025 11:13:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKE5-005ggY-1B;
	Mon, 27 Oct 2025 11:13:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKE5-000000012ig-39BT;
	Mon, 27 Oct 2025 11:13:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251024075419.1970552-1-f.pflug@pengutronix.de>
References: <20251024075419.1970552-1-f.pflug@pengutronix.de>
Message-Id: <176156000129.248745.5285220312708167468.b4-ty@pengutronix.de>
Date: Mon, 27 Oct 2025 11:13:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_031323_005242_C68128E2 
X-CRM114-Status: UNSURE (   5.63  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: k3: fix wrong reference to help
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 24 Oct 2025 09:54:19 +0200, Fabian Pflug wrote:
> 


Applied, thanks!

[1/1] ARM: k3: fix wrong reference to help
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc942bdb62b6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Wed, 03 Dec 2025 10:53:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjYA-007TKD-2j
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 10:53:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQjYA-0003YL-AD
	for lore@pengutronix.de; Wed, 03 Dec 2025 10:53:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tN4eKMLMpC6NSjyW3us+om9BD04eSBXV63CbxrWhybo=; b=Qh6bsoPw7C2u+hJqCINiPgxV1F
	lr0yNelV2mI1SXZV//GIo7HBRxxMDCrnjBUkK26/0c32OW4nUWVzZQDO0fukJ+LQ6Oh8yrHXpgEFL
	aWW6QWqP937ivVCArKHqJEfh+bml1Xy9M8aqHX064XhJJ8Us3X6n4w6TVkTUi4yd8pqWo42z/+9rt
	aEzkCQHifQ9lHGvleovrXBZZoJW91LFVkJIsgrZvtamwvwfFLnDaAA0g2n0R3GTSuce0/oKPEFx0T
	jkqrN5P7Gmp2aW6saP49MRsopAcLH0vIY1afxLhtMAftawlnip+b7UBUv6qmUUSxAd7Xzi13455/z
	yLV1yFQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjXg-00000006Q3Z-0noH;
	Wed, 03 Dec 2025 09:53:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjXf-00000006Q3P-2tcx
	for barebox@bombadil.infradead.org;
	Wed, 03 Dec 2025 09:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=tN4eKMLMpC6NSjyW3us+om9BD04eSBXV63CbxrWhybo=; b=Y8Ab2K4vf8cgoeSUJnIxxc+6vg
	REV1gnHENeJLCFtiDy2I1f/LBcqiJYah/IgWbCkOfGbSQQfqjKnvgJw7s98r8oxOH1XhXPkfR1QmL
	t8B5GFHI/HBl+niq+JCog80GetkRZSDxrOvZJRMrgbuiaW6kXFMrpalkoY8YaXM8UXDofx30UDmlC
	EyK2a5IhNER/sQyO8uxQtrCaoKQPRUZTPNtOpz+Qth/6UyReQIWKLLpWG0i1aOnhWao249I/nvsxS
	49L/6tLy6UHp9oLnWCV0FiY2MBrZoXpbwNdHsr3eVLn3nHsoyQwHzxnWqn/AY/kjpZMPt3zYb4bnM
	okzZVa4w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQig4-000000020yx-2MCQ
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 08:57:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQjXZ-0003QN-MQ; Wed, 03 Dec 2025 10:52:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQjXZ-003ks1-1e;
	Wed, 03 Dec 2025 10:52:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQjXZ-00000002Rcj-1u2t;
	Wed, 03 Dec 2025 10:52:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20251201072452.1829564-1-f.pflug@pengutronix.de>
References: <20251128150434.3842713-1-f.pflug@pengutronix.de>
 <20251201072452.1829564-1-f.pflug@pengutronix.de>
Message-Id: <176475557345.582751.16608254176968142914.b4-ty@pengutronix.de>
Date: Wed, 03 Dec 2025 10:52:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_085736_739252_50CB46C4 
X-CRM114-Status: UNSURE (   8.15  )
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
Subject: Re: [PATCH v5 0/4] make the root= command line parameter variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 08:20:56 +0100, Fabian Pflug wrote:
> Changes in v5:
> Updated documentation for nfs
> Added documentation about new bootm variable
> Fixed commit message for last patch
> 
> Fabian Pflug (4):
>   block.h: renamed get_rootargs to get_root
>   fs: split rootargs into root and options
>   bootm: use new api to get kernel command line params
>   bootm: introduce bootm.root_param variable
> 
> [...]

Applied, thanks!

[1/4] block.h: renamed get_rootargs to get_root
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7b08f7bf37f (link may not be stable)
[2/4] fs: split rootargs into root and options
      https://git.pengutronix.de/cgit/barebox/commit/?id=a289ccecdf94 (link may not be stable)
[3/4] bootm: use new api to get kernel command line params
      https://git.pengutronix.de/cgit/barebox/commit/?id=4b6e9e9bb3f0 (link may not be stable)
[4/4] bootm: introduce bootm.root_param variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=52655a85e232 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




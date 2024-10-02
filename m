Delivery-date: Wed, 02 Oct 2024 14:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy53-005MbJ-1C
	for lore@lore.pengutronix.de;
	Wed, 02 Oct 2024 14:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svy53-0002Gt-S6
	for lore@pengutronix.de; Wed, 02 Oct 2024 14:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qu6Y13frG1WZc3OibplzSwQMijVefjANlSppSEPfuBY=; b=KUeYCMBSZY65Zqzd8KKQo2Mk3B
	r577QTzHSAyXELh+ZKSPRFQojznlrY7wZv3Ovf/1ci7IGQ0eeh555UELIboHjdl9R9Q4Qtbs54a/C
	i2l60SsoUTy3S5BsFWuzqhjygKCo5mU20urEwlhjUE58Du04WeEmeE0zAjtcmf4x702YHXYIME7qz
	m3PyIFL1Ql1GGdr2wqRBXJBdeGbIm9Wd6SxRx2yOSJa9ae92fhjc4+95C4wckLaawv9uJ1E2LktNc
	Xeo+lfbExIlD7mrKqILANWDW4r8HX6mCx/iMbkV89a7wkWq0CXRtzXvZV3jE+q6bxlQw2WotpeqhC
	U6xghPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svy4S-00000005m3W-1vF5;
	Wed, 02 Oct 2024 12:03:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svy08-00000005klM-1NZz
	for barebox@lists.infradead.org;
	Wed, 02 Oct 2024 11:58:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy04-0001EX-5o; Wed, 02 Oct 2024 13:58:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy03-0036L7-FT; Wed, 02 Oct 2024 13:58:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svy03-008p69-1L;
	Wed, 02 Oct 2024 13:58:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20241001104738.1069237-1-s.hauer@pengutronix.de>
References: <20241001104738.1069237-1-s.hauer@pengutronix.de>
Message-Id: <172787031541.2103030.1591134209370093434.b4-ty@pengutronix.de>
Date: Wed, 02 Oct 2024 13:58:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_045840_401505_EA009315 
X-CRM114-Status: UNSURE (   6.48  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: wolfvision PF5: Use upstream IO expander dtso
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 01 Oct 2024 12:47:36 +0200, Sascha Hauer wrote:
> rk3568-wolfvision-pf5-io-expander-upstream.dtso has been merged in the
> upstream dts files, so switch to using the upstream version.
> 
> 

Applied, thanks!

[1/3] ARM: wolfvision PF5: Use upstream IO expander dtso
      https://git.pengutronix.de/cgit/barebox/commit/?id=234f36ad4082 (link may not be stable)
[2/3] ARM: Wolfvision PF5: of_probe only once
      https://git.pengutronix.de/cgit/barebox/commit/?id=281aa901624e (link may not be stable)
[3/3] ARM: Wolfvision PF5: add display overlay
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ed7b0ebc507 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




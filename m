Delivery-date: Fri, 17 Apr 2026 11:08:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfBi-00D8I1-0d
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:08:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfBh-0002ue-Lc
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:08:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q8dWka4KMWn5Q/lTLsnGqW4mdmKe5TBv1FYMHQ5Smvg=; b=gfEb3rqblzEWaNlfErsh4stbHj
	Nl6Fwi06fuFLG6yj99RWWhY/PPM/Dpk6R9zNeRlfgWPc0N3i9lB/trTAMtRW+0CDSeF9IQj1QXn9b
	CV1TBZJ37NuzP1pdsh+huFOQaDluW1/y4QNo3dIZzhIsbyVU02aV3L/GEfN/AxbPx8QaYJ5G+76Ka
	/dcvo9n7rq5rIU9CoYmQ1vZw16Ws5eL+qqGPi57Me7RN5dYMU2JUG39dczWoCyRCbJRiD2A78vbJd
	B5TwkUfkM2TXh7l8nUMaP6pRYQUpQ7UjqInIB5Fc3Ghb9LW3j1m2WSZvK/4bzP2wPfqXm8xrawb9a
	aJO6VkPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfBO-00000003jWF-1uMv;
	Fri, 17 Apr 2026 09:08:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfBK-00000003jVZ-2l8f
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:08:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfBJ-0002ji-6l; Fri, 17 Apr 2026 11:08:09 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfBJ-005pAh-03;
	Fri, 17 Apr 2026 11:08:09 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDfBI-00000000b1k-40wY;
	Fri, 17 Apr 2026 11:08:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260415081357.450925-1-s.hauer@pengutronix.de>
References: <20260415081357.450925-1-s.hauer@pengutronix.de>
Message-Id: <177641688895.142223.17690678133609025200.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 11:08:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_020810_703988_FD970338 
X-CRM114-Status: UNSURE (   5.36  )
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
Subject: Re: [PATCH] mci: add missing break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Apr 2026 10:13:57 +0200, Sascha Hauer wrote:
> 65077d2078 adds a new case to a switch/case which lacks a break, so it
> falls through and EXT_CSD_REV = 0 is detected as MMC_VERSION_4_1 instead
> of MMC_VERSION_4. Add the missing break.
> 
> 

Applied, thanks!

[1/1] mci: add missing break
      https://git.pengutronix.de/cgit/barebox/commit/?id=41295e7cd5e1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




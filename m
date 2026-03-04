Delivery-date: Wed, 04 Mar 2026 08:35:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxglJ-007u7c-0g
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:35:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxglJ-0003lh-J2
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:35:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jHmsiF+GGApzexunKdn4gTVNK+aabLMX6NT8Hl+M6p8=; b=pVbk0a8mC25Uz15S88yjWYwQtM
	JjeMjOr+GvGc5v2Rufy7pF1J7FUuY9qTRxS9GN9Gu0oEGxCHrVN5+VNwGxUa0NuYiaRpdpUaI+1Y5
	vxPT+Zgikh0wR9kaD0PyrxlNtPK2JNQNZtszi1DqUzgtWA6jdEmNTvT5ebRig4r3g1okqFNDjS/wC
	Sz+XP1TatMztbCURpzspLc4VitYE+f+kKljr7EkSQ+zHkRI0YnEu7GwUTgSsViAcancIwgrrcKKRk
	oV2ELGxMkfeNU9a3ab0g399eHFwJpsKHypcuqOk6ZmoKnZbqNcVWhktbkaUUoeGOgujbZHFwaoipH
	Rl+saqPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgkt-0000000GbZY-3kbx;
	Wed, 04 Mar 2026 07:34:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgkq-0000000GbWu-2im3
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:34:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgkp-0003YV-1l; Wed, 04 Mar 2026 08:34:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgkn-003g1z-1g;
	Wed, 04 Mar 2026 08:34:46 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgko-0000000GKwf-3NgB;
	Wed, 04 Mar 2026 08:34:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260302135021.195856-1-a.fatoum@barebox.org>
References: <20260302135021.195856-1-a.fatoum@barebox.org>
Message-Id: <177260968680.3893596.1716774513321121272.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:34:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_233448_688370_8632E420 
X-CRM114-Status: UNSURE (   6.60  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] Makefile: pass KBUILD_OUTPUT to pytest in check
 target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Mar 2026 14:50:03 +0100, Ahmad Fatoum wrote:
> The check target runs pytest from the source directory, but doesn't
> propagate the build output directory. conftest.py falls back to
> using build/ if it exists, which may contain a completely different
> configuration.
> 
> 

Applied, thanks!

[1/1] Makefile: pass KBUILD_OUTPUT to pytest in check target
      https://git.pengutronix.de/cgit/barebox/commit/?id=88c39fa118a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




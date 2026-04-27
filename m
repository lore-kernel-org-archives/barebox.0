Delivery-date: Mon, 27 Apr 2026 09:16:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGCO-00Gr76-0F
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 09:16:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGCN-0007Sj-HE
	for lore@pengutronix.de; Mon, 27 Apr 2026 09:16:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v4n+GeCy1ENn9TfbzSvvTOOOY5YtyVyn6owRxOA8a24=; b=o95eIgeF8a4HIAQKL11S83vFq6
	tnDlpZaiBXst9OLuR38DMJVdQKDZaPt6hD62oj4O7XvxBnrknDbipg+PxOVZbmTjmSztfGukskAdg
	X9lHWmjqFCmizQU+qoegFf0q5dLjwA80oToqm4BMTASOKdxhLPPzkxI38Bu8q/FOPidE5EUC3pXoR
	kRZAQp34GgkXqo/pjkEEfcwCXR50S8oIovJLQCvT9MOdlmL+aWUzZ+qDM498GO8cys5RV2I5CMmNN
	0lPu8cQnjCZyrE5+l5Sr8aIitonrievl61EHR/WR2h4PzclARO8NFWZIpl2FykdtJNzwRyF6DCURx
	FIL/q2qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGBj-0000000GLgq-0tWS;
	Mon, 27 Apr 2026 07:15:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGBg-0000000GLfY-0Qzn
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 07:15:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHGBc-0007I9-7t; Mon, 27 Apr 2026 09:15:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHGBc-007RrW-0A;
	Mon, 27 Apr 2026 09:15:20 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHGBb-00000001UpZ-44nl;
	Mon, 27 Apr 2026 09:15:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260422-v2026-03-0-topic-soc_bin_id-v3-0-6bc9ef6a6b2e@pengutronix.de>
References: <20260422-v2026-03-0-topic-soc_bin_id-v3-0-6bc9ef6a6b2e@pengutronix.de>
Message-Id: <177727411996.355834.1894731841151387990.b4-ty@pengutronix.de>
Date: Mon, 27 Apr 2026 09:15:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_001524_168155_70A6D413 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 0/2] Add additional globalvar for soc_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 Apr 2026 12:09:03 +0200, Fabian Pflug wrote:
> The binary representation was used to compare against, but never exposed
> to userspace to query, as the exposed variables could correlate with the
> value, but did not.
> 
> For example on i.MX8MP the byte order was reversed in comparing
> the return value of barebox_get_soc_uid_bin and $global.soc_uid.
> 
> [...]

Applied, thanks!

[1/2] common: misc: add soc_uid_hex to globalvar
      https://git.pengutronix.de/cgit/barebox/commit/?id=103c1e79d5a1 (link may not be stable)
[2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
      https://git.pengutronix.de/cgit/barebox/commit/?id=1109a7447bcd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




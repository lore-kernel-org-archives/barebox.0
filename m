Delivery-date: Mon, 26 Aug 2024 13:09:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbT-00DZ6c-1x
	for lore@lore.pengutronix.de;
	Mon, 26 Aug 2024 13:09:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1siXbT-0005Cl-2I
	for lore@pengutronix.de; Mon, 26 Aug 2024 13:09:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qBggtnsBBqAlosvKUTBvnu/Eu56LKZvu1yBuw/aHIKg=; b=jnvNFayXU2w9MPDJQYxtGkltpS
	OEdETzqQylu3CsJNKTJIPrICY/SOdXUxU8howE4Gz22dkftyJorpsDxHfM2KNL5cMgFAVmwhF56dl
	FhKTcQXfBM/xrfSox0kwOM7N9XP1yTfK0/shS4s4uccJifdZEjXl2yaSy1MXQ25gaHOh1hs63T35A
	bO08RyklChxtdfAtWv1kInpYtsdYLI58kS9Zwj9oyKMeRrLDhBu2hUTq89ZrWU172tzF+tC7vp7Z5
	UcI+eFOYHTxV92szQyFS/yrZmH8m351uviARKMgk5+ZOhNI1AA2r/NGFqVq96ibivE+bBfsN0QNfV
	ALPDiIpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXat-000000075Hy-2QXF;
	Mon, 26 Aug 2024 11:09:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siXZj-0000000755N-47IN
	for barebox@lists.infradead.org;
	Mon, 26 Aug 2024 11:07:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXZi-0004tt-KR; Mon, 26 Aug 2024 13:07:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXZi-003Arq-7B; Mon, 26 Aug 2024 13:07:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1siXZi-004aom-0Y;
	Mon, 26 Aug 2024 13:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240824200214.2159827-1-a.fatoum@pengutronix.de>
References: <20240824200214.2159827-1-a.fatoum@pengutronix.de>
Message-Id: <172467047416.1094811.3240264362308053946.b4-ty@pengutronix.de>
Date: Mon, 26 Aug 2024 13:07:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_040756_050005_52254FD2 
X-CRM114-Status: UNSURE (   8.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] include: move STACK_ALIGN_ARRAY to linux/align.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 24 Aug 2024 22:02:14 +0200, Ahmad Fatoum wrote:
> As part of the measures to factor out stuff from common.h into dedicated
> headers, move out STACK_ALIGN_ARRAY. This macro doesn't exit in Linux,
> but the file is fitting.
> 
> We don't need to explicitly include it, because it's being included by
> <linux/kernel.h>.
> 
> [...]

Applied, thanks!

[1/1] include: move STACK_ALIGN_ARRAY to linux/align.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=74fe1ce29bcf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




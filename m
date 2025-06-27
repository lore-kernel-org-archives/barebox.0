Delivery-date: Fri, 27 Jun 2025 17:10:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiG-00Beqn-0k
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:10:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiE-0004p5-JY
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:10:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6drQ4KiHiluuoy25hEzORMtNsxM2J9v7yo5/WKGlK0=; b=W+44uM/DXnYX6pIFi3ncBMYQqD
	ivGgDaYC/yqG/fPLZxaJwAHTNJi0Fm/+6fgHhHq0Y1mVrpOMljQHNK8y8Xi1Oavm/qGqHT8FigYnA
	Wd1GXKp+6/6cN6i/Kx3eic4ihlwFqIpzL7rhE5/qu2dX9asUl3H9kbTIux1iuTjS7WCjid27tYx3z
	S39mpn8KQzYhuwEHH01jY04MViKCNsD5klIlGrUvKQnc8ixnGRnbAbraLte5uRnlUlir4WSogZcik
	k5xfmr05cUGB7/Swv+pkmt077P09ghL5u3kVMetEPJAGGyz/3hwxvPPZg23/84Nd6mhmcETH4iXEe
	skA7MlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhm-0000000F12w-3vsg;
	Fri, 27 Jun 2025 15:09:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAGb-0000000EwG4-18Qz
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:41:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGa-0007pG-39; Fri, 27 Jun 2025 16:41:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGZ-005dJo-2v;
	Fri, 27 Jun 2025 16:41:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGZ-0053rB-2i;
	Fri, 27 Jun 2025 16:41:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250625083544.2660810-1-s.hauer@pengutronix.de>
References: <20250625083544.2660810-1-s.hauer@pengutronix.de>
Message-Id: <175103528383.1206373.11862635463470308435.b4-ty@pengutronix.de>
Date: Fri, 27 Jun 2025 16:41:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_074125_313926_DA974345 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: drop f_dentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Jun 2025 10:35:44 +0200, Sascha Hauer wrote:
> Defining f_dentry f_path.dentry is confusing as it suggests that a
> struct member f_dentry is modified that doesn't exist and furthermore
> it suggests that the f_path member is not modified. Drop the define
> and replace its usage with f_path.dentry directly. While at it remove
> the unused define f_vfsmnt.
> 
> 
> [...]

Applied, thanks!

[1/1] fs: drop f_dentry
      https://git.pengutronix.de/cgit/barebox/commit/?id=1fede4e51311 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




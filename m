Delivery-date: Mon, 14 Apr 2025 13:06:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeO-000cCz-2m
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:06:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HeO-0008Ro-AH
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:06:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i5Xn3BH8lJKjApDgcc525+eio8OtCq8MFfL04iWC8JI=; b=yq/4HVIt0PdIZGWmVpJl5UiOmc
	Fk1LqKed1lOZrrjJfwE/sucsVAPuvnXpJLp8VU3qh7B620ysyIQtPQIlZWugqdZ8wX2t+OYX3jyji
	//y1ingBxoka36aniBwJktnZSG/DSoU0Oa/NIU4yHX7uMIbKV+wDoa3Kf48v5tb/AOJCjKL978U6w
	FvRbD+Y3En4QQzVmIGc09nNIxFW66mJ1oQ9UrjXFl/nwgN9c/O+FG4bmMxhSve1thXcuepsAYcAUN
	+vH1F9Hg7AtCXGhMdkMH5Xg1dGYWgHyBGganI0fZwA7J+FWPrRoG/yVrrGzyi7EUx0pLbwRRxyICs
	sokJ6z4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hdz-00000001f7j-18Rh;
	Mon, 14 Apr 2025 11:06:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HTX-00000001crX-22WL
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:55:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HTW-0004De-1C; Mon, 14 Apr 2025 12:55:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HTV-000EhY-2h;
	Mon, 14 Apr 2025 12:55:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u4HTV-00G44s-2U;
	Mon, 14 Apr 2025 12:55:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414102628.3156629-1-a.fatoum@pengutronix.de>
References: <20250414102628.3156629-1-a.fatoum@pengutronix.de>
Message-Id: <174462813776.3828855.8113893038405600388.b4-ty@pengutronix.de>
Date: Mon, 14 Apr 2025 12:55:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_035539_551166_4538511C 
X-CRM114-Status: UNSURE (   8.14  )
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
Subject: Re: [PATCH v2] commands: saveenv: mention where environment is
 saved to
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 12:26:28 +0200, Ahmad Fatoum wrote:
> We already mention it on loadenv, but it makes sense to do it on saveenv
> too to assist with debugging.
> 
> As this removes the only user of envfs_save that passes a NULL as first
> argument, disallow that going forward by returning an error.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: saveenv: mention where environment is saved to
      https://git.pengutronix.de/cgit/barebox/commit/?id=62f60c776367 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




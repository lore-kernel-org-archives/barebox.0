Delivery-date: Mon, 23 Jun 2025 10:57:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczC-00AD4t-2z
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 10:57:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczC-0003If-E9
	for lore@pengutronix.de; Mon, 23 Jun 2025 10:57:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vd2Rd88TCVWrXUvEVdybb2u+5+2xMKv+VRsYZ3lgjWY=; b=OqTRhvzSUXpteT3WMEJ17XOVZH
	aC0+pbzUTQLz2PS0o4EDZgYWuBQ0CnqER4jfh4vfH2lG175k3mvKnffY+hyHYwZMX9mVv9VdeJlIy
	1CTVzT7p3J0uwffZI4QtbY2jJVEA2pkuAZ01lfEf01+dNNruDq61UNkSdU8Z7XXMbGqQDNa7uRvNY
	vFE0RRy4sUMVJiuRKUwFl1dAFDH+YA2QN+H+n+7X+L4K9dAuqDLYYstahq8LLqpop1/mneBGfhpRN
	Z9GeTijZROatnIAcaTCJSEk6tfpyMfA4Im1eYKiyvFx2TDWSoFFSxdKM0IrJStafpOIt+nf0okmwq
	tEUTq+Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcyl-0000000255o-3zZa;
	Mon, 23 Jun 2025 08:56:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcfj-000000021Mp-0o0Q
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfi-0008GA-3C; Mon, 23 Jun 2025 10:36:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfh-004uvh-2D;
	Mon, 23 Jun 2025 10:36:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTcfh-00F7nz-1y;
	Mon, 23 Jun 2025 10:36:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, bo@mboxify.com
In-Reply-To: <20250620135835.87543-2-bo@mboxify.com>
References: <20250620135835.87543-1-bo@mboxify.com>
 <20250620135835.87543-2-bo@mboxify.com>
Message-Id: <175066781761.3604753.8391947205379913807.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 10:36:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_013659_233435_D4BF996F 
X-CRM114-Status: UNSURE (   5.81  )
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
Subject: Re: [PATCH 1/1] docs: fix git checkout command for next branch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Jun 2025 21:58:35 +0800, bo@mboxify.com wrote:
> Correct the remote branch reference from 'origin/remotes/next'
> to 'remotes/origin/next' in the documentation.
> 
> 

Applied, thanks!

[1/1] docs: fix git checkout command for next branch
      https://git.pengutronix.de/cgit/barebox/commit/?id=8d66df984daa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




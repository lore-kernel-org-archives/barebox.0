Delivery-date: Thu, 17 Feb 2022 09:28:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc9l-001b1u-Lr
	for lore@lore.pengutronix.de; Thu, 17 Feb 2022 09:28:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nKc9k-00026V-BT
	for lore@pengutronix.de; Thu, 17 Feb 2022 09:28:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBr/Kk3YqRKbxfOjTZP13e884iqbssnpaGPito4kJOk=; b=R+6eOkST9dYVXX
	Fe91Ef9R6zsqiy1tDq+D97NWno8Ishq/fKQCNah1h0Y6UpiirP8w/DoeVrKxSUXWD8rKnHnAZC73H
	l9n2AGz/FfLj+CxXp7dwcKUKFUwQVzGuJuXuUhXY99rZKzuX5zvvn8v29KPOIr6+OROJy8dzufVra
	MYgRb6ZnH77eOxyIJVnK5R9mWP1KQfOJg6g1HieN7KW2LD5vw+pUJem5P3rDyedLEVmF38QLz5RsU
	ktT+gHFjBF/8LT+SQrI7VUWSlIrRVdlkgZCe5idIoevVS6sKjdMEfK1WQnM7aguWCF8iR83tVG1yV
	wDqgIwjey8pvwj1JGyhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKc8U-009PIo-6n; Thu, 17 Feb 2022 08:27:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKc8G-009PD5-9T
 for barebox@lists.infradead.org; Thu, 17 Feb 2022 08:27:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1nKc8F-0001mc-3p
 for barebox@lists.infradead.org; Thu, 17 Feb 2022 09:27:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1nKc8E-000Lc3-LU
 for barebox@lists.infradead.org; Thu, 17 Feb 2022 09:27:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 17 Feb 2022 09:27:13 +0100
Message-Id: <20220217082714.81749-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_002720_379619_24227571 
X-CRM114-Status: GOOD (  13.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/1] Applying barebox for Google Summer of Code 2022
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

Until February 21st, mentoring organizations can register for the
Google summer of code. The program enables students to get involved in free
and open source software projects while getting a stipend covering ~3 months of
programming work. Google recommends mid-size projects to be around
175h of effort (about a man month if done continuously, which will probably
not be the case).

While students are expected to interact with the community,
they will also have a mentor to discuss the project with in-depth.

I talked it over with Sascha and we want to give it a try this year.

The follow-up documentation patch describes a number of project ideas
I have and find interesting. Feedback is appreciated as well as more
ideas of first barebox projects that would be useful to the project
as a while.

Of course, these projects are not tied to GSoC. If you are reading this
mailing list waiting for the right project to dig into such low-level
programming and you are not eligible for GSoC, just reach out here or
on IRC.

I'll submit the GSoC proposal over the weekend. Sorry for the short
notice, but patches to the project ideas can still follow afterwards.

I haven't taken part in a GSoC project myself before, so please reach
out if you have experience with this. Mentoring volunteers are currently:

 - Ahmad Fatoum
 - Sascha Hauer
 - Rouven Czerwinski

Cheers,
Ahmad

Ahmad Fatoum (1):
  Documentation: devel: add new project ideas section

 Documentation/devel/devel.rst         |   1 +
 Documentation/devel/project-ideas.rst | 174 ++++++++++++++++++++++++++
 Documentation/user/introduction.rst   |   2 +
 3 files changed, 177 insertions(+)
 create mode 100644 Documentation/devel/project-ideas.rst

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


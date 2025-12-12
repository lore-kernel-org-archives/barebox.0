Delivery-date: Fri, 12 Dec 2025 17:22:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5uu-00AjEf-0p
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:22:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5ut-0003Ju-OM
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:22:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FNnuw+jm3+M/25SaWWiR3F3TzYyLKTKpTWMtk0S9JLU=; b=I7E5zpYr0vi7zC45Tg8yKmAKWM
	2KSuQpShLNFWtpye460gpccuPAReaq2yJ8fM+dp9z95Xqjs4lWqwkaxwlsQ+n7OZzBdLRqUlvWLql
	PjNSAmyGzCnbe/MtIpEYnjn26hR7EoQHa3ZXVdctZg/4MWny00EG5LZ2XhHUnnzAhfX7D4fYqRyS/
	0Uqds0R/T0JJE3Wis1T9C7XVByZB1mMeh43DV0d2etlhxVNOksQP36MZb+EjN56hDsqddGkJ5PykU
	R0LErdnnAOYRENOBQ3w2sXtC/+sjjbK641GIOURB2rG1aaJEF2io2Vkj1WZsFtO5QQvoXjdDkzZXJ
	Rehn4clg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5uW-00000000pYT-1OKQ;
	Fri, 12 Dec 2025 16:22:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5uT-00000000pX2-182S
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:22:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-00034o-FY; Fri, 12 Dec 2025 17:22:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-005K6w-0v;
	Fri, 12 Dec 2025 17:22:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-000000089ka-0m6z;
	Fri, 12 Dec 2025 17:22:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Dec 2025 17:22:06 +0100
Message-ID: <20251212162222.1937214-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_082225_311015_4068B95C 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/3] environment: allow board code to suppress external env loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can be useful for board code to deny loading an environment without
disabling it altogether, e.g. to disable load of the environment when
entering a recovery mode. Add a function for that.

Ahmad Fatoum (3):
  globalvar: suppress nvvar_save when no external environment was loaded
  startup: bump down log message about lack of persistent environment
  environment: allow board code to suppress external env loading

 common/environment.c |  7 +++++++
 common/globalvar.c   |  9 ++++++++-
 common/startup.c     | 18 +++++++++++++-----
 include/envfs.h      |  5 +++++
 include/globalvar.h  |  1 +
 5 files changed, 34 insertions(+), 6 deletions(-)

-- 
2.47.3




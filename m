Delivery-date: Thu, 11 Dec 2025 21:49:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbL-00AQbC-0Z
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:49:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbK-00022I-Ln
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:49:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0To0aQun2/6GNoX36N6VP3lMMEwobICuPLE2XXo9C1Y=; b=zVkIoxD6rmIt4loZUlgbHRhURE
	qf9HV0JQHS2PLQi3gCvqyEsGPB6guDRo2Q0bhIzQLu6Vc7aRfWdPrHidrqpOM/7Y2LIXFJq3CFSOk
	a2oq2K09Ve3VPGgTeJ88LlfEPMNa+CvxLydQidUn8R0iv4YXUZLAyG2NMUXITow2N7OzwTRpQegTi
	+Xoy3D21D/Na4feYHwzBdchRV51OHdpIgHG6JZ3XItYxYXBxktMkUn59xCgNt/H9GsUWdJ7DY4yJp
	X6ec4wF0eTYyp1y3XKx796NneDCzwc11eMYjoYB/TLC9v2AqjONw+MVCQH9E9/mvfdDXbmvJE7ESO
	vP+fmLfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnab-0000000HHhS-36Zw;
	Thu, 11 Dec 2025 20:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnaZ-0000000HHg9-171b
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0001nA-JG; Thu, 11 Dec 2025 21:48:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-005BYL-1J;
	Thu, 11 Dec 2025 21:48:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0000000BgnO-1J3v;
	Thu, 11 Dec 2025 21:48:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:48:09 +0100
Message-ID: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_124839_489927_693EE6CA 
X-CRM114-Status: UNSURE (   7.69  )
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
Subject: [PATCH v2 0/3] environment: allow board code to suppress external env loading
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
 common/globalvar.c   |  8 +++++++-
 common/startup.c     | 18 +++++++++++++-----
 include/envfs.h      |  5 +++++
 include/globalvar.h  |  1 +
 5 files changed, 33 insertions(+), 6 deletions(-)

-- 
2.47.3




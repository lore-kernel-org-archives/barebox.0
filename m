Delivery-date: Tue, 05 Dec 2023 12:37:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkL-00472v-1q
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 12:37:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkL-0006Ey-Lr
	for lore@pengutronix.de; Tue, 05 Dec 2023 12:37:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7rkBZioMWgAmyQ0hjvFEcT2EuSs9pEfk4P19mlLuM94=; b=3C2otWmKaJVxECRUvZTZamzcu4
	/SuGsbxISZx0+LSJ9238KFpy/3AB8Ka7WoO8zrytVvh1w8yW5Eu5l7BLPMN5OQfa5C0WJT8qj5vuJ
	wqz7xG85B4MxnSqIrSs+8Pb9zC/LsewKgTUrwUekfhPuTof5mo1EGoWD5vsh6v4ragOTl7xRTGar/
	bXVdh9q1TXkEiN5fMRCYNg3jKRUXGbzeywnusVrMNdqeFCDkMsYApZ4vEuMkpcU9rQErfPmPMg5m7
	29nJPI0WZaOevM5xaUl8ujE+6aqw8PBYxDh+L+Yx7oc9LC6OjQ8Mn9HbxHXZKrsMPskoGzPbRZTX6
	wblunzTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rATj1-0079HW-1w;
	Tue, 05 Dec 2023 11:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rATiw-0079Fk-2A
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 11:36:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-0005w8-BM
	for barebox@lists.infradead.org; Tue, 05 Dec 2023 12:36:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiu-00DjOR-VD
	for barebox@lists.infradead.org; Tue, 05 Dec 2023 12:36:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiu-00H1fd-2p
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 12:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  5 Dec 2023 12:36:15 +0100
Message-Id: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_033622_727739_C9DA4928 
X-CRM114-Status: UNSURE (   6.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/3] FIT: match best configuration when multiple are compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, we match the first compatible configuration. There may be
multiple matching configurations however and we should continue looking
for a better match if a match didn't achieve maximal score.

Do that by checking score against OF_DEVICE_COMPATIBLE_MAX_SCORE and
continuing the search if unequal.

Ahmad Fatoum (3):
  of: define macro for maximum of_device_is_compatible return value
  of: early exit of_match_node if no better matches are possible
  FIT: match best configuration when multiple are compatible

 common/image-fit.c | 15 ++++++++++++---
 drivers/of/base.c  |  9 +++++++--
 include/of.h       |  4 ++++
 3 files changed, 23 insertions(+), 5 deletions(-)

-- 
2.39.2




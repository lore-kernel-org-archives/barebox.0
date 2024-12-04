Delivery-date: Wed, 04 Dec 2024 07:24:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIioD-003o0k-0a
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 07:24:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIioD-00086B-4q
	for lore@pengutronix.de; Wed, 04 Dec 2024 07:24:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NwdhdfkpyND/sxrUBntu5cHqSykX/LALj1odjofzaCA=; b=LsRHrdhMQ33hAt4ZQDwHP56a7F
	Olv00e1ALIveJduU/gv8Nost9hGqopVLsruv6FJKTjShOjNhO8lsQRS9fEB7l50F8pAoZbA/7Q47p
	nse8ms56bNOyyP/YZWhocNcQAWtolbb4Q38PX8DTRi57kzttFt7fBEHy1gDeGgq7764yhT4UdCT8l
	xQesfksEpFKQP4rdyaw1e5CE0lQKsB/Gm/G9ctQSFA/skpztZlxrXrZ3ucHKU7CBg2VXRwIO0xpiu
	q8rYkBLxL3lP24v8tjVUODQe8hGe462k/DkpZ4pTasfRhT2VZYB7DLutfal3Gduiu9DAarX5640h0
	u+JBlRdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIinl-0000000Bbp4-3p69;
	Wed, 04 Dec 2024 06:23:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIinj-0000000BboZ-00Jr
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 06:23:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIinh-00080h-6g; Wed, 04 Dec 2024 07:23:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIing-001bVt-0n;
	Wed, 04 Dec 2024 07:23:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIing-003BKG-2y;
	Wed, 04 Dec 2024 07:23:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2024 07:23:52 +0100
Message-Id: <20241204062352.758284-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_222355_040610_9BBE0E06 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: imd: update information on barebox_update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The documentation was added in 2014 and support for checking IMD on
barebox_update came 2 years later, but the docs were never updated.

Bring it up-to-date now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/imd.rst | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/imd.rst b/Documentation/user/imd.rst
index ce1b90c93648..8173357500bf 100644
--- a/Documentation/user/imd.rst
+++ b/Documentation/user/imd.rst
@@ -54,5 +54,7 @@ example is the Freescale i.MX28.
 IMD and barebox_update
 ----------------------
 
-The IMD informations could well be used to check if an image is suitable for updating
-barebox for a particular board. Support for such a check is planned but not yet implemented.
+The IMD information can be used to check if an image is suitable for updating
+barebox for a particular board. This is done by comparing the OF compatible
+of the running barebox image against the compatible tags in the barebox binary
+being installed.
-- 
2.39.5




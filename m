Delivery-date: Wed, 12 Jun 2024 15:37:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOAS-004pmx-0L
	for lore@lore.pengutronix.de;
	Wed, 12 Jun 2024 15:37:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHOAR-0002uc-HT
	for lore@pengutronix.de; Wed, 12 Jun 2024 15:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1muivvUDszf5so9zKvi38a0L9cF2fBkgc/PfuFqKavU=; b=BqGZdMlBVbthzg
	vUL68uRX+Lrb0AShGAiGl2eVh1VJ7Qbpf8AeJsdJkpb2SUOM0vRoLNBE9Bm8Yn6SbU8TjKM78I8x7
	it8V9g2Ca1ShoeeQCBQrVmDC1P8QXbWi8CmhSiGIY6OnvFwZ+XI/EZCVxI28K6ieH6f+le86MufxS
	zenpTwXc65Lz6CpsK2VeTohQOddamGkoflcWp6ZZ448tGiZOWQIJNjyalToXJ9K2lrq5laX4Vd40t
	3+94O2+0VHBGGmjydobfa+ZQn9FoqIvhEq41iw8rZlPrAdg0dh9gqgChpP0knjxeThe+ur0TfgYmF
	qYYAu3eXZckJFDCU7Fxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHO9v-0000000ClSl-2Cu0;
	Wed, 12 Jun 2024 13:37:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHO9r-0000000ClQW-39NZ
	for barebox@lists.infradead.org;
	Wed, 12 Jun 2024 13:37:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sHO9n-0002mb-No; Wed, 12 Jun 2024 15:36:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sHO9n-001nZ4-BO; Wed, 12 Jun 2024 15:36:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sHO9n-00Ala9-0q;
	Wed, 12 Jun 2024 15:36:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 12 Jun 2024 15:36:53 +0200
Message-Id: <20240612133653.2565305-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_063659_809218_7894DBCA 
X-CRM114-Status: GOOD (  11.24  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: state: add real-world example for stride size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The usual use of barebox state is to store the bootstate for
bootchooser. Thus change the example to use the minimum size of the
bootstate variable set instead and relate the result to stride size and
partition size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/state.rst | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 9054a3792337..75352302c7ff 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -357,9 +357,14 @@ size of a partition).
 
 .. important:: The ``direct`` storage backend needs 8 bytes of additional space
    per *state* variable set for its meta data. Keep this in mind when calculating
-   the stridesize. For example, if your variable set needs 8 bytes, the ``raw``
-   header needs 16 bytes and the ``direct`` storage backend additionally 8 bytes.
-   The full space for one *state* variable set is now 8 + 16 + 8 = 32 bytes.
+   the stridesize. For example, the bootchooser boot state needs 20 bytes for
+   its variables. The ``raw`` header adds 16 bytes and the ``direct`` storage
+   backend adds a further 8 bytes.
+   The full space for one *state* variable set (minimum stride size) is thus
+   20 + 16 + 8 = 44 bytes.
+   The minimum size for the backend partition is then 44 * 3 = 132 bytes.
+   It's a good idea though to increase stride size beyond the minimum to leave
+   some free space for in-place addition of new variables in future.
 
 Circular Storage Backend Redundancy
 ###################################
-- 
2.39.2




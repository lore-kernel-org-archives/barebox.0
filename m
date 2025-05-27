Delivery-date: Tue, 27 May 2025 08:27:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnma-000ljD-0j
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:27:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmZ-0003FV-L7
	for lore@pengutronix.de; Tue, 27 May 2025 08:27:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EdqCXCfCsbZrPDbXaykp7M6GqJlYWqHVPJH7hKZPD/o=; b=DLBpOHLSi0hm1d8okQAiqA8PHM
	faRXNBcFyi2Qh/MUjaUyBYkdm9cMBTeIJkW6V2VpbFPAh2V1H9W7IE36w9A2l7UM9bqC5yXI7By4N
	URIZ15zyx6PWLkuXSAS+JOepVCmcEbClbcGNhp11UEuU+xN7HhRM8th9N1+oFCJ3YDvAwMjdY9ggS
	/vFhigrC2Ael2zT9w6IVVeMvYiCIgRSV6sHFq9kG8/uWlGnrrhyqQ51WD8FILIHN4qR+XlX6s/LhU
	LqWQDvUkakqqD5xiwU7i1S7yNTfruu+B0n3K6HoBZaCDgmn1BXeqdyGFgY8Nc/ZiuyBXpI4d+Vam2
	v4g8ndMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnmA-0000000A1y8-02qH;
	Tue, 27 May 2025 06:27:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm6-0000000A1uk-3XHw
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:27:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-0002wl-Eq; Tue, 27 May 2025 08:26:56 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-000N9z-0q;
	Tue, 27 May 2025 08:26:56 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-00C54b-0e;
	Tue, 27 May 2025 08:26:56 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 08:26:30 +0200
Message-Id: <20250527062632.2879361-3-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527062632.2879361-1-ejo@pengutronix.de>
References: <20250527062632.2879361-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232658_895203_3129497F 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] doc: user: barebox: add markup for release scheme and update dates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Makes the documentation look a bit more 2025ish.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/user/barebox.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 983ebdee91..710af0d43f 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -5,9 +5,9 @@ Getting barebox
 ---------------
 
 barebox is released on a monthly basis. The version numbers use the format
-YYYY.MM.N, so 2014.06.0 is the monthly release for June 2014. Stable releases
+``YYYY.MM.N``, so ``2025.05.0`` is the monthly release for May 2025. Stable releases
 are done as needed to fix critical problems and are indicated by incrementing
-the suffix (for example 2014.06.1).
+the suffix (for example ``2025.05.1``).
 
 All releases can be downloaded from:
 
-- 
2.39.5




Delivery-date: Tue, 27 May 2025 08:27:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmZ-000liV-0R
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 08:27:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJnmY-0003Ep-Ja
	for lore@pengutronix.de; Tue, 27 May 2025 08:27:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/EM7XsoDJNXUHDz4OvXZQhqrCjCWGNwtDTo2RKbqbQc=; b=gH+eeopCnHRMdEFS/jZZfA6eZb
	0dYtE27jBQeicDqQaTBexRRHGu51Hva7hz0VpZLTeJRk5tgfaiIXN9+3GALPyb4hmv67RZef7J54w
	nCkXtzVRxomF/C/bZXYC8Y3BbYtthMErn2YgFSWutxc/8CO38hLwNdS2lXelVEeai87kYXqY9F/vE
	xMQNdQQjEozprTP94e0YEQvMWbwFvWI6GcYZ55+hf0ev5D5uVnQ5NdO74OWZXTzGW5suJ+hsfbfuG
	MYt00s53jXMrJ+RFQxQek7qYzNxN4vaz08eonx3+tGB7r8eljJ4+MOMahadk+mryU2BMsN4+ZKPPj
	aQTEENKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnmA-0000000A1yn-2TbO;
	Tue, 27 May 2025 06:27:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJnm6-0000000A1un-3jXW
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 06:27:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-0002wm-FP; Tue, 27 May 2025 08:26:56 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-000NA0-0u;
	Tue, 27 May 2025 08:26:56 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJnm4-00C54f-0i;
	Tue, 27 May 2025 08:26:56 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 08:26:31 +0200
Message-Id: <20250527062632.2879361-4-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527062632.2879361-1-ejo@pengutronix.de>
References: <20250527062632.2879361-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_232658_936877_0A4647C3 
X-CRM114-Status: UNSURE (   9.11  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] doc: conf.py: update copyright from 2022 to 2025
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/conf.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index 5fb8b07c38..9b1aa26ef9 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -44,7 +44,7 @@ master_doc = 'index'
 
 # General information about the project.
 project = u'barebox'
-copyright = u'2014–2022, The barebox project'
+copyright = u'2014–2025, The barebox project'
 
 # The version info for the project you're documenting, acts as replacement for
 # |version| and |release|, also used in various other places throughout the
-- 
2.39.5




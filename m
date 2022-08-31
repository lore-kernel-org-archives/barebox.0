Delivery-date: Wed, 31 Aug 2022 10:52:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTJS7-002VIg-4J
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 10:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTJS5-0001Uq-Qj
	for lore@pengutronix.de; Wed, 31 Aug 2022 10:52:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hxAkFiyVsnGaJT37/Ii/L67KYpVqYzrhQHQJWwXFL+s=; b=GSLU0rHExkyBS5nd/jDRn6P+kF
	L5HBCCi4tNWfZMrqR7hUWUq88Xd1PnoHP7GLDGrRtZXVGApTWkXVk0k8HDaSVLQQ/CSddI2XUrwG5
	NPcVfJLwLz623trpgTqMa2QTVkYTPpJProOZn66mATcOG038+X+RL/ph9Iy2Uhl8vsHSzsk4V4Efg
	AmtzoNLzhwjGWLNCqjm9vaQXYrDOC4A9EIeTQf8ZaikyGpR+86fQ6E9Zzj8uxA8ZtSlDbpsVkwHmG
	YqbXWwyp4Q8wt8j6hfvK8dgbYJ1KA0ozU4P8cM3nQCRdLLaN85CI6KGhgqyuT6o6q8bn/DApXojc2
	gcjJrR6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJQc-0053n9-Q5; Wed, 31 Aug 2022 08:50:30 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTJQX-0053ly-Up
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 08:50:27 +0000
Received: by mail-lj1-x234.google.com with SMTP id k18so7491339lji.13
        for <barebox@lists.infradead.org>; Wed, 31 Aug 2022 01:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hxAkFiyVsnGaJT37/Ii/L67KYpVqYzrhQHQJWwXFL+s=;
        b=ohAjQPgtM0J/N4FOjDY6ZfB2YloA5esCY2tU3W6L2kk+dHzcVWep2QZBFXcDbSYAHs
         BTOknaKCjAjPZx6qYupp27I/S4XY8GrdO3bJ4tDhc3UYDNlEtbl0XPC0WwmorvODfYEv
         hADA6eEjFsPesNX6c0BF5tQHlq5sQE44F/lDxVjWSJK6DMTTmh0V5+o4nKUDsXWIZ4Il
         PftCe+z3T42wJFpO2kR3iSBH1wlunfIAlOHe+mulHuQGzovadvfgxRMiBMOmF/+JkKmS
         vESgvhTNPxOxxpS1auFIkQ00gxUGrs35/JbkvRStxhEIlYzgda2yphNgSOePk7d93qkD
         Lhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hxAkFiyVsnGaJT37/Ii/L67KYpVqYzrhQHQJWwXFL+s=;
        b=MKfwMCOjDYweEMBL0aYLLJYdor86eti7fhuXEn8l3sstCeI8T/3t2lTo9u8G3MatOA
         r5CApER8CD7It1uHDTyfjjg2HZd54MgZWb3hDwh9+K84qXnaXFhiqVeKodgOkeub+aq5
         bbuRBfE4y/CwojrFLMYEV0El4uhdFPVJoRCA/Tv93n3WKbKrF9/a8h1H741zLbxOYgiO
         /1g4Sq0oNISoNdodY0nd7ctuEM3sDgA3rE7694MB4cCUsGe+alrWv1fs+vMLfju8dOL4
         U1x351XBiuX4OXzRnCXwLzP2qxbaWRq7D5OX5Ty8Dhhc0pmQqTU5rstXeX0gEzfbI4M+
         dxOA==
X-Gm-Message-State: ACgBeo0B7ONCcgBZqeHwzJ1UkENNyfZmh9tGyXX5XJXJ0VYz6CajyPyS
	CZY3ZfL5R3xACJthi4zA5GFh54gZYfI=
X-Google-Smtp-Source: AA6agR6s70ev+CrDnJuVqCJEN2m7OPYhZ09eef2gxbvqKFe1Yuq/lllPyzHRG52FoUq/FWRQ0lI3qQ==
X-Received: by 2002:a05:651c:1787:b0:261:c1ff:4407 with SMTP id bn7-20020a05651c178700b00261c1ff4407mr8040541ljb.257.1661935823297;
        Wed, 31 Aug 2022 01:50:23 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id p15-20020ac24ecf000000b0049484d936ccsm288898lfr.24.2022.08.31.01.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 01:50:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 31 Aug 2022 11:50:01 +0300
Message-Id: <20220831085001.66538-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_015026_008344_F61CF8FA 
X-CRM114-Status: UNSURE (   8.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation/gen_commands.py: use python3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/gen_commands.py | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index a55b1acd82f..7c62a030dce 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -1,6 +1,4 @@
-#!/usr/bin/env python
-
-from __future__ import print_function
+#!/usr/bin/env python3
 
 import errno
 import os
-- 
2.37.2




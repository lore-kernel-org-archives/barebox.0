Delivery-date: Wed, 14 Aug 2024 12:31:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBHR-009VSU-0A
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 12:31:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBHQ-0005D9-FB
	for lore@pengutronix.de; Wed, 14 Aug 2024 12:31:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wog/2SqcU6vHNX+yPPQjebtqdlqNkulYAxksKjJeWwY=; b=Bry6I6Xo1d3RE4YT/9LFsaFwgd
	JKBk5+b3XFsvXTPD1paGY/0NwlTm5yw9ZkqPptX39wHOLbVB+g6L4mjrD9po2zRx/N7fgIGixxIji
	s7N+GS+D7fkiyrXyk30uUFdggqAvJR3DkrP9dEWRZwRwRmmdiomWBYEpebnWZ1S8rNvlLRUhuHxXS
	h7qHLfVQc98rj78XWwoBOhCF9FCJTkaA1WpVmGxnUr/lJynKQpKD5SmpIGspolucGGrSi8zUwQCBv
	LX7GxWoCj2ueL0FlGH8IbRkftdixXwUSba0kR/74aJ4PN3Av2xM2ZCt3brdv3ZEXQBMMmJbSgxhS7
	P4SBEcqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBH9-00000006bb3-1cxM;
	Wed, 14 Aug 2024 10:30:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF4-00000006Mrt-1eFi
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Wog/2SqcU6vHNX+yPPQjebtqdlqNkulYAxksKjJeWwY=; b=jHi6w2Av6kldnrwxIiznSab0ox
	y3D1wHTipwTStE8pUswzpfHrw+CJNFT79F9gyfqtVNtw90j0afRfzJltf6HEOptU6Uy8ceaVx5gLy
	yWTWJKZ5U1qxj8ItMw3lmavseiU473wDrgJP/1FOgpBITa58jv6VNRJtkZ6WivL7+VWzoYiXSdiZJ
	OMAXqjgihloNpzfSa/i734xMgXLcS/ofauoi8QEHPd9Mzn19CQdTgkik/T3XMcIWcA7fgFfLzTlWO
	l2TJsUfaN5PpsCi7/BGALKz0I1OFL8/jCmQAl9HG5UgIhPy1KiUa0PHCxMlQu59uMi3A43PhbaRqU
	GRXrldSg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Lf-0H6t
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-0006sZ-Rx; Wed, 14 Aug 2024 11:24:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMj-Ee; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1A;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:19 +0200
Message-Id: <20240814092424.39878-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_423067_2BD07524 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] common: pe: fix use of undefined macro for ARMv7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

IMAGE_FILE_MACHINE_ARMNT is not defined in barebox, unlike U-Boot.
The macro we have is IMAGE_FILE_MACHINE_ARMV7, which has the same value
of 0x01c4, so use that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/pe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/pe.c b/common/pe.c
index 5c33665dfa74..6164dd68b7ab 100644
--- a/common/pe.c
+++ b/common/pe.c
@@ -22,7 +22,7 @@ static int machines[] = {
 #elif defined(__arm__)
 	IMAGE_FILE_MACHINE_ARM,
 	IMAGE_FILE_MACHINE_THUMB,
-	IMAGE_FILE_MACHINE_ARMNT,
+	IMAGE_FILE_MACHINE_ARMV7,
 #endif
 
 #if defined(__x86_64__)
-- 
2.39.2




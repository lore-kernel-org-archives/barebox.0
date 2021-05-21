Delivery-date: Fri, 21 May 2021 18:36:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88G-0004oI-3w
	for lore@lore.pengutronix.de; Fri, 21 May 2021 18:36:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk88F-0000mY-BG
	for lore@pengutronix.de; Fri, 21 May 2021 18:36:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3s1zXLYCsXmcx+bnyZFO+yC/w6+QqSibKN0k6+S5BU=; b=Z3NUUA4VuM8Gn6E7B3LL2vQ2wq
	AM7BAr6E+ZDrUxGF//xjCu+gDNYbD2nHpzohh18ayQHg5z8EbHchAaZP32yOVvPDRHevMpl7M6mVV
	owiH6Dll19KsN9GBa8w5+dZutNZbHyMFGn1q8KRr1nl9rKMqYHYPegDZR+GcVZOk9pcDHAKSURYLl
	vGr8cr+hML5kZySA61JoxWBLDaYLkQzlbGmR/bUOm9qV2514wqoWKW9tUZq+ZiWFALgKzv+RC2iMu
	IelWh4kKEiLzOIGzqZkk534Mr2U4Nq4En9bkBkW544Yl+NDt8t9DuXW1PqopSH26VPJV8GATYEFgN
	dEqkZjjg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk87G-000GzA-89; Fri, 21 May 2021 16:35:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk86p-000Gug-5C
 for barebox@desiato.infradead.org; Fri, 21 May 2021 16:34:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=Gq7qJwxHauseTXnCqjWFjibNRcEuN4Eb6CaaQFwttDU=; b=Ik500Ic/hopsMQjCYaps9gul2B
 c/51BXAKk+YEHoD0x0YbsG01FbudBvCoHFm6NKmpBfVOYGGBv6XdtWGiNd7OUi6UOmwXD8zTU2Te2
 SSAR2s3jPZyBwMKTq/uVnPVPT+Rw49Ob0wc/AU6aLP6QmBmlwrbROGYTCCdPFzGTvcG42RU1HxDF1
 dDlTLT1RnjdQ0rQqZIh0El9gIhOxZojZ0h8jPclRwVHIzd8Z6NxvSG9dZj6ca6hbbl4SA+5y7betJ
 WW4m/1/YiswVTyeaxXO7bJk7ba0A1F1mSlG10ceGRr9raQ47VVs8hselfRQEKz50HpPBg+je78eOr
 UCYIvx9g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk86m-00HHUR-F8
 for barebox@lists.infradead.org; Fri, 21 May 2021 16:34:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0000MA-H2
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lk86g-0004XL-5G
 for barebox@lists.infradead.org; Fri, 21 May 2021 18:34:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 21 May 2021 18:34:32 +0200
Message-Id: <20210521163435.17365-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210521163435.17365-1-m.felsch@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_093444_519405_5C7F61D8 
X-CRM114-Status: GOOD (  10.08  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] commands: mount: replace printf by pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows us to control the output behaviour e.g. booting silently
to improve boot time.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index ff1d8bc5e5..bb2d1d60f4 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -74,7 +74,7 @@ static int do_mount(int argc, char *argv[])
 		if (IS_ERR(path))
 			return PTR_ERR(path);
 
-		printf("mounted /dev/%s on %s\n", devstr, path);
+		pr_info("mounted /dev/%s on %s\n", devstr, path);
 
 		return 0;
 	}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


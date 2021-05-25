Delivery-date: Tue, 25 May 2021 08:22:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQSx-0007hS-Ar
	for lore@lore.pengutronix.de; Tue, 25 May 2021 08:22:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQSw-0005Cq-HJ
	for lore@pengutronix.de; Tue, 25 May 2021 08:22:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5XSQF/hKfifW1zJ4JCr8jctndPggjrYGYzZ2tfMi6YY=; b=TfeUQ7wCtSdmjj
	4Sx4UE4NlTfJ0cI2RNM1lTS3Cga9TjEBJKgQkawLVkMqL2TVV9u3MxAvXt50bYnuEgJE6G8wmIHaq
	3qUgpECucFXmkNj0as7KDvTkcqm9zJU7FzMEFEw3aI9RYG9YVc2Q8dAlSDnSCb3RYE1Hk2bwOk9tr
	C7Tnfn1+6+77FV9epEsHgU0Qhb6eCePt9ZmxlDYlBQmaDlisPy+Cqm68zuGWgGhTOpoYc1z9xPQ0A
	oVueUzoeiUztWp3T4670Aln4Cox98rC2KJDoJU9G0QTKpLyJAdsVfuiOcR9rNvIn/uMRK8a5bVZeu
	Fne9K+M+f7KKrzoh08dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llQRq-003bBy-UT; Tue, 25 May 2021 06:21:51 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llQRm-003bAv-Cz
 for barebox@lists.infradead.org; Tue, 25 May 2021 06:21:47 +0000
Received: by mail-lf1-x136.google.com with SMTP id i22so44035663lfl.10
 for <barebox@lists.infradead.org>; Mon, 24 May 2021 23:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+qJi/M1CsoE1Mf9d14xGN0nvcXo8QQHLWNP/F/mMfVY=;
 b=B4tCgqYbZbN1bFoSVilFtqEy66Y3o7519dCwn1GWNLR2bP2TSZARUzGMmMhH5mJZIQ
 3YrIpw6EA6G4Rmynz86upNONmQDrdQMc5OTdNoAAjehkfKu5omA+TypU/9smAVrZU41B
 yhQJF3FrOcjnfSQvGp6y06Z3LguDCZBtgg0iuLQFA5YfdQly+c3n/IbBYOle50R6D95Q
 gnH9DC/xte4czDlxPkI7/3DoK9iF835u5rPD0e389lOAja3+PZS1RWnhN55KsRps165j
 7zCBoQ1T3ueqSr1WY/1YpT5KcuejpHR5F9lJN/zraacwgCb2TnbprMJIqR/KD4MFR+Vi
 BViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+qJi/M1CsoE1Mf9d14xGN0nvcXo8QQHLWNP/F/mMfVY=;
 b=Lb87FRZtA5jVydvdxN0pie72Z1xvybQ8pn8dVRiY9OBO8L9LC3i4BYsTtmzEGrq3B8
 l+myufBobtRX4HZBMGSfBouvNpYn01uwVBWTunmXvs5mnsXNCUu9tAFtJr8C/SrCrvwM
 mODjWvtSOQHyced2k8ikIvuRIi6iToF+ZaRovaeQGna8KkvoU/Na4/0ocQc3hUY7Osmy
 TI5NA1zfs1AAfFfEYvmFtqYtVhTLJLiX83qITgQiULowZD52g1g7xZGwtI8tc3Qdh8LV
 TNCF3HkkCuf0IHkfsue+cUCzNtYAi5a6rk7mHh/255B6ipUkMbhpWG14KCPGbu+SGiVB
 dOnQ==
X-Gm-Message-State: AOAM533DahlZEYRTsajMNczjM3lrXN4PIqdqnpMy+WtuFfQOs5M7xlT8
 WbagT0WWWDgRQ2C8nYvG4zbkuwP2RmFFgg==
X-Google-Smtp-Source: ABdhPJzZ9k0Kg0EhQCly2OzXuYhaFyNqaKx/UsBSJu2Gcn0cUwLCqIJ9LoC7nPLudS00V9dDV9gIEw==
X-Received: by 2002:a19:430e:: with SMTP id q14mr12877714lfa.117.1621923704284; 
 Mon, 24 May 2021 23:21:44 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id j2sm1630478lfu.7.2021.05.24.23.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 23:21:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 09:21:33 +0300
Message-Id: <20210525062133.5458-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_232146_458939_8B9F2464 
X-CRM114-Status: GOOD (  11.32  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] net: dns: use correct nameserver var name in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The commit d5d342d26368c1 ("net: Make domainname and nameserver globalvars")
changes net.nameserver variable name to global.net.nameserver.
This commit changes the variable name in the error message too.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/dns.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/dns.c b/net/dns.c
index ffe98ef9e3..78588b96fd 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -215,7 +215,7 @@ int resolv(const char *host, IPaddr_t *ip)
 
 	nameserver = net_get_nameserver();
 	if (!nameserver) {
-		pr_err("no nameserver specified in $net.nameserver\n");
+		pr_err("no nameserver specified in $global.net.nameserver\n");
 		return 0;
 	}
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 25 May 2021 08:22:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQS5-0007gb-Rg
	for lore@lore.pengutronix.de; Tue, 25 May 2021 08:22:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llQS5-000590-1X
	for lore@pengutronix.de; Tue, 25 May 2021 08:22:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=73AZznWZ0y9kFpCfP0h2G3W/KIgFnQmVQ3xY2LTLb5w=; b=J9hh92U7rVaYxw
	8whe+jtQfPXy4iaUkTekUL3O3P7UIQ4+mMvExYQpJuL59RUop47N6pthVwGdI/t9/wYOUs+Rs8JpV
	kAxdMb3IynEOm+4Dfud3l06lBu9abkYVmd2injhuLyIN8UDIHnjwn8a9jaM6euPgoqgQyHFMH0qAe
	BYa+ap/NEts/xbM+ZN4RMtlFKCOP/umlc/mbItIzTIfmcLsHepHRe/EngadVpXDXsWRwWql8anBhV
	rBUCw6tuqiGgRm9JLv0SuXNwW5Og4B13LflCUpPywGfqLbvdTHCCnc78so0U+/k62YUg5iQpYivzn
	1dhZQ1PiZjZAGm0pXbgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llQQi-003atX-Ri; Tue, 25 May 2021 06:20:40 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llQQe-003asH-Il
 for barebox@lists.infradead.org; Tue, 25 May 2021 06:20:37 +0000
Received: by mail-lf1-x132.google.com with SMTP id b26so28178796lfq.4
 for <barebox@lists.infradead.org>; Mon, 24 May 2021 23:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0iEhAH3CxFgNeZM6b/tAY+GnzZZM3tV/KhQh6d61uMA=;
 b=Cqj5ZMsH7FPosJoKb9zTdOQU06oY/7GNsvzQ6+fYU81KKaZ1kOF/uaTnfQqJ7gfns2
 WlDsrEUD1v3e7k4jSS7W+j5KN5WBAoNwx9BRoboTNjvavI32Fd6cDKINO17hpg6F/FAO
 2CjD8Jigk96LHRo1umnsViK48QGJfRKaYFSPsU8Dggv8uD6UEfFn0MK24mRNyFtt5fjB
 pYoDIexly7Ek02osBceFqj+oucTc57PLWg3txUKLT9yzTxvXmZJzCA6VwDYBbbeo155Y
 2od82Ha03zeNBWKsEC2AjqUu4SguuATGf4cUjExOBvjFN9uCZhxFpZGMmqGrsyndh9nj
 jj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0iEhAH3CxFgNeZM6b/tAY+GnzZZM3tV/KhQh6d61uMA=;
 b=rJiRFcvV/QDEjAlRdQxTHJKIJtc3Zi2iH1nJRWckPX+uUVpUX26kfRqbGB8G/Z3+V0
 kvF3m7rVyjHzaMH8XX1gjSgU1ELP16xPCN10lg72KKrWIifshVqx77Ouv0cZH51PXHi7
 lw+eyYfvDjL4gdVY3/zDmXjqYXseXasuuJe1Xka/KBwmBeU3WAlR4WYnILbWrti9XH0r
 SDFmnX/PqVdeJ49xlJ30CpANmjPI0+UYYQqO3tYlhuXdDJsvR5BErAYqlH8gj/CPqAd1
 0msuiOxaQLIWIiD0X8fm3rrxlXjSOcUlsAzO8PA7hWoD20253BuKRPKMwLEB+fjxr4FB
 nEpg==
X-Gm-Message-State: AOAM532SLP6ywP7PnjX829zhDuMOD3BZmXbjpmLHQKgtpAOdWmBjKSGX
 OFjtaVBMLmmv4KO700Vigqf5H1kf2/30+g==
X-Google-Smtp-Source: ABdhPJy6o7c5hDpeV88nNmbCV3nvJHM6VHRI/ar5CIVhQ73QxjaZpg8f6w5UPQOgtFtSB+Y0dCCXSA==
X-Received: by 2002:ac2:5df3:: with SMTP id z19mr12744427lfq.386.1621923633912; 
 Mon, 24 May 2021 23:20:33 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id q66sm194843ljb.83.2021.05.24.23.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 23:20:33 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 09:20:19 +0300
Message-Id: <20210525062019.5392-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_232036_651031_D4B339CD 
X-CRM114-Status: GOOD (  11.15  )
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
Subject: [PATCH] net: dns: user corrent nameserver var name in error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The commit d5d342d26368c1 ("net: Make domainname and nameserver globalvars")
changes net.nameserver variable name to global.net.nameserver.
This commit change the variable name in the error message too.

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


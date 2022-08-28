Delivery-date: Sun, 28 Aug 2022 16:05:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIuu-00D8Ft-9a
	for lore@lore.pengutronix.de; Sun, 28 Aug 2022 16:05:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSIul-0002N1-68
	for lore@pengutronix.de; Sun, 28 Aug 2022 16:05:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BqTdz+PkVjeLfsIgNd++EQiLdAuNNzoqggddI1KFgbU=; b=Y7J4UK6NWBYz3HwqFgWecNf/Sb
	YWoY3FwOPdU2XYvG+Pcu7V0rC4Y3zn3eglGaQjyHhviGKdrpMzlKQVywYmTFOADGr55nmiRI0bado
	Jl0OhvUM7oO1TPJ205r2mRY0/shnYFwJQwq9y1QyFeHQqbRIkr4rmvOB6vTiI0RDYe1fIArptNJpN
	c0NIeIo3gCxUfVSOr/yDE7dXftXAGxP7c8nxpolONBQ/2uBtOGSjhLfCouyWel/h8ZzwXEFrkA6ME
	iVx6J5AVIguAylFPiK/87o9ofHtBre1gEYLz1VxKPsE6APgo7ZP4j6BXQ0zUOIaSyY+vvZo36jcTj
	fFdr5F3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSItA-00HKFR-WE; Sun, 28 Aug 2022 14:03:49 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSIsw-00HJnD-OW
	for barebox@lists.infradead.org; Sun, 28 Aug 2022 14:03:37 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2j5P976781
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Sun, 28 Aug 2022 16:02:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661695365;
	bh=BqTdz+PkVjeLfsIgNd++EQiLdAuNNzoqggddI1KFgbU=; l=521;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=2s1m2ZOfOlWVEwo7hTfnqjIGzloJZIBG66TNCmzdBGSVRJbka1owwwCSgQh5Ab+F2
	 1ruJOVeVAevy5QhZDtCpBXuNjUOtIZdUdc8w1DpU1GXeFbjc4wAzYhobwr6ozvJeXZ
	 kiqxhSajrCrUF5F27h2kybNVyQ+RpfrX/AxsukgImj1fGDhK3eGfvkDKzMqJgGSU2e
	 BtJGL/dtdEjQEx1MUWAZir71VoT3hePyPORK8qRE3QBv1HLFBde+nAoiYmRmYZa/n5
	 Bii7EwrD8ueDkVCoR1ww5k+E8jYzb8WleVdSEYJYr/T8lRDO6OadvMR+b1HABf5WI3
	 Z+HZkaMpo7nYQ==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27SE2f422843355
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Sun, 28 Aug 2022 16:02:43 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ( [192.168.12.72]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 3884D9BE704; Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27SE2bOF756478
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 28 Aug 2022 16:02:38 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSIs1-003u7U-8t;
	Sun, 28 Aug 2022 16:02:37 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Sun, 28 Aug 2022 16:02:24 +0200
Message-Id: <20220828140231.930643-2-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_070336_058871_DA10057C 
X-CRM114-Status: UNSURE (   7.63  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] tftp: make debug_assert() critical when selftest is enabled.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Run BUG_ON() when self test is enabled.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index e01aafce47b5..783413797251 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -84,7 +84,7 @@
 
 #define TFTP_ERR_RESEND	1
 
-#ifdef DEBUG
+#if defined(DEBUG) || IS_ENABLED(CONFIG_SELFTEST_TFTP)
 #  define debug_assert(_cond)	BUG_ON(!(_cond))
 #else
 #  define debug_assert(_cond) do {			\
-- 
2.37.2




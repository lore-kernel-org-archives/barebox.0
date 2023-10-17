Delivery-date: Tue, 17 Oct 2023 23:37:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrks-00CDJw-9W
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 23:37:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsrkq-0008JN-Dm
	for lore@pengutronix.de; Tue, 17 Oct 2023 23:37:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w/JRNVaSIdQEKEM9DwSaL7uauKVj3t5FC2F5NuMnvjo=; b=Bb/ZCCKeKXFqPsL4aog/U2dGKR
	zXfD1t8VaF2cq4KuDpkhjH7ihqDG9Dsq462kVtzyR23LjP77nEE6/ltoT8RLLcd9S9qZ34bPgqQqb
	55MmsxEWuJccjqzKgnGW9M+luitDKV3dkLsjGgchCiVs/K1dJySa1BNId5Okdc9//XlLUZ950ZPSs
	1fvrhsYibBBgzkcU8KnNZat4u5WD3kHAukYBMsorVB5MXEmDIiR+c55bWexxbiH6INEQqBHZ9xCd1
	i2ED15oVzi1SAY0ia/yqSZyVihla+Eld9Ef4VDyz9H3fFDukj/Y/dZsnj3gqHmP833qpgSPt9q4G+
	2X+rQMSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrjd-00DJBq-1K;
	Tue, 17 Oct 2023 21:36:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsrja-00DJA7-0W
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 21:36:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-0007wP-UH
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-002PIX-Gm
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 23:36:10 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsrjW-00Ef1m-1U
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 23:36:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 23:36:06 +0200
Message-Id: <20231017213608.3494255-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017213608.3494255-1-m.felsch@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_143614_205732_1826A88E 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] scripts: common: fix buffer freeing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We pass the wrong address to free in case of an error occured in
preceding while-read loop if the loop is executed more than once. Fix
this by use the outbuf which stores the original malloc'ed address.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/common.c b/scripts/common.c
index 0599cd41ff..49c468a1ea 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -76,8 +76,8 @@ int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_si
 	ret = 0;
 	goto close;
 free:
+	free(*outbuf);
 	*outbuf = NULL;
-	free(buf);
 close:
 	close(fd);
 	return ret;
-- 
2.41.0




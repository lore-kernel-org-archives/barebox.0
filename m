Delivery-date: Wed, 24 Apr 2024 09:09:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkf-00ER4q-1t
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkd-0006Nt-8k
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=woG9aRpCEEEQAyqH6qXSgrdMQI+Z2FTbesDFAzq7y2k=; b=QYvZkzc9TM5DjUx1P4aGC4ZeZe
	53ZslBf2mFHohHl3HdDWJNn9aHSL48aDkVWMwf0mX5t1nlwctaJ8NrVxBUKYigMh259ozjmXsXe9k
	oCvneQjkMnsYHYU6lBVuct6P9otPV5GWPiGQbzVWEO8rUUJX/4kd0vWW7A9hqmjEjeJht7D13fnKi
	cscYUGIp0KlkQpJ55p+qQmjM1SuJ/ZikUhAMsr8Qqgy40r7Nm66qCnbolycJSd+o/fmlR5Po+zF7r
	hZbRaqniA0MYVoX8SZLdPzENf1Md0wbvr7ey+cOHg8fi/meK60yqM6+xNB70NiGfDha1cJ1GPcO73
	GXD+UTTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk1-000000031z4-1FoG;
	Wed, 24 Apr 2024 07:08:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjw-000000031t1-49VT
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005c3-Es; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24N-27; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-1m;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:48 +0200
Message-Id: <20240424064058.3608016-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_187569_C8C8BAAC 
X-CRM114-Status: GOOD (  10.11  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 13/23] commands: mmc_extcsd: use DMA capable memory where needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_send_ext_csd may do DMA directly to the passed in buffer. Therefore,
be sure to allocate the buffer with suitable alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/mmc_extcsd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
index f67c48404a54..993a6dd12b23 100644
--- a/commands/mmc_extcsd.c
+++ b/commands/mmc_extcsd.c
@@ -2418,7 +2418,7 @@ static int do_mmc_extcsd(int argc, char *argv[])
 		retval = -ENOENT;
 		goto error;
 	}
-	dst = xmalloc(EXT_CSD_BLOCKSIZE);
+	dst = dma_alloc(EXT_CSD_BLOCKSIZE);
 
 	retval = mci_send_ext_csd(mci, dst);
 	if (retval != 0)
@@ -2473,7 +2473,7 @@ static int do_mmc_extcsd(int argc, char *argv[])
 			print_register_readable(dst, index);
 
 error_with_mem:
-	free(dst);
+	dma_free(dst);
 error:
 	return retval;
 }
-- 
2.39.2




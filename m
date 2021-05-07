Delivery-date: Fri, 07 May 2021 12:57:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAk-0004Hh-G0
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:57:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyAj-0004uu-N6
	for lore@pengutronix.de; Fri, 07 May 2021 12:57:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2gkCOiWSIbHOxJjvVA3aVO6MgdTSHcT7bqwhdpaqLu8=; b=QmH9ycUkLM5Iz1Us0e1WiJgav
	NQfE0OdgVZdt7boqryD++Gb9d6YJslfcKwFz0ThNWTNCrVakcx0af3/9cda2fdY9r0KjT1dsV2wsf
	DlULnZMROC8PwS6l/9KzTsFt0IztPhhlcVu8mpwWIPv1yuDMuTPQZzbdweK5WfV+dPsXaYJZc810o
	PBser9fxWhq7CPItgNOk1MiqTNqvxtxSWAsYyngB5vmFysUOQjQAsH1vmFZoeWg383i9EeEqOI48A
	3VpRTYF8gkK1zwHicwsSYx0vkz7ZO9RsqDzbFuIIJCQQDoMjCxvMThOnSqzt2XdaX+8q3S30TrDZe
	MaiFuNjRA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ley9h-006t6F-3z; Fri, 07 May 2021 10:56:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9Z-006t5s-5h
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2vngtw36jakWgZVUCzvAIKS6bpEa+a/m+ce/mqz+/DE=; b=vxxulEpmocIbLzQgklZXhw6ytq
 NScgM3WIS11n6vaBfOOuKcvkcxtr5z8zXbdoQLqlLbO/Ibmp3AD+eVoL6OWsn8gyj+ZF7WG69Gyqf
 wegCuLCQibM3muk0J6AXKceOxLyVP61hPamNRW2CocVJqcuK9OrVruQUk9uDR9YAP8G6L23a4/SAg
 rD9TZGK52ef1fUdVSOxJ1ZmmnKjIaeo6LOV10lKIbXq3vB+bCEeFf7yRQHxFL8knNdz9SdxxAU34M
 00H85ttutl2QeySYfMKi9a2HVbP1BfSUPFzOljbN8Zk5Eonfqd+HlzBA3qqs67c/1jN2lvHBOqudz
 Ce7jzd/w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ley9W-006nSW-QK
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:56:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-0004ZX-Ml; Fri, 07 May 2021 12:56:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ley9U-000564-5h; Fri, 07 May 2021 12:56:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  7 May 2021 12:56:09 +0200
Message-Id: <20210507105611.17017-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210507105611.17017-1-s.hauer@pengutronix.de>
References: <20210507105611.17017-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_035614_875727_16C4E78F 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: Neeraj Pal <neerajpal09@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] fs: check for empty name in getname()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

getname() should return an error for an empty path. While at it, change
getname() to return an error pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6de5a3b59e..09fccf9c28 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1866,14 +1866,17 @@ static struct filename *getname(const char *filename)
 {
 	struct filename *result;
 
+	if (!*filename)
+		return ERR_PTR(-ENOENT);
+
 	result = malloc(sizeof(*result));
 	if (!result)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	result->name = strdup(filename);
 	if (!result->name) {
 		free(result);
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 	}
 
 	result->refcnt = 1;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


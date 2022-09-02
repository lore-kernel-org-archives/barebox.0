Delivery-date: Fri, 02 Sep 2022 11:56:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU3Q0-004H77-S1
	for lore@lore.pengutronix.de; Fri, 02 Sep 2022 11:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oU3Q1-0006uz-Ds
	for lore@pengutronix.de; Fri, 02 Sep 2022 11:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SwbYPjDKclBVfXH39EksqegQ9UxeSBpxcn//O2H/8Zg=; b=0UGQVIVXJIwWnS4ClZATv2V2DH
	7doOky3/niRcaueFwXwGhE+HuftJhc/wmFSm0qbg5uy6rgXuWbG/3GaNZwzu2f9GFU/BB+vs8TgCK
	VLtUjZvkdKmVguOUsShQqmOXl9aEsU36MuxYqOGCpN50QE3N7RU/KQ/RPJ6wMXyrK/sfvZKZnoJng
	jawvk5s26USDyaxswmZf28FZjOBFRLTT4icBbkZLkja76QLjrxE57tfsD0+1OkG7TU0huFZ5w8ryv
	tcf+ErMPqp31gk05DAryQKNFouH+H7SdhjExzaGapahnRA4bdn1Hs8BjaBg49eXwFlakGR+9LNWvl
	TKqE0FEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3OJ-003128-IU; Fri, 02 Sep 2022 09:55:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU3OF-0030tl-1G
	for barebox@lists.infradead.org; Fri, 02 Sep 2022 09:55:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3O8-0006Ua-9N; Fri, 02 Sep 2022 11:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3O5-003T9G-Nf; Fri, 02 Sep 2022 11:54:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oU3O6-00Araz-Qa; Fri, 02 Sep 2022 11:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  2 Sep 2022 11:54:58 +0200
Message-Id: <20220902095458.2589252-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_025507_098449_196CD994 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] blspec: fix memory leak handling NFS URLs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

parse_nfs_url() returns either an allocated string on success or an
error pointer otherwise. blspec_bootentry_provider() will early
exit if the path couldn't be resolved and thus not free() the string.

Fix this memory leak. While at it, change parse_nfs_url() to return NULL
on error. The error code is unused and just returning NULL, simplifies
the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 9bb25ee72123..d391f690ad0c 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -341,10 +341,10 @@ static char *parse_nfs_url(const char *url)
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_FS_NFS))
-		return ERR_PTR(-ENOSYS);
+		return NULL;
 
 	if (strncmp(url, "nfs://", 6))
-		return ERR_PTR(-EINVAL);
+		return NULL;
 
 	url += 6;
 
@@ -413,7 +413,7 @@ out:
 	if (ret)
 		free(mountpath);
 
-	return ret ? ERR_PTR(ret) : mountpath;
+	return ret ? NULL : mountpath;
 }
 
 /*
@@ -824,12 +824,12 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
 	if (*name == '/' || !strncmp(name, "nfs://", 6)) {
 		char *nfspath = parse_nfs_url(name);
 
-		if (!IS_ERR(nfspath))
+		if (nfspath)
 			name = nfspath;
 
 		ret = stat(name, &s);
 		if (ret)
-			return found;
+			goto out;
 
 		if (S_ISDIR(s.st_mode))
 			ret = blspec_scan_directory(bootentries, name);
@@ -838,8 +838,8 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
 		if (ret > 0)
 			found += ret;
 
-		if (!IS_ERR(nfspath))
-			free(nfspath);
+out:
+		free(nfspath);
 	}
 
 	return found;
-- 
2.30.2




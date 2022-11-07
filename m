Delivery-date: Mon, 07 Nov 2022 11:29:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orzNm-000LY6-Lb
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 11:29:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orzNl-0006TL-9X
	for lore@pengutronix.de; Mon, 07 Nov 2022 11:29:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QUrEFAUBacXUPmy0wnn/wHDoKna8SqmIlvYD6WtKOrg=; b=bLbGSwaJGdy0LfLyDJUXlPcfR0
	3G605MkjjrxyT4JOKBKPhlwK5gSIoGAxqhRQ0YIwtAschRarlTHMvRYPkKuqEY8FR0ZFB6CO9BFeu
	bJtfRZqz/7CgpfKDekqc1tgNpdTJPVwx6b/FEwCJDUh342tjDQ8EJFVdJqqQl9DhYyc8HVE94ZZzm
	IKTdfP0DgRcdL5sjhRFh+a+zmkcpcPBJv5Er0LjpOT3RQIFl7cuaMAo9tBlabfPzufiPTvOdaTKcR
	hmlzwTWPvsKEijvD8kATOsf78KbC4+2HtK8tTG5BeaM4hbkMEORJsDdJSplLGKpbyiHRo+WYYi49+
	VC/otKCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzMO-00DirY-O8; Mon, 07 Nov 2022 10:28:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orzMK-00Dir3-TQ
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 10:28:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1orzMJ-0006P2-9P; Mon, 07 Nov 2022 11:28:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orzMH-002pms-Lw; Mon, 07 Nov 2022 11:28:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1orzMH-00FOz2-Tz; Mon, 07 Nov 2022 11:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 11:28:00 +0100
Message-Id: <20221107102800.3669168-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_022804_965349_5C61BD47 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: avoid uninitialized var warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With gcc-12.2.1-clang-15.0.2-glibc-2.36-binutils-2.39-kernel-6.0.5-sanitized
we get a warning about path.dentry being used uninitialized:

fs/fs.c:1978:43: warning: 'path.dentry' may be used uninitialized -Wmaybe-uninitialized]

I can't see how this can really happen. gcc seems to think that this
sequence used in lookup_fast() can result in returning 0:

	if (IS_ERR(dentry))
		return PTR_ERR(dentry);

This shouldn't happen. Silence the warning by initializing 'path'.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 8f21420494..b5a0912405 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1956,7 +1956,7 @@ static inline int step_into(struct nameidata *nd, struct path *path,
 
 static int walk_component(struct nameidata *nd, int flags)
 {
-	struct path path;
+	struct path path = {};
 	int err;
 
 	/*
-- 
2.30.2




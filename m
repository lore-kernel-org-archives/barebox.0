Delivery-date: Mon, 08 May 2023 09:47:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvvax-009qNb-E6
	for lore@lore.pengutronix.de; Mon, 08 May 2023 09:47:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pvvav-0002oi-Hx
	for lore@pengutronix.de; Mon, 08 May 2023 09:47:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2n8/JXEUUj3FCbRqCC0W9geK0myfIkjYdAdACT9o7Co=; b=jISngdJuKWibFT7DaMTQR5nwon
	PDJF9qKxfW4FYqun7KQER2mzJs01c526+MN+PVPzVPScB4Q8dJbjFxkVeLK4otqWtVJloU4IJSiAL
	ozmqJx/A57VpcAkyTWJyK+g+VTItQEEvCilAekiA+fwctiy017q75hFJBLrakE9TkBK6greu3AADv
	s+3L8xqOm2ZRA7g1n4WNQDu2g7tOdIVjdT4gPhyCwlCtMqgx/88vULedQGidHGUMaQTfG01El0JCt
	B4LN7em7Zy7YMRvU5zysnPm03JdnH9/faOMSGDl/iAmYkA/wMVrNn9qtnOh7e92PFnu8Zc6uEL7iE
	+jOpBc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZe-00HW14-2A;
	Mon, 08 May 2023 07:46:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZc-00HW02-0Q
	for barebox@bombadil.infradead.org;
	Mon, 08 May 2023 07:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2n8/JXEUUj3FCbRqCC0W9geK0myfIkjYdAdACT9o7Co=; b=oeayWAPWItlZuA6ovvLz8XmL4z
	6yzSwBAD6Za2pIRbKdzyybktp4OdPLQUl0mSH52Uy46ucXC9kOngtHzkVd7H7CqBLK0U64Et/EUtD
	S++fJ2fko/IkM6H6JUU1x15XbicCJeJzDd28g6t72YMotfTbkgxqa9FZEjPVtcG7PKiAACHoff9tZ
	uey6oXodC7dChoyk2bTAd1eNtfEfl6UtdTE5ti4DeNA+PVxamIewoibqnAJ1oeWICPWT5N0JxFMCx
	HAvxRmqjxS5XQYV64ix3MJ3K8w93ceIPurQql92OSTLqdz1OU2+SZ2YWlskZsUKSOgLYFWPdRU2tp
	8rWIU+Ng==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvvZY-0055Px-2c
	for barebox@lists.infradead.org;
	Mon, 08 May 2023 07:46:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZW-0002ZR-Po; Mon, 08 May 2023 09:46:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZW-001wDH-5M; Mon, 08 May 2023 09:46:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pvvZV-00Du61-GU; Mon, 08 May 2023 09:46:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 May 2023 09:46:11 +0200
Message-Id: <20230508074612.3313870-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_084616_961480_106B5C06 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] fs: fail gracefully in get_mounted_path/get_cdev_by_mountpath
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

get_fsdevice_by_path will return NULL if no file system was mounted at
location. Returned pointer was dereferenced unconditionally, potentially
leading to null pointer dereference. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 65e4c661b9ce..368458cc54f8 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -240,6 +240,8 @@ struct cdev *get_cdev_by_mountpath(const char *path)
 	struct fs_device *fsdev;
 
 	fsdev = get_fsdevice_by_path(path);
+	if (!fsdev)
+		return NULL;
 
 	return fsdev->cdev;
 }
@@ -249,6 +251,8 @@ char *get_mounted_path(const char *path)
 	struct fs_device *fdev;
 
 	fdev = get_fsdevice_by_path(path);
+	if (!fdev)
+		return NULL;
 
 	return fdev->path;
 }
-- 
2.39.2




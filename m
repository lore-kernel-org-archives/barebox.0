Delivery-date: Mon, 05 Sep 2022 12:58:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nq-007POX-9i
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nl-0000Ls-0C
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BlUMIEHpxJ4EO00q3kqsiJSsJuwMoT5kmHWNEMHuMLg=; b=LvtNaini32p0n4pejvQ9lFehT7
	lghVCwYdlnp/OanQptQyh6M/nMXgr/R62tHQ+NimeNBuHMjwBnFNXIqjW8eRJEumgDjY3VXkjszWg
	OI828hix0TcCloAlu89EcEeZldhp1ps0ehbQtiaP3ZqDb424/IhX12coZ2ezg6KJHXg430EANLa+N
	ob6aX6LsJxAILcJJ0a4dFwSULUVpuqxR07eDSDh2mSPDI1CxfxBYv81iMCRNz57+bWRFJv5/E1ifP
	ie/zfTXfVWUkk7dpGcPZ0ZustDYN+IwKDV4QLAnslc2ZkkH5No8P9iSKNv0MDlj+c4QC/d9Zj5jto
	xMx/5gOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9h1-000fc4-Un; Mon, 05 Sep 2022 10:51:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8qH-00H4KI-D2
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BlUMIEHpxJ4EO00q3kqsiJSsJuwMoT5kmHWNEMHuMLg=; b=hH3AZi5QJpCjdw5uGWkFKhA1hZ
	aVFnyMOvvb2ThpHbftgZKUGrypzum17P8O7uWCuQYdCm+IGBBxaYSfjOvUJj+RMrMvLj9q1P8Rn/s
	GZ9seh8wkS81zzJ07uWnUfqLlj+8Yu0TU2GBY9iP3cBzmZ9BOl30d4/q/4oDGRVoJb/l4vOeysaiF
	ndCRvBLkzc1foKStf9lV++1Z19Y+99LiscsEJDxcw1uxzmOfzvGPSRKb6Rrv6KVpFwyKAMKi+cIUD
	yXp3rtK05GHi3fjEjS2BGhGBPufrWMmolGhY5OY5UhuBa5iMMSjLRthPnlAhO9fz8gn5kYI/npPdc
	9HPDkjpg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q2-009UjO-3P
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Hw-WF; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042Gz-Az; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wf1-4P; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:54 +0200
Message-Id: <20220905095557.596891-30-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105619_427301_50E7C987 
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
Subject: [PATCH 29/32] fs: drop duplicate follow_managed() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

lookup_fast called above already calls follow_managed with the same
argument, so no need to duplicate the call here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 14d5f7330457..78878e7112d5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1838,16 +1838,9 @@ static int walk_component(struct nameidata *nd, int flags)
 	if (err < 0)
 		return err;
 
-	if (err == 0) {
-		path.mnt = nd->path.mnt;
-		err = follow_managed(&path, nd);
-		if (err < 0)
-			return err;
-
-		if (d_is_negative(path.dentry)) {
-			path_to_nameidata(&path, nd);
-			return -ENOENT;
-		}
+	if (err == 0 && d_is_negative(path.dentry)) {
+		path_to_nameidata(&path, nd);
+		return -ENOENT;
 	}
 
 	return step_into(nd, &path, flags, d_inode(path.dentry));
-- 
2.30.2




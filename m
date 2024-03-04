Delivery-date: Mon, 04 Mar 2024 20:08:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfP-008dTr-2Q
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfP-0002yV-0T
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WhFi9COniumgvXstauZYK4C82M9XlmNDyNF3X7YR0yA=; b=ldh51JJfUwjBdji7VpZlfzWsC7
	OaFGzEQkSu3HnXH5Umxz1N60bb3180ndfYp7gR5byD2Dl1w3u0OyVdTfU9xblQSjolwBJjDCdaKUw
	dMTwoyFOFbgAUhEbSXvUEKomx0wAJVp/TLGKXIhqIcM9e8bd4NRDKu4scFzdTexRBRlB1jjdFqptc
	Mgw12gA7ZgRteIRB8RqTWAnKcgboPZ+RhDtWsDxH3CdEHgtt8jE0FOcUxJaxl5x1kNSnH6yCunLMM
	B8M4Q02HkmBMgkChOKhZzYo+8Wu7kIAWysVHIQJ8e1zPK8UOU4f81QRDQZidJ9dEcvzf7I246Gq+1
	o/2fWYVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDed-0000000ALQL-3gXv;
	Mon, 04 Mar 2024 19:07:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-0000000AIXM-42Rt
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WhFi9COniumgvXstauZYK4C82M9XlmNDyNF3X7YR0yA=; b=q5KbIv+THXH5JSIaZDYuI3WoYU
	mcn2GNYG5Q9mC2nPXJud5Z/f/CYvKvz9NQQzn5WIw28GGved524vBDQPCqW4djKry5mvodnEPDo75
	2VvazEYkrHtyKSR/bpzc70hWSFCGs9+aVPpNJKzMO1cxZBs1iE8wXyWww6wZ/GZGHqDYA6J6Jjwk8
	i4gG5AnUZMrISJ6q1jEpvjz3QicCleU/00jM5GcIEwOJkp46y5AeHJ6CkgcIGJiY4HvJTdh91rkLa
	Ok3qyyjNtuBNJxU0zt2L2rB38/bqkJDwkg0ZCAawM5vZq+HDfwHuxjT2Jg3J9TlvY1kdxkQBS94AB
	S5Th2HkQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-000000051vd-1GYq
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Dr-WB; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLF-Fb; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-2v;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:26 +0100
Message-Id: <20240304190038.3486881-42-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190253_496486_EAB93718 
X-CRM114-Status: GOOD (  12.37  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 041/113] fs: support opening /
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With open() on / no longer accessing uninitialized memory, it now always
fails with errno == ENOENT. This is because d_lookup only compares
children of /, but never / itself.

Fix this by comparing the parent and while at it, rework the existing
code to be more concise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index acd89dd1c9a4..fa1d01d892dc 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1502,7 +1502,6 @@ void d_add(struct dentry *dentry, struct inode *inode)
 }
 
 static bool d_same_name(const struct dentry *dentry,
-			const struct dentry *parent,
 			const struct qstr *name)
 {
 	if (dentry->d_name.len != name->len)
@@ -1511,17 +1510,16 @@ static bool d_same_name(const struct dentry *dentry,
 	return strncmp(dentry->d_name.name, name->name, name->len) == 0;
 }
 
-static struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
+static struct dentry *d_lookup(struct dentry *parent, const struct qstr *name)
 {
 	struct dentry *dentry;
 
+	if (d_same_name(parent, name))
+		return dget(parent);
+
 	list_for_each_entry(dentry, &parent->d_subdirs, d_child) {
-		if (!d_same_name(dentry, parent, name))
-			continue;
-
-		dget(dentry);
-
-		return dentry;
+		if (d_same_name(dentry, name))
+			return dget(dentry);
 	}
 
 	return NULL;
-- 
2.39.2




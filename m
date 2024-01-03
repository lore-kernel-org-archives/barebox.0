Delivery-date: Wed, 03 Jan 2024 19:32:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62U-002NUQ-1c
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62Q-00039W-OM
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2MXFvGUNvTh5EijxECeAnoVnx1BMSUoQmqS47HzGCT8=; b=DHy3Tb2YCdy2R7vv71VdF7rIE9
	K7AwJxNSOfwD75Kosgj707qF7eJP/FAXYQAGUL2F7RLxA607k+E8a/fqAGrELlNSbg3X/GOlJnmYC
	jiYTgio/ydkrs5LaZ8f4NJlQFFwQAVkHUixZV8+6RZ4LNygAoL86rh9nyeDlw4P/eoFa32UdvhYJO
	nObZ3Qd4tlorWm5GUh9wTVKTZ0mg7awO1zK565bf8JrpIvjnpAGhSTXx/ktToIy93O42m/rjtBUHa
	CP0uWiQc7kbz5CeluNodea2gM4bnx46lRzP/AngyWthI4WnEOTcFZhLQ2KTiSsxc7ufuVJP0ehGV9
	A6K4EJpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-00BhJL-2j;
	Wed, 03 Jan 2024 18:31:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL617-00BhB9-0k
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2MXFvGUNvTh5EijxECeAnoVnx1BMSUoQmqS47HzGCT8=; b=YhKW6dXvW7a0vuJ+dX7N2IUMB6
	M7veVqowf5OsuI9lpZ7pBzCdeS+1TAjyBS62OfRtdLC7Flx92YNQOKnz8coScr+yV58tOg0kz6uo1
	wq/9KVHKL0DZ6IsXMHMf9ARhxkrkvFmMYXOFcjBNwlZQU8L1+HqZqyCV0nSYlAg3tdF8X9laltAQB
	pZn0quNEqzQ+fn5orl9BVp3wN1/UmKbYc2/rwKK8QI4P1augJDAd6+EPF52LHq/DnkfaH/gaD1KUM
	h0u2NJWGXzygGO0rs5tDsl8sjVVzSv7YyIQmYbkUaiQKzJ3UWz1Ph1tKURGQWEe1kC2xTGdCCuRnz
	pD5S/OmA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC0-2N
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001RX-LL; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtP-8q; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-2b;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:01 +0100
Message-Id: <20240103181312.409668-42-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_253610_6F2B6238 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 041/112] fs: support opening /
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
index 74ece0e9a7d0..220b4d95cdb1 100644
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




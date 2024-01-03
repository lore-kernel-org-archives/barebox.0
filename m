Delivery-date: Wed, 03 Jan 2024 11:21:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyNZ-001mpF-1g
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:21:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyNY-0004Z9-Eu
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:21:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AiPKql7UJL6G+d3UKGuH/vFUw2SON6XZzCnfLm69r5c=; b=x/T1sXWHhdNoAivymYdv7+7VZY
	rxEnOmya0yAZGL668hH1vyyvu0B3nMJeUgt0oXqbyLLVA+pgbsfvLwGvDeuJNXTc+sxr7QXotu71o
	TKhdsqX0u7ZPny/vaFxeVpa3bnRBzw8NWGsVkKhstimUvHcw9xLuCq7lVl9tJ4yjk/3xaOpttEYF1
	tqW/hl7f9uEssjw0xGU0dOuETXdl3Zji/mJ2D2jzeiwwIzX6+GGeDpvP1oHmXDtiuZWmacW9NWUnJ
	7LtWKdxKlbeuoHMnJ/1iX272b1hnlbuVdfgo4L0sZG565qmrThZAugfJdQwCgixb6k4Pe2d9rMuBa
	dY87GARw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyMc-00ANUg-0i;
	Wed, 03 Jan 2024 10:20:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyMY-00ANTW-1R
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:20:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyMX-0004Df-Am; Wed, 03 Jan 2024 11:20:37 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyMW-0005x9-Un; Wed, 03 Jan 2024 11:20:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyMW-00B2Ne-2m;
	Wed, 03 Jan 2024 11:20:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:20:35 +0100
Message-Id: <20240103102035.2630735-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103102035.2630735-1-a.fatoum@pengutronix.de>
References: <20240103102035.2630735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_022038_516858_869B1CE7 
X-CRM114-Status: GOOD (  12.68  )
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
Subject: [PATCH 2/2] cdev: add cdev_alloc helper for creating cdevs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have different helpers for creating cdevs, depending on whether they
are loop devices, partitions or links.

Create a common cdev_alloc function, so it's easier to instrument cdev
creation during debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index c79b092a112e..9f5b41761f52 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -324,6 +324,16 @@ int cdev_truncate(struct cdev *cdev, size_t size)
 	return -EPERM;
 }
 
+static struct cdev *cdev_alloc(const char *name)
+{
+	struct cdev *new;
+
+	new = xzalloc(sizeof(*new));
+	new->name = xstrdup(name);
+
+	return new;
+}
+
 int devfs_create(struct cdev *new)
 {
 	struct cdev *cdev;
@@ -358,8 +368,7 @@ int devfs_create_link(struct cdev *cdev, const char *name)
 	 */
 	cdev = cdev_readlink(cdev);
 
-	new = xzalloc(sizeof(*new));
-	new->name = xstrdup(name);
+	new = cdev_alloc(name);
 	new->link = cdev;
 
 	if (cdev->partname) {
@@ -540,8 +549,7 @@ struct cdev *cdevfs_add_partition(struct cdev *cdev,
 		return &mtd->cdev;
 	}
 
-	new = xzalloc(sizeof(*new));
-	new->name = strdup(partinfo->name);
+	new = cdev_alloc(partinfo->name);
 	if (!strncmp(cdev->name, partinfo->name, strlen(cdev->name)))
 		new->partname = xstrdup(partinfo->name + strlen(cdev->name) + 1);
 
@@ -679,6 +687,7 @@ static const struct cdev_operations loop_ops = {
 
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset)
 {
+	char str[16];
 	struct cdev *new;
 	struct loop_priv *priv;
 	static int loopno;
@@ -692,10 +701,10 @@ struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset)
 		return NULL;
 	}
 
-	new = xzalloc(sizeof(*new));
+	snprintf(str, sizeof(str), "loop%u", loopno++);
 
+	new = cdev_alloc(str);
 	new->ops = &loop_ops;
-	new->name = basprintf("loop%u", loopno++);
 	new->priv = priv;
 
 	ofs = lseek(priv->fd, 0, SEEK_END);
-- 
2.39.2




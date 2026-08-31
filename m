Delivery-date: Mon, 31 Aug 2026 11:49:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x0ye6-009EJu-1j
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 11:49:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C10F42020C1
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 11:49:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=gV8YI7oJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=544yB2OB06tYCSa3rJ3LX/nhST41fjxxg36fwns6J+k=; b=gV8YI7oJ0mr30yZSHfcQ7k+WD3
	nf5ULSrEqkESFlCxGWOhazEOGovdCX02se2xBxCoxwS1CHhLmvUManw6ZRyjbsB/v/skgGotTmh/u
	jcDEaa0HRTsjX4fCbuhvsrNN8fxUYWy0c2QSTtbVgiHjvXWvHxTtvQ7CDQdl60kEqs7DnbiRm5RBn
	Wt2KC5Hi2/05XFJhlhN9oflwTmpcozT22n+0ayYhZsCXGrz2iKhbFuy79skSOXxgluGQ8xULZUcy0
	lkEln5zDIHqolzBz9EV/MXNsXxz9ejaQ5rDwdMYF/trmhqX1of5XoGJLtuausHFPVIchL2DdlnOm3
	Sp3g70ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycz-000000093QK-2tUz;
	Mon, 31 Aug 2026 09:48:33 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0ycv-000000093No-0znx
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 09:48:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4C3ED2020E0;
	Mon, 31 Aug 2026 11:48:26 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-004Ebl-0S;
	Mon, 31 Aug 2026 11:48:26 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x0ycs-0000000Bs0g-0Dje;
	Mon, 31 Aug 2026 11:48:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 11:48:27 +0200
Subject: [PATCH 3/4] fs: devfs: propagate cdev aliases to the partitions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usbdisk-aliases-v1-3-0a2e40a35f3d@pengutronix.de>
References: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
In-Reply-To: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788169706; l=6872;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BNhVQWWTI0EfEPkGS8UNgBc50Z4ITLO8DNFHcFL95GI=;
 b=5boJ5Fnki/Hps/Ji01YQVhhGfkrWVBEt59nMz+SiZJ6MISAUt+T0mdkbQMtmdapi2y3fkYF1J
 /pn0m2dQo4uBdqd8rg88cTEa+OBbExvNl1r6zUcyZLZDSsTOFOJeT8F
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_024829_494257_1A8DE20D 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  USB mass storage registers a disk as "disk0" and additionally
    aliases it to "usbdisk0" so it can be told apart from other block devices
    at a glance. That is only half of the work though: the partition [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 1j9ykxi9jbq65wh6etpg8fx41cotouur
X-Rspamd-Queue-Id: C10F42020C1
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

USB mass storage registers a disk as "disk0" and additionally aliases it
to "usbdisk0" so it can be told apart from other block devices at a
glance. That is only half of the work though: the partitions are named
after their master cdev, so /dev/disk0.0 and /dev/disk0.data have no
counterpart under the alias and the whole point of having one is lost as
soon as you want to address a partition.

Derive the missing aliases in devfs_add_alias_node() by replacing the
master's name at the start of a partition name with the alias, so that
"disk0" -> "usbdisk0" also gives:

	/dev/usbdisk0.0		-> disk0.0
	/dev/usbdisk0.data	-> disk0.0

The master alias and the partitions can appear in either order, so both
directions have to be covered. USB storage adds the alias only after the
partition table has been parsed, hence a new master alias propagates
down to the partitions that are already there. A repartitioning at
runtime on the other hand removes the partitions - which takes the
derived aliases with them - and creates new ones on a master that
already has aliases, hence a new partition inherits from its master.
The same applies to the "disk0.<label>" alias a partition receives from
register_one_partition() after it has been created.

Aliases created this way are marked as derived and are never used as a
source for further derivation. Without that an alias that contains a dot
itself - "diskuuid.<uuid>" from storage-by-alias does - would keep
deriving new aliases from the ones it just created and never terminate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/devfs-core.c  | 110 ++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/driver.h |   1 +
 2 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 8b023009a0..d647be9b9d 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -553,7 +553,26 @@ int devfs_create(struct cdev *new)
 	return 0;
 }
 
-int devfs_add_alias_node(struct cdev *cdev, const char *name, struct device_node *np)
+/*
+ * An alias for a cdev is only half of the work when the cdev is partitioned:
+ * The partitions are named after their master cdev, so they have to become
+ * reachable under the alias as well. Registering "disk0" as "usbdisk0" thus
+ * results in:
+ *
+ *	/dev/disk0
+ *	/dev/disk0.0
+ *	/dev/disk0.data		-> disk0.0
+ *	/dev/usbdisk0		-> disk0
+ *	/dev/usbdisk0.0		-> disk0.0
+ *	/dev/usbdisk0.data	-> disk0.0
+ *
+ * The alias of the master and the partitions can show up in any order: USB
+ * mass storage registers the alias only once the whole device including its
+ * partitions is there, while repartitioning at runtime adds partitions to a
+ * master that already has aliases. Both directions are handled below.
+ */
+static int __devfs_add_alias(struct cdev *cdev, const char *name,
+			     struct device_node *np, bool derived)
 {
 	struct cdev *conflict;
 	struct cdev_alias *alias;
@@ -565,6 +584,7 @@ int devfs_add_alias_node(struct cdev *cdev, const char *name, struct device_node
 	alias = xzalloc(sizeof(*alias));
 	alias->name = xstrdup(name);
 	alias->device_node = np;
+	alias->derived = derived;
 	list_add_tail(&alias->list, &cdev->aliases);
 
 	cdev_symlink(cdev, name);
@@ -572,6 +592,89 @@ int devfs_add_alias_node(struct cdev *cdev, const char *name, struct device_node
 	return 0;
 }
 
+/*
+ * Add an alias for @cdev derived from @name by replacing the leading @stem
+ * with @alias, i.e. stem "disk0", alias "usbdisk0" and name "disk0.data"
+ * yields the alias "usbdisk0.data".
+ */
+static void devfs_add_derived_alias(struct cdev *cdev, const char *stem,
+				    const char *alias, const char *name)
+{
+	size_t stemlen = strlen(stem);
+	char *derived;
+
+	/* Only names of the form "<stem>.<partition>" can be translated */
+	if (strncmp(name, stem, stemlen) || name[stemlen] != '.')
+		return;
+
+	derived = xasprintf("%s%s", alias, name + stemlen);
+
+	/* A name clash only means we can't offer this alias, that's ok */
+	__devfs_add_alias(cdev, derived, NULL, true);
+
+	free(derived);
+}
+
+/*
+ * The partition @cdev has become known as @name. Make it known under the
+ * aliases of its master as well.
+ */
+static void devfs_inherit_master_aliases(struct cdev *cdev, const char *name)
+{
+	struct cdev *master = cdev->master;
+	struct cdev_alias *alias;
+
+	if (!master)
+		return;
+
+	cdev_for_each_alias(alias, master)
+		devfs_add_derived_alias(cdev, master->name, alias->name, name);
+}
+
+/*
+ * The master @cdev has become known as @alias. Make its partitions known
+ * under that alias as well, both by their name and by their own aliases.
+ */
+static void devfs_propagate_alias(struct cdev *cdev, const char *alias)
+{
+	struct cdev_alias *partalias;
+	struct cdev *partcdev;
+
+	for_each_cdev_partition(partcdev, cdev) {
+		devfs_add_derived_alias(partcdev, cdev->name, alias,
+					partcdev->name);
+
+		/*
+		 * Appending to the list we are walking is fine here: the
+		 * aliases added above and below are derived ones and those
+		 * are skipped. Without that, an alias containing a dot
+		 * itself (like "diskuuid.<uuid>") would endlessly derive
+		 * new aliases from the ones it just created.
+		 */
+		cdev_for_each_alias(partalias, partcdev) {
+			if (partalias->derived)
+				continue;
+
+			devfs_add_derived_alias(partcdev, cdev->name, alias,
+						partalias->name);
+		}
+	}
+}
+
+int devfs_add_alias_node(struct cdev *cdev, const char *name, struct device_node *np)
+{
+	int ret;
+
+	ret = __devfs_add_alias(cdev, name, np, false);
+	if (ret)
+		return ret;
+
+	devfs_inherit_master_aliases(cdev, name);
+	devfs_propagate_alias(cdev, name);
+
+	return 0;
+}
+
 int devfs_add_alias(struct cdev *cdev, const char *name)
 {
 	return devfs_add_alias_node(cdev, name, NULL);
@@ -735,6 +838,9 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 			return (void *)mtd;
 
 		list_add_tail(&mtd->cdev.partition_entry, &cdev->partitions);
+
+		devfs_inherit_master_aliases(&mtd->cdev, mtd->cdev.name);
+
 		return &mtd->cdev;
 	}
 
@@ -757,6 +863,8 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 
 	cdev_create_default_automount(new);
 
+	devfs_inherit_master_aliases(new, new->name);
+
 	return new;
 }
 
diff --git a/include/driver.h b/include/driver.h
index b0602e6f16..c26a89c5ce 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -458,6 +458,7 @@ struct cdev_alias {
 	char *name;
 	struct device_node *device_node;
 	struct list_head list;
+	bool derived; /* automatically derived from an alias of the master cdev */
 };
 
 static inline struct device_node *cdev_of_node(const struct cdev *cdev)

-- 
2.47.3




Delivery-date: Mon, 31 Aug 2026 15:21:51 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x11xP-009I1S-0a
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:21:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9AC5200700
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:21:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SzQ8TYGe;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eoCX3WqD+Yg20hU8ZLqGxz5OmApTsQbFr+FL+2o0huw=; b=SzQ8TYGeB4g8Sg/15elbPu8kKC
	1zvzBOZrtK6srHeclRTPtLNW8fjovh5/yIHQMXqiFiCwj1nkc3Go00k+RVPb7HfaRzWx0voBPXazu
	9Zw4IJzFxicenV7gLuqnhceRB5l9fF3T3FwhfCAGssrWUV18ZFfKe47kgvr/cEIJ+zgFtf+4wEd8/
	lFb93dvoK7ySy2H2u1JXLPDpu6XS6a5/ye8nPe7q2hfo4wKfhhdl0w1l3nQ75chLPPDklsUMyx4EH
	mGNg1gk3uNrZEeVBvI4engzEazy61HyhFeo9TbUcqHu7n4iyRFec/cDY7Aw/G+Xo6ThCmCB5IeD27
	+zgHYIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vx-00000009NvE-0I5q;
	Mon, 31 Aug 2026 13:20:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11vs-00000009NtD-2aUr
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:20:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C2901202475;
	Mon, 31 Aug 2026 15:20:10 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-004GQz-1y;
	Mon, 31 Aug 2026 15:20:10 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x11vm-0000000H7Av-1vYF;
	Mon, 31 Aug 2026 15:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Aug 2026 15:20:09 +0200
Subject: [PATCH 02/13] fs: devfs: count an open partition as an open device
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260831-usb-device-lifetime-v1-2-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788182410; l=2467;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=+vWB6zhrNaT4JvBOtuTKhDMWzfclmpE31Xry7HmsxwA=;
 b=5z97AWSZyazcLr+mr2jPmcv0qBAw2aE+njcbc0iPGdGxS86nRz393cXRdRUwVqHgmgOvVrjSQ
 43fUV+LntSqA8NbfpsqjOGeD4C2b2Dz8ee5BZ9hhyjAptDBC26Z9GQf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062016_836413_95E8FCC6 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  devfs_remove() refuses to remove a cdev that is open, but
   opening a partition only increments the open count of the partition itself:
    cdev_open() passes the master to the ->open operation, but counts [...] 
 
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
X-Stat-Signature: yehwxpf9ocmx7dz1o3qjz6a4mwkc86b8
X-Rspamd-Queue-Id: A9AC5200700
X-Spamd-Result: default: False [-57.77 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.83%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
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

devfs_remove() refuses to remove a cdev that is open, but opening a
partition only increments the open count of the partition itself:
cdev_open() passes the master to the ->open operation, but counts on the
cdev it was given. A disk whose partition is mounted therefore does not
look busy at all.

Removing it then gets half done. The master is unlinked from cdev_list
and its aliases and automount are dropped, then the loop over the
partitions calls cdevfs_del_partition(), which does return -EBUSY for the
mounted partition, but nobody looks at the return value. The partition
stays in cdev_list with its ->master and ->priv pointing at the block
device the caller is about to free, and the next access walks
cdev_get_master() into freed memory.

A device with an open partition is in use, so count the open along the
whole chain of masters instead of only on the cdev that was opened. The
open count then means what it says and devfs_remove() needs no special
case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Assisted-by: Claude:claude-opus-5
---
 fs/devfs-core.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 522d883e1c..c106e65a04 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -249,6 +249,7 @@ static struct cdev *cdev_get_master(struct cdev *cdev)
 int cdev_open(struct cdev *cdev, unsigned long flags)
 {
 	struct cdev *master = cdev_get_master(cdev);
+	struct cdev *c;
 	int ret;
 
 	if (cdev->ops->open) {
@@ -257,7 +258,14 @@ int cdev_open(struct cdev *cdev, unsigned long flags)
 			return ret;
 	}
 
-	cdev->open++;
+	/*
+	 * A device with an open partition is in use itself, so count the
+	 * open along the whole chain up to the device the partition lives
+	 * on. Without that a disk with a mounted partition looks idle and
+	 * could be removed from under the filesystem.
+	 */
+	for (c = cdev; c; c = c->master)
+		c->open++;
 
 	return 0;
 }
@@ -314,6 +322,7 @@ struct cdev *cdev_open_by_path_name(const char *name, unsigned long flags)
 int cdev_close(struct cdev *cdev)
 {
 	struct cdev *master = cdev_get_master(cdev);
+	struct cdev *c;
 
 	if (cdev->ops->close) {
 		int ret = cdev->ops->close(master);
@@ -321,7 +330,8 @@ int cdev_close(struct cdev *cdev)
 			return ret;
 	}
 
-	cdev->open--;
+	for (c = cdev; c; c = c->master)
+		c->open--;
 
 	return 0;
 }

-- 
2.47.3




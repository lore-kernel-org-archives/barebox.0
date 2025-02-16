Delivery-date: Sun, 16 Feb 2025 16:08:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjgFl-003757-1u
	for lore@lore.pengutronix.de;
	Sun, 16 Feb 2025 16:08:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjgFk-0002FQ-Ex
	for lore@pengutronix.de; Sun, 16 Feb 2025 16:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HP/HNfq3ujZqsDrRVI13adrEMxUq4ib+mx1K2x5ddAc=; b=uRJgyzAPoH+KI0/AxfuX6C70mT
	jn7D5ttxrh1qlhN2q4ZpuupEWPW6DMsDE2LVlEDkfwCvzX7kQY4xPSHIq8lqLjXJTwOP/f/yBs8BT
	bkyq8bYDW2fTqHHx9DQJJQMv3fOKJuFL5Z8HmuNXYz+Yfukdz1+sO2uLXc/7WcnVFFyxnMJtZhezt
	HMjOrMySCHOWRRDy3rZQnItntqUr5otBK1Tg5Ypz5E5KiA7YZ62z8Jfvslc8RNLyycjIMLw/rQgvU
	89X6O4C5yTKIVrAV81SQ4dCoryC5/YWqaY8NbLzbYhwSz9WASUWIv/TSsT/ySCTBal/2nkqyKOo2r
	XzvFW+GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgF3-00000001zLs-1UGb;
	Sun, 16 Feb 2025 15:07:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgF0-00000001zLF-2u1O
	for barebox@lists.infradead.org;
	Sun, 16 Feb 2025 15:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEr-00023G-BC; Sun, 16 Feb 2025 16:07:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEp-001GBj-1X;
	Sun, 16 Feb 2025 16:07:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEp-009qxd-1F;
	Sun, 16 Feb 2025 16:07:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 16 Feb 2025 16:07:18 +0100
Message-Id: <20250216150718.2348520-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250216150718.2348520-1-a.fatoum@pengutronix.de>
References: <20250216150718.2348520-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_070730_775699_F5F2179D 
X-CRM114-Status: UNSURE (   9.67  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] cmdlinepart: refuse partitions with empty name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Running addpart /dev/mmc3 0xe0000@0 currently creates a partition with a
zero-sized name. Check for this condition and throw an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/cmdlinepart.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index afba544965b4..3e8c415c7ea6 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -30,6 +30,7 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 	char *end;
 	char buf[PATH_MAX] = {};
 	unsigned long flags = DEVFS_PARTITION_FOR_FIXUP;
+	size_t partname_len = 0;
 	struct cdev *cdev;
 
 	memset(buf, 0, PATH_MAX);
@@ -60,7 +61,8 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 		if ((partition_flags & CMDLINEPART_ADD_DEVNAME) &&
 				strncmp(devname, partstr, strlen(devname)))
 			sprintf(buf, "%s.", devname);
-		memcpy(buf + strlen(buf), partstr, end - partstr);
+		partname_len = end - partstr;
+		memcpy(buf + strlen(buf), partstr, partname_len);
 
 		end++;
 	}
@@ -85,6 +87,11 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 
 	*retsize = size;
 
+	if (!partname_len) {
+		printf("partition name can't be empty\n");
+		return -EINVAL;
+	}
+
 	cdev = devfs_add_partition(devname, *offset, size, flags, buf);
 	if (IS_ERR(cdev)) {
 		printf("cannot create %s: %pe\n", buf, cdev);
-- 
2.39.5




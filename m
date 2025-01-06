Delivery-date: Mon, 06 Jan 2025 10:19:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGN-00HQdy-2N
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGM-0003O1-AF
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6u3/tbdTiwQTOp1azECzAN82kFLRbBxmisFtNI8L7Q=; b=lmLGqV1Od60AagDfRrY73m6lmv
	eAIOI6REV2+OZlkyO4pr9AQkXnQ8V86w4QscVSB8dP9PijRjITS2UY4HrHDCnu8jtJ5KMoBlxF20o
	jkmdP1l3PxVOt7Wsx1g8QBbnrGsk75s+sMSYdbtnq/IXoTUdKJ6fxjYLzo0BCZ5iN6eTKP/2SsFKB
	FR/Gpxk4WdOLB/x9eZJevL5i1hSewT4B0p0aAW+isoCSBa6gCYCNqMWJ4vBHytevtg0pRpBZV3wdE
	k4rT8wFVx+RKnU1g8wwV3LwPdoj+RB4r/sdxsAB/OgCT7esVrOYKMuF37V4jHmeYuca9rl7Kkz0PO
	4c/THvbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFy-00000000dsq-0FsA;
	Mon, 06 Jan 2025 09:18:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjFt-00000000doo-1x7P
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFs-00030s-89; Mon, 06 Jan 2025 10:18:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-0078qb-0p;
	Mon, 06 Jan 2025 10:18:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00EPYv-32;
	Mon, 06 Jan 2025 10:18:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:35 +0100
Message-Id: <20250106091835.3434836-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
References: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011837_506051_22E9F4C2 
X-CRM114-Status: UNSURE (   8.89  )
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
Subject: [PATCH 6/6] commands: stat: print mode in octal if type unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The stat command is meant as debugging aid and thus it's useful to print
information about the mode, even for broken inodes that lack file type
information in their mode field.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 8cdd0c55202b..57bd781025f9 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -201,6 +201,8 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
 
 	if (type)
 		printf("  %s%s", typeprefix, type);
+	else
+		printf("  unknown (mode=0%o)", st->st_mode);
 
 	fdev = get_fsdevice_by_path(dirfd, filename);
 
-- 
2.39.5




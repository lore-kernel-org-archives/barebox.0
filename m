Delivery-date: Tue, 25 Aug 2026 12:32:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyoST-0072UG-2I
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 12:32:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 37C0C201D0F
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 12:32:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=S9znBery;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h8nOZm6CE7vLmMcD7CCGuHm0ckYTmH45VPFzKrSdJBM=; b=S9znBery6+Pbnokob/XRRhKb45
	tHrUiq1zmK9cy1rNPqR1v9lBxOsmHgC49yDOC85fd97OeCqUymBG+hHs+8dBpQftogogJ/lqV6sIa
	qzALcaV3pXLwXGiijo9xP8p2bXq1ax3uqPYmKPJnk1olQI/O8KY9vClPcx84W3O1ddWfO+VPGPM3E
	eAEp8yi7Lul8/kRqMAro4DYma+EkSBFCqyIOT/b3utcTYBHCP59ZQBeqJhMTYVXTnbKbgQGV//CU8
	CMaTuNCIMHYs46HJ9WgmmiQxv5jU1LB17VhyYS7396P0knO7l9NyxcvpBLIvBhC9Ar6G/8foK8lhL
	W7UK/6pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7e-00000000YlE-3YEr;
	Tue, 25 Aug 2026 10:11:14 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyo7Z-00000000Ygl-1iRV
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 10:11:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ADE1F200062;
	Tue, 25 Aug 2026 12:11:07 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-003FvD-1y;
	Tue, 25 Aug 2026 12:11:07 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyo7X-00000008vZQ-29Sa;
	Tue, 25 Aug 2026 12:11:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/4] fs: fat: propagate actual error code when opening/creating files
Date: Tue, 25 Aug 2026 12:10:53 +0200
Message-ID: <20260825101106.2127202-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_031109_601458_CC5B9588 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We currently map all error codes to -EINVAL when opening or
    creating a file, when the underlying functions are capable of returning more
    error codes like -EISDIR or -EROFS. Propagate the received error code to
   tell consumers more about what went wrong. 
 
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: bg6gamp35q3yfhgm4rxraqs7j4ipb7yz
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 37C0C201D0F

We currently map all error codes to -EINVAL when opening or creating a
file, when the underlying functions are capable of returning more error
codes like -EISDIR or -EROFS.

Propagate the received error code to tell consumers more about what went
wrong.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fat/fat.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 0402db1d945a..b17157d1ea34 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -89,7 +89,7 @@ static int fat_create(struct device *dev, const char *pathname, mode_t mode)
 
 	ret = f_open(&priv->fat, &f_file, pathname, FA_OPEN_ALWAYS);
 	if (ret)
-		return -EINVAL;
+		return ret;
 
 	f_close(&f_file);
 
@@ -204,7 +204,7 @@ static int fat_open(struct device *dev, struct file *file, const char *filename)
 	ret = f_open(&priv->fat, f_file, filename, flags);
 	if (ret) {
 		free(f_file);
-		return -EINVAL;
+		return ret;
 	}
 
 	if (file->f_flags & O_APPEND) {
@@ -212,7 +212,7 @@ static int fat_open(struct device *dev, struct file *file, const char *filename)
 		if (ret) {
 			f_close(f_file);
 			free(f_file);
-			return -EINVAL;
+			return ret;
 		}
 	}
 
-- 
2.47.3




Delivery-date: Thu, 12 Mar 2026 15:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-00ArOT-1T
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hHX-0004Ot-Cp
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IpP0wjQWZq7+aSry9C7m6J8gjTq0pFvQYo2tdUuNqHs=; b=h7vggKhmOVMursjLXJOIWNvTsA
	uNZrdZC/Ld4C3aElnrtAmdoFGF84bkhRSKPnOifVilc499RtkTwU0j+I7ezNI8sos5ALHAtFstW1L
	bdzIlcrzLjIddb+PM9j8rmKXn8ead+PN5D651901biHo1PepznrnGTXG834K8OTN7ESGrEOMYXtFF
	D9w4YuZ1Pv+LUy0OzptypMS3yy1mTAU2zUKDoA6M5azdRbWhaQrsjTpEjf7nbty1w2ke0+6iPwRbH
	1mUoriGojHfD5/VMQ3N60IUR8YBBbgWoOwOCbYGS0rT5LDMCrkHEoxCbzzD0ikXGk3tQczbCbQdxf
	YO1zOqvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH7-0000000EEUB-3oc6;
	Thu, 12 Mar 2026 14:44:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hH4-0000000EESC-3amY
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:44:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-00048S-Bw; Thu, 12 Mar 2026 15:44:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH1-0052Nl-2Y;
	Thu, 12 Mar 2026 15:44:29 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hH3-000000093bb-0A8d;
	Thu, 12 Mar 2026 15:44:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Thu, 12 Mar 2026 15:44:25 +0100
Message-ID: <20260312144428.2158727-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
References: <20260312144428.2158727-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074430_985935_61FE4C4B 
X-CRM114-Status: GOOD (  12.17  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] fs: fix relative path resolution when CWD is on a TFTP mount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the current working directory is on a TFTP mount, relative paths
containing subdirectories (e.g. 'subdir/file') fail because
link_path_walk() tries to look up the first component as a directory,
which TFTP does not support.

The in-loop dentry_is_tftp() check already handles separator switching
for absolute paths and './'-prefixed relative paths, but misses the
case where the starting dentry itself is a TFTP dentry.

Check for a TFTP dentry before entering the walk loop and switch the
separator to 0x1 upfront, so the entire relative path is collapsed
into a single TFTP filename.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 6a73a5baa26e..0a151607dd7d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2140,6 +2140,14 @@ static int link_path_walk(const char *name, struct nameidata *nd)
 	if (!*name)
 		return 0;
 
+	/*
+	 * If we are starting from a TFTP dentry (e.g. CWD is on a TFTP
+	 * mount), switch to the TFTP separator immediately so the first
+	 * component isn't mistakenly looked up as a directory.
+	 */
+	if (dentry_is_tftp(nd->path.dentry))
+		separator = 0x1;
+
 	/* At this point we know we have a real path component. */
 	for(;;) {
 		int len;
-- 
2.47.3




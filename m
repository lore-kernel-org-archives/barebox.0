Delivery-date: Tue, 08 Sep 2026 10:33:38 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3rGs-001TLw-2e
	for lore@lore.pengutronix.de;
	Tue, 08 Sep 2026 10:33:38 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RryVJjUg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9F64F20201A
	for <lore@pengutronix.de>; Tue, 08 Sep 2026 10:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XST4Q/0bDNmzRjEBuN4V86ocGI3ScOHDQ/9NaMGHnU8=; b=RryVJjUgd/ankJYT+KHFTBAr9u
	cpGnO/o0m5KPtvYNHT4lAENjJ0iwKoTwppG0/KQp2gMrQzsKL+sKsFBhNY7ASnm3hpxpai8St0/CL
	QajtvoO+YWxlhengI327hmkrDiujQbHilPcbNlp4BFMsOdr9MB47js2sZx1cBrK8H4FNdslwIpRdA
	JxR9Ue1zfilPBonIx/UZKWpudCVQUx762Z/fX5xO/OT6i4zLjNgZoqhNgNtvN2XBZaYz5bWSygesz
	E+nkZlQv6nKi+RA2TSJxHwwxCj9v3XtWCFKxH6KN1U37aCpmO9YR7LCpLaCIfSSEhaKIQHT+k6geH
	rdMzdlPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rFb-00000008Pky-2XR2;
	Tue, 08 Sep 2026 08:32:19 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3rFX-00000008Pif-0JdO
	for barebox@lists.infradead.org;
	Tue, 08 Sep 2026 08:32:17 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6169920201C;
	Tue, 08 Sep 2026 10:32:11 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] fs: reject inodes whose size the superblock cannot
 address
Date: Tue, 08 Sep 2026 10:32:08 +0200
Message-Id: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAjIn2oC/x2LQQqAMAzAviI9O5gVp/Mr4kG004JMWUFE2d8t3
 hJCXhBKTAJ98UKii4WPqFKVBczbFFcyvKgDWnTW284EMYF3En5I4SYxGHyNwbnGYgv6nYn+oNs
 w5vwB2lcINWMAAAA=
X-Change-ID: 20260908-fs-filesize-fixes-2f932f665027
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788856331; l=957;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Wc7QNn1zyxFOKyvfRTV4MgEbUQbPR6qqvCI3eGkybwk=;
 b=Yya3xknqDUIVE83ObYqVCulUW5Hr1Tek8bM72zmUkfw12bBMbuPmPM/gwT3NUaPRYOEhP15BA
 G3oy6CDTsoSDg2W3YzaU8lCi2A9kpI+1S1uAaJJ/IIuFuSblmCYerrR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_013215_269474_0C70E023 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This is a continuation of the patch previously sent as a single
    patch. Additionally I added a patch cleaning up the FILE_SIZE_STREAM disambiguity.
    The problem is that we overloaded the inode size with a flag indicating that
    the inode belongs to a stream with undefined fi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: ngdoowg3jcw9r37xwur3zpdq74nzhura
X-Rspamd-Queue-Id: 9F64F20201A
X-Spamd-Result: default: False [-57.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

This is a continuation of the patch previously sent as a single patch.

Additionally I added a patch cleaning up the FILE_SIZE_STREAM disambiguity.
The problem is that we overloaded the inode size with a flag indicating
that the inode belongs to a stream with undefined file size. The new
patch solves this by adding extra flags to struct inode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      fs: track streaming and unknown-size files in dedicated inode fields
      fs: reject inodes whose size the superblock cannot address

 fs/devfs.c         |  7 ++++++-
 fs/fs.c            | 37 +++++++++++++++++++++++++++++++++----
 fs/tftp.c          |  2 +-
 include/linux/fs.h |  2 ++
 4 files changed, 42 insertions(+), 6 deletions(-)
---
base-commit: 42e510a258d7c276c35f06c103e685c80d376eab
change-id: 20260908-fs-filesize-fixes-2f932f665027

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Thu, 20 Mar 2025 06:20:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ko-001l4S-1w
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kn-0003cT-Fr
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sVXc0jJoPdxk4ZtAdLoWaJ6/TeKbEgQ3YhrgTwJ6Fh4=; b=fTPNuuWBzc9K39oeDXYevbXgGJ
	6kEakJ5O3vnN2nATPp24/cYXlsSTgV0kbi/axzmPtHCPqW8xay9fsl0VGvLqqgR4JZK3XzVUZNC+7
	aRXZTzo7363n4pHlReXrDcGZu4p015mfgvnuzeK0lAQkYi1433BTOxyTEHoq5Wldyx5bQ4cVfmqKV
	IhCtrGPxDzmZHoZ+RkccAvjQ9s/BSiSriZZc41VIE0vD5S+T28JLlux7uyrqVz4GoM9sNQ1p68B1J
	T7zv3F5nD6X5vjVcUxCQmXoYsfJcf0Aqf6dvXu20RntIv0w2NE2zuc2mZNzlGQzts5vhn4sxPeRMS
	pQP+NZxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KO-0000000BCUC-1Ytq;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KL-0000000BCS2-2px1
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003Dv-Hr
	for barebox@lists.infradead.org; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KJ-000hvE-33
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-0u
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 20 Mar 2025 06:20:13 +0100
Message-Id: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222021_718129_3A56D35F 
X-CRM114-Status: UNSURE (   9.20  )
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
Subject: [PATCH 0/6] fs: implement tree and truncate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Turn opendir inside out, so it uses directory fds internally.
This is an important change, because it means that the inode
iterate operation will now operate on a real struct file.

This is a prerequisite for porting 9pfs from Linux as it expects
directories to be openend before iteration.

To aid with future development of file systems, introduce a tree and
a truncate command on top.

Ahmad Fatoum (6):
  fs: use filename_create/filename_lookup instead of open-coding
  fs: implement O_DIRECTORY
  fs: implement opendir in terms of fdopendir
  commands: implement tree command
  commands: add new truncate command
  Documentation: devel: add short section on file systems

 Documentation/devel/background-execution.rst |   2 +
 Documentation/devel/devel.rst                |   1 +
 Documentation/devel/filesystems.rst          |  73 +++++++
 commands/Kconfig                             |  24 +++
 commands/Makefile                            |   2 +
 commands/stat.c                              |   2 +-
 commands/tree.c                              | 159 ++++++++++++++
 commands/truncate.c                          | 100 +++++++++
 fs/fs.c                                      | 207 +++++++------------
 include/dirent.h                             |   3 +-
 test/self/dirfd.c                            |  11 +-
 11 files changed, 438 insertions(+), 146 deletions(-)
 create mode 100644 Documentation/devel/filesystems.rst
 create mode 100644 commands/tree.c
 create mode 100644 commands/truncate.c

-- 
2.39.5




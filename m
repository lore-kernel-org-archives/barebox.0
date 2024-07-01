Delivery-date: Mon, 01 Jul 2024 09:55:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsS-000QjO-1c
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:55:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsR-0001Dy-Vp
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pJ5zowb0K6UP48K7YGcLp6OvkxQ488gsCetnBmuAaxE=; b=KkMO0Sc4u31ha7zLEPw/NmOF7j
	Go1+48IQReHgJ3/Tp9HrSqht7qL2Aqc1XjNFCJERdK1uUjsZGHnxjHeP9MqJ430jgT7FMMoHlcNQg
	PkvC7q13yME4W+i6CSHZNSa1kUn0MXLzlLtomMpSZXP3U98pNJmkUGFLR7MIvNJYm4YURGsMUw+z6
	61elFLXjQgzq/pwY7MldxxQ08s0WZy4h7ilSPVJTnyns60X0QzxRU9swujqxFQGc99/gS4BqE/CnU
	4tEQjNIAVNwZ4OhKhoFKSs2E2wScU9oH/DNOzkpHr/InlzD9J6p7FGdxIZMxzM0eO0m83r7GlM0As
	UkJEgPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBs0-000000028iF-42qM;
	Mon, 01 Jul 2024 07:54:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBrx-000000028gi-2OCM
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:54:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-00012D-CS
	for barebox@lists.infradead.org; Mon, 01 Jul 2024 09:54:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrv-006JxN-W6
	for barebox@lists.infradead.org; Mon, 01 Jul 2024 09:54:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrv-000vQJ-2v
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 09:54:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Jul 2024 09:54:31 +0200
Message-Id: <20240701075434.220378-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_005437_628157_172B92BB 
X-CRM114-Status: UNSURE (   8.55  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] commands: watch: add new command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For testing proper operation of IIO devices, it can be useful to monitor
changes in the reading reported by the hwmon command. This is now
possible by using e.g. `watch -n 0.5 -t hwmon`.

Ahmad Fatoum (3):
  commands: edit: factor out getwinsize and export it for reuse
  lib: strtox: implement new simple_strtofract
  commands: watch: add new command

 commands/Kconfig       |  6 +++
 commands/Makefile      |  1 +
 commands/edit.c        | 85 ++++++------------------------------
 commands/watch.c       | 97 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/kernel.h |  1 +
 include/term.h         |  8 ++++
 lib/Makefile           |  1 +
 lib/strtox.c           | 57 +++++++++++++++++++++++++
 lib/term.c             | 69 ++++++++++++++++++++++++++++++
 9 files changed, 252 insertions(+), 73 deletions(-)
 create mode 100644 commands/watch.c
 create mode 100644 include/term.h
 create mode 100644 lib/term.c

-- 
2.39.2




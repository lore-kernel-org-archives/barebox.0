Delivery-date: Tue, 25 Mar 2025 14:03:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wl-00418I-1w
	for lore@lore.pengutronix.de;
	Tue, 25 Mar 2025 14:03:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tx3wk-00053B-HF
	for lore@pengutronix.de; Tue, 25 Mar 2025 14:03:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fnbe9JqzGevRmN1BYeFP/9MaQ0CKVp0OtIKByi8l+x0=; b=gc/v5zPxuPIBxjb4Th8RWw6QZY
	+O/qaxLob7AH/UONn0s70NU8xyIFDkuVeJXcq6s47ukow3MQg6kQ8VzcXBy8mjJz3ZpLrFIJf1wYt
	qXd47Lf8xsOEDpCwYOdUvuPQRT836jk0kCAMLyCvl1EkIk1rApVwWJ6sqYI5N2IQ4OsjHBOp8PPSL
	g3kBjkGuJUn2AbhNjMBGyXZNGUY+6rGtAiNlRtPKPHJltrzIl1IlG9eD5EmfZPLAQRMIPcX+DsQmU
	PDe6y10gsZWOP48U1orzoAem7lKx7pVIU0Fnyt7oU5t4L+5TZRJxYK8xOV2NarvB4oCqYPOB1Z5Y1
	nozaAahw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3wC-00000005xli-3Faz;
	Tue, 25 Mar 2025 13:03:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tx3h6-00000005vGC-3F8O
	for barebox@lists.infradead.org;
	Tue, 25 Mar 2025 12:47:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h3-0000tW-3I; Tue, 25 Mar 2025 13:47:45 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-001a8U-1a;
	Tue, 25 Mar 2025 13:47:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tx3h2-00GwOu-2d;
	Tue, 25 Mar 2025 13:47:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Tue, 25 Mar 2025 13:47:37 +0100
Message-Id: <20250325124740.4035964-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250325_054748_836582_E3B6BC10 
X-CRM114-Status: UNSURE (   7.06  )
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
Subject: [PATCH master 0/3] sandbox: enable building under musl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building sandbox itself as opposed to the target/host tools still fails
with musl, due to some headers not being available.

This is fixed by this series.

Ahmad Fatoum (3):
  sandbox: use POSIX header instead of Linux one
  sandbox: don't build tap support code without CONFIG_DRIVER_NET_TAP
  sandbox: os: tap: make it compile with musl

 arch/sandbox/os/Makefile |  3 ++-
 arch/sandbox/os/common.c |  2 +-
 arch/sandbox/os/tap.c    | 14 ++++++++++++--
 3 files changed, 15 insertions(+), 4 deletions(-)

-- 
2.39.5




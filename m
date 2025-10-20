Delivery-date: Mon, 20 Oct 2025 20:27:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAubG-009yyU-2p
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 20:27:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAubG-0001ut-Bo
	for lore@pengutronix.de; Mon, 20 Oct 2025 20:27:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bBp4elRirQxGF8T5EmGe3pw+5KbpsPcxa4ZaZMlSUqI=; b=xouRwBWOw5LjWVtKi9FaqzA/ZM
	WhUud5kOcrJ8F40LCTPs+Z/MV4tq5rbw1oajSCQ7wPe0jDG0eephd8r7xHi1m4Vy9aSPVvRGlf9dT
	QCMe5lFtgzhNLZzWdj0/344t3qJCxCE/3yLyRyyE/odU+8XbFCMRELj7BuA6FTfUHX9jms7rsmI4n
	+8B6H+/OvpKe5l0qTp+S8QMCn7IByHF4dkoWBkn+wMAN44ag39umrki5jj62oLNZxqFfUuAYCVy2i
	eiGnz6QDS4EPIqjIdBQ8VZciJvERI7ZUaDIfXVfc28VaYpnNt0jl7rYtCswa6V6WVg8TzMkbCu9RT
	hlXJIulg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAuak-0000000Ecb7-3r5V;
	Mon, 20 Oct 2025 18:26:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAuai-0000000EcYr-3eFH
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 18:26:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vAuaf-0001pE-3h; Mon, 20 Oct 2025 20:26:41 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 20 Oct 2025 20:26:39 +0200
Message-ID: <20251020182640.588413-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_112644_904488_003FD16E 
X-CRM114-Status: UNSURE (   8.36  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] checkpatch: increase maximum line length to 100
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has bumped this variable to 100 as well and we do not mind longer
lines where it serves readability.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/checkpatch.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 1592497fb38a..734310ef834c 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -51,7 +51,7 @@ my %ignore_type = ();
 my @ignore = ();
 my $help = 0;
 my $configuration_file = ".checkpatch.conf";
-my $max_line_length = 80;
+my $max_line_length = 100;
 my $ignore_perl_version = 0;
 my $minimum_perl_version = 5.10.0;
 my $min_conf_desc_length = 4;
-- 
2.47.3




Delivery-date: Mon, 31 Aug 2026 15:26:35 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x121y-009I7r-28
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:26:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2A950201BCA
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:26:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TItPa19C;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IKv8fnutSYA8DGoJ2wcofESkuQdknWUX6ZU3PGmTrBE=; b=TItPa19CPPH23L67VKvQqSaqLW
	1C3JmitAwr0EU9TQM97rcEzWQqv8gu4g7DPUNJRFwxiq5dpTBsgXRGVcGNoSBEWqeV+MVhiL5V6bn
	hA6fb01vR/l6d0d8Hp2elyx7nWrA83gigThL2qSD2eFFLoGnrFc+PpuN90uzZiL9rBwp0YRgHkWO8
	Qv6EE9hC8BM7XhLcYd4iEyKpxyTUTjVivOhagMXvS416CSghWTpK2bQiubHEWX9ACzy4SBSr/5Zhi
	d0BOVMlX3RQAYI4Kem7gEWGP8sY1I13i3G1htI6RDDt3Hi5KHCxZxlzcDxo3oM15NYUHKoYBmd0B2
	IfG0JrZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x120Z-00000009P1r-3tm6;
	Mon, 31 Aug 2026 13:25:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x120U-00000009OzD-49va
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:25:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1ECED201BCA;
	Mon, 31 Aug 2026 15:24:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x120P-004GS7-08;
	Mon, 31 Aug 2026 15:24:57 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x120O-000000034AG-3wum;
	Mon, 31 Aug 2026 15:24:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/4] common: boards: qemu: read the command line from the cmdline fw_cfg key
Date: Mon, 31 Aug 2026 15:24:51 +0200
Message-ID: <20260831132456.730833-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_062503_202184_BA0C30A5 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The /boot/qemu_fw_cfg script has a guard for /dev/fw_cfg.cmdline
    but reads /dev/fw_cfg.initrd, so global.linux.bootargs.dyn.qemu ends up holding
    initrd contents instead of the -append string. Fixes: 67041eb8e505 ("common:
    boards: qemu: process some standard fw_cfg keys") Signed-off-by: Ahmad Fatoum
    <a.fatoum@pengutronix.de> --- common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
    | 2 [...] 
 
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
X-Stat-Signature: tfd14m1n8f5hqirgytpwuz9x7ahc6qzp
X-Rspamd-Queue-Id: 2A950201BCA
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

The /boot/qemu_fw_cfg script has a guard for /dev/fw_cfg.cmdline but reads
/dev/fw_cfg.initrd, so global.linux.bootargs.dyn.qemu ends up holding
initrd contents instead of the -append string.

Fixes: 67041eb8e505 ("common: boards: qemu: process some standard fw_cfg keys")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg b/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
index a3c12df67ff5..5c698f5a7352 100755
--- a/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
+++ b/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
@@ -7,6 +7,6 @@ if [ -s /dev/fw_cfg.initrd ]; then
 fi
 
 if [ -s /dev/fw_cfg.cmdline ]; then
-        readf /dev/fw_cfg.initrd qemu_fw_cfg_cmdline
+        readf /dev/fw_cfg.cmdline qemu_fw_cfg_cmdline
         global linux.bootargs.dyn.qemu="${qemu_fw_cfg_cmdline}"
 fi
-- 
2.47.3




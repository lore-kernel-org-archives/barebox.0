Delivery-date: Mon, 23 Feb 2026 12:35:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-004oe4-28
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:35:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUDw-0000Wr-T8
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:35:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0UE+Dp+rYtlxqFH0DCZeeS/uOu0fJncyRoHmM7IeP08=; b=OQGiUshConC6AioA1w1j8EEPLb
	yrp+3v7v5lYLh2xx34GWgWpxW4q0XNRhSsUVXavIjbOHUE21gTqgXtdy4tcgC0W8BxFzLMm3R3ydh
	RlJ6R9X2K91TIZT4jJ47eNUhN73D+J6pcxSvX/X4EMV2g5avd7AWZx1I+g4ZC1ZrLdvazkpEeEz4e
	r9HKWMkZfAgNdYMZG5SZXb87lBADlcmYXwhe6RdI2QVxyUd0zztAbVNb/FCWttz4cvsyiXfzfX7Ab
	04nh5zlM3Sv0dAtiKv7wfmYjk1uR7IOuEY4pYHpIiO1bnzh9acJKzkhtMR6fx+IQxH6FjGhpgt2Lm
	vrt8PT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDa-00000000CAj-4ACK;
	Mon, 23 Feb 2026 11:35:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUDX-00000000C8N-3JXe
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:35:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vuUDW-0000JU-6i; Mon, 23 Feb 2026 12:35:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Feb 2026 12:31:34 +0100
Message-ID: <20260223113446.638135-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223113446.638135-1-a.fatoum@barebox.org>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_033511_826862_E132A94A 
X-CRM114-Status: UNSURE (   7.86  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] MAKEALL: error out on options placed after the defconfig argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

getopts stops parsing at the first non-option argument, so options
like -k after the defconfig name silently end up as positional
arguments. For bare defconfigs these get misinterpreted as pytest
options and are silently ignored, leading to a build without the
intended configuration.

Detect this by checking for trailing arguments when any positional
argument is a bare defconfig (not a labgrid .yaml config, where
extra arguments are intentionally forwarded to pytest).

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 MAKEALL | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAKEALL b/MAKEALL
index c36aed625820..dd0b7f8003cc 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -440,6 +440,15 @@ else
 
 		configs+=($i)
 	done
+	if [ ${#pytest_opts[@]} -gt 0 ]; then
+		for i in "${configs[@]}"; do
+			if ! [[ $i =~ .yaml$ ]]; then
+				echo "error: unexpected arguments after defconfig: ${pytest_opts[*]}" >&2
+				echo "hint: place all options before the defconfig argument" >&2
+				exit 1
+			fi
+		done
+	fi
 	for i in "${configs[@]}"; do
 		config=$i
 		if [[ $i =~ ^.*/([^/]+)/([^@]*@|)([^.]+).yaml$ ]]; then
-- 
2.47.3




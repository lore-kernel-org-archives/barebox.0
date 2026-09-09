Delivery-date: Wed, 09 Sep 2026 12:35:47 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4Fed-000A1S-20
	for lore@lore.pengutronix.de;
	Wed, 09 Sep 2026 12:35:47 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=J2Uk1S21;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6C2532007E0
	for <lore@pengutronix.de>; Wed, 09 Sep 2026 12:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TpPFn0LG6C6baeFLWcu4ywCWqBrm52+QuFo8JzDuA8o=; b=J2Uk1S210WhBktrRWjbg+mU5Nk
	I47xnCb2SYtSgqL8BSBq8+qYGr7thoekjkuePhA4gVOgs80nd5xjqGwuS6vOd5AK2WFF7niS2L1oc
	IoPSnt7tZrLRs1EGF9R6mElsM2BDwUC1Ndy1Poa79FqKVTjNhQLoQijTOnoYOGCD/YhXYzNEF0uDF
	DOvlhGKv5g4bj0/Jt7bcsq3mBPSweBf7cU9jEyCfKInX5zi1Rdh2blntrD/SZTLGnR9G4xaVU3qMH
	O/22T56zZ+pkw8xuSu2xGUKd512UCcMQEYEf9VTafKJkvhGsHEnJflFwRHmUylXGXUnf51uoK5L6e
	mzJc9VLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4FdC-0000000BRVm-1O4Q;
	Wed, 09 Sep 2026 10:34:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Fd7-0000000BRUw-1TUO
	for barebox@lists.infradead.org;
	Wed, 09 Sep 2026 10:34:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2D645201B5A;
	Wed, 09 Sep 2026 12:34:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4Fd3-0004go-0L;
	Wed, 09 Sep 2026 12:34:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x4Fd3-0000000DtTX-2EB0;
	Wed, 09 Sep 2026 12:34:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] scripts: clang-runtime-dir.sh: cope with a wrapped compiler
Date: Wed,  9 Sep 2026 12:34:05 +0200
Message-ID: <20260909103408.3311496-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_033413_538376_8CFB199E 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The script takes only its first argument as the compiler,
   so a $(CC) that carries a wrapper, e.g. "sccache clang-21", makes it probe
    the wrapper instead. This leads to CLANG_RUNTIME_DIR ending up up empty and
    the sandbox fuzzer link then fails with 
 
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
X-Stat-Signature: ritaui4k3oujmmjgsfbcxzemgx4r13b4
X-Rspamd-Queue-Id: 6C2532007E0
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
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

The script takes only its first argument as the compiler, so a $(CC) that
carries a wrapper, e.g. "sccache clang-21", makes it probe the wrapper
instead.

This leads to CLANG_RUNTIME_DIR ending up up empty and the sandbox
fuzzer link then fails with

  ld.lld: error: undefined symbol: LLVMFuzzerRunDriver

because -L"" no longer finds libclang_rt.fuzzer_no_main.

Pass all arguments through instead.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/clang-runtime-dir.sh | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/scripts/clang-runtime-dir.sh b/scripts/clang-runtime-dir.sh
index 65b3028ad04d..7a3899d16ee2 100755
--- a/scripts/clang-runtime-dir.sh
+++ b/scripts/clang-runtime-dir.sh
@@ -1,14 +1,17 @@
 #!/bin/sh
 
-CC=${1:-${CC}}
+if [ $# -eq 0 ]; then
+	# unquoted on purpose: $CC may carry a wrapper, e.g. "sccache clang-21"
+	set -- ${CC}
+fi
 
-if [ "${CC}" = "" ]; then
+if [ $# -eq 0 ]; then
 	echo "Error: No compiler specified." >&2
 	printf "Usage:\n\t$0 <clang-command>\n" >&2
 	exit 1
 fi
 
-rundir=$("${CC}" --print-runtime-dir 2>/dev/null)
+rundir=$("$@" --print-runtime-dir 2>/dev/null)
 if [ ! -e "$rundir" ]; then
 	# Workaround https://github.com/llvm/llvm-project/issues/112458
 	guess=$(dirname "$rundir")/linux
-- 
2.47.3




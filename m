Delivery-date: Mon, 21 Sep 2026 11:38:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8aTT-004dVQ-2M
	for lore@lore.pengutronix.de;
	Mon, 21 Sep 2026 11:38:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5816C2007E0
	for <lore@pengutronix.de>; Mon, 21 Sep 2026 11:38:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=czTmm9Qj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A0yW2GggHNU6omRpjnLIInkXvhXj04Jov8c+tqUIbjw=; b=czTmm9Qj4yvmH5qMiHArRU+EXC
	JGKdKls83G/uRrWTXhCUjJCsUjiZHBIdUpLJQIPj8Hz6GnnmixBn9XJNbB/8VPp6EN4ExeBt7TqHz
	a3ImiK/YV1cCkL9sw+VAD6p7JpeY+wwPQYyqw5uZvwc5N81bTQjC4VdjDb8Y9tAFrxHCdEIHrl71w
	V2/ChgbgpgmqVxkFdKqDXb+al+94IQSNIDLZms0k+1mHUatAyWGwqd51DJ6cN2c8Hkny36a6p+vz6
	8VpoYSvsEmkW0nZRuGsMANp2/JnvG/a70cGKVu/mfglepGr3K2qHLkoHMSquEjN+D2525Dej0LpCY
	6+er1PPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8aSD-00000001XSB-0Bdr;
	Mon, 21 Sep 2026 09:36:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8aS9-00000001XRc-0hUC
	for barebox@lists.infradead.org;
	Mon, 21 Sep 2026 09:36:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 053662001F2;
	Mon, 21 Sep 2026 11:36:47 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8aS6-0022V7-31;
	Mon, 21 Sep 2026 11:36:46 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8aS7-00000003hZX-1T6v;
	Mon, 21 Sep 2026 11:36:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] scripts: genenv: make the temporary directory writable
Date: Mon, 21 Sep 2026 11:36:41 +0200
Message-ID: <20260921093646.882466-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_023649_374677_D5E74011 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  genenv copies the environment directories it is given into
    a temporary directory next to its output and removes that directory again
    when it is done. The copy is made with cp, which preserves the mode [...]
    
 
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
X-Stat-Signature: hcao3uhwyo15agtw9k1xo1f5a7kt6qdi
X-Rspamd-Queue-Id: 5816C2007E0
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

genenv copies the environment directories it is given into a temporary
directory next to its output and removes that directory again when it is
done. The copy is made with cp, which preserves the mode of what it copied,
so building from a read-only source tree, e.g. a Nix store path leaves a
temporary directory nothing can be deleted from:

  rm: cannot remove '.../defaultenv-qemu_fw_cfg.bbenv.genenv.tmp/boot/qemu_fw_cfg': Permission denied
  make[7]: *** [scripts/Makefile.env:41: common/boards/qemu/defaultenv-qemu_fw_cfg.bbenv] Error 1

and the build fails. The same modes also stop the find that prunes stray
editor backups a few lines further down from doing anything.

Make the copies writable before either runs. Their modes are of no interest
to anything: bareboxenv packs the files into an environment image that
carries its own.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/genenv | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/genenv b/scripts/genenv
index b630e995cb9b..668f681ab9c3 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -42,6 +42,8 @@ for i in $*; do
 	fi
 done
 
+chmod -R u+w "$tempdir"
+
 find $tempdir -name '.svn' -o -name '*~' -delete
 
 scripts/bareboxenv -s $tempdir ${tmpfile}
-- 
2.47.3




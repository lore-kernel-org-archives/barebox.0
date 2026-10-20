Delivery-date: Tue, 20 Oct 2026 09:11:00 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zv-000vwA-2l
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:11:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B0B2A202285
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PIjmU+Pk;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Mh56ugqo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480260; a=rsa-sha256;
	cv=fail;
	b=W7WUnHt90k1soYoeFBqkrH/vQzoib3tDAm3Kz8BQTeOKZ4/TRqQ/8VR4bxKtggvh9AKTVJ
	Q5j5Kdb3VJHC+8KJkDvjj91fOschnbw1kU6OZ9owwDpWERNK3BTB92E/i58NdG8adcXhP5
	3jH7e+9vpHwCEAHwLoWkF5AV4URXchKLG28sWchVDO6ePMvpew27MDS8zBhIWgdv848k8R
	F4Wy1Y5Oy08rUovvc+VVzuzHL6SfEL16lLAmNK18LW1GrBAU2wuRZGAWTOLst2PsjP7BYv
	Q2zX45ET3EjvDSpwcNvarHFfdXNQJpGYxD1iDNM3KQ1ZWF4if3Ueawg7XZlSXQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PIjmU+Pk;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Mh56ugqo;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480260;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IFV6JPg5RQWDVJCIfTxV1M/E1OkbhiL3bN22V4rIIMo=;
	b=fHBoXMx+vlX3ggjofONkRMGXUGKljUDKqnkp6usoYK19n3IL19w4z02zGNH9vu4NxWharY
	zsFDRapfyyNMhO0iFs3u/tTkpYr3XinsFxr6HXIkjmlR1+VbR4wUfYJlkHZR9SoqE9SCO6
	HjC7ByjUG5E3Cv0kwFeHdK0maHv9WmKK5WTpskQi7rt6hdt7pldqcMEXGFW5+Gs1oNnw5H
	qJqbMCSo49DcfOH6baoaCGYJGxi0NNgCVf7A0cqR5lRban/gwiFuuexr5m7rHz8KyW5RRj
	6arKV4vDwJXXNbhr8us95IjZngLAtJnaguowSHTHJ+gifq9TSwvRQ7Z1/Cq5zA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IFV6JPg5RQWDVJCIfTxV1M/E1OkbhiL3bN22V4rIIMo=; b=PIjmU+PkN+wvRe4dWyzIMtajl+
	mPpwK/7MQW5S6P/R2NOhKtauzkL4+//p3tfLkhg0YCZwOKUiQU+5m+ybuZ6e4Q+HrSIIApS1um3PR
	zKqS9W7D7d//WPTnI1J5mThVjyFCqvNzS3S69RhA5An8Z5UTBq8cPMlNAwH8xMs4kB3fCQIdFf6ks
	aonyZDt0tty5l9j2TpWjHazYEuoHMVpjeDjsiOIt+5g2YYAx6i9691Du1477WuGGIUKftDY1we29D
	+kviZ8I2SCitRB9bW6/AM8gGcMYf4owXxrE9qm0lWMT3GAw5kBLDL2CACXCc2c+2ZREtKOSDM5Qkx
	pQURj7QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ye-00000008zKG-3kQ0;
	Tue, 20 Oct 2026 07:09:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3ya-00000008zGi-0rsK
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:38 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1251E2022CC;
	Tue, 20 Oct 2026 09:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IFV6JPg5RQWDVJCIfTxV1M/E1OkbhiL3bN22V4rIIMo=;
	b=Mh56ugqo7cXdgeuH5ZImlnYyejJrn3Z0PDIBAhfL5+Jwa2zgENyevCsQeTaoOSJU/WXgiW
	LQbYjylbsPDXxDXUoBlo/MXDEXYqgd4n8EsLn5IrTTRk+iReiz3l9Omm1jtq9X/2iHUXez
	XQyksd81TFMOCjpPesnMGxptUtEKf8e6Gt8qpiGG2254CNKq0e/pVUBOpBMgwnd+Jn6Sd8
	KHA0iJmT5Z+Y/hATxbMDl01uBkV5VJVyf0TnDiYdERkTaYKJD10uZmNA3nJE1gHNFBZsdj
	Lpa7aLpwBIGTI/V7FLiY5IBTdeU7nRs1sAQ6Xc5C+6JHGYaWBUTPyx7WsgkWEg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480171; a=rsa-sha256;
	cv=none;
	b=e7RLErtzUEng2gnrqrW11WLN/WGwuaAE2lo+gTBxY/R9clyBtezPDM41Bb09JcIV2XkbBw
	/tYSCV7A091+1yIDcVzszeVPHK3Hm2P55yVQYJB/SAqsb/KjjoH1/Vxpj6LeUGENfp2B3J
	PvUThXTpvB+zRxpw7z+S3y3Vby/3MPTibH+BRBlGepmMQZSF0V47bpqXhhcpp6etmnO3hh
	CuMCr7cEjAmwuQi183XUlDw3ZRKxOQHD1AMhuKePizvhwkJeTS1UcHFspm8/zjAI3eAOhb
	/+7oAnT5mJl84hB9++Fx3qTX+u5i0pkUPzQA37dMb/iZWyRU7nXpoBarLIPLLA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IFV6JPg5RQWDVJCIfTxV1M/E1OkbhiL3bN22V4rIIMo=;
	b=apN9Qmc6CbNs4hS195+GjV6jjV5GYvtzafNNHw2gklqHDWEsLJKFsQKTiRxe3rJ632QlTC
	WtvMA9HkZwEtcEUP2PUFrISFiCdF8LnyN/DyGVuJoiK+ibTTUpQO3YdDvvdobcPfGXpM6c
	KROsaSgA87aRJbDu4dCENGHNe4/YURhO9yFkS1Gyxok6UEILDoRp/Vm9tZrSPGK/o/qw1j
	V3XTKmdKxJK+xRYcpDgj57c6rqavHU/aQoc0v/Z/5gz+QhrqnCLkN8ddiL3COCGToPABFL
	AjD10iUBv2ZN8JqekQt2Y6c+HD+7s2B8coMeq9/xEdD6psVc74kCCQ2O5QIhwA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:33 +0200
Subject: [PATCH 8/9] commands: ln: accept -s option
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-8-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=1778;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=snEVNz6Qlgp7tR3rnJLVu4F+fE1NIuwFwlmrsPAVyuw=;
 b=tZAc20UGFixS2tUQMtO7lODTesRU8/zBixv+8xTnb5yOg0LZqBG6RAVhdmlZdSGt5phrJRPXo
 ZbivxIfCjqPBUliV8JNKOGozuMlLuMaSEIrclTXXkV2/L/ELih5+/eZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000936_441037_E4B52C28 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  All links barebox creates are symbolic links, but ln does
   not accept the -s option, so the common 'ln -s SRC DEST' fails with a usage
    error. Accept -s and ignore it, so that users and scripts can use [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: B0B2A202285
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 9dz7uwpkmxqmejhcitb7ezct1dx1hfms

All links barebox creates are symbolic links, but ln does not accept
the -s option, so the common 'ln -s SRC DEST' fails with a usage error.
Accept -s and ignore it, so that users and scripts can use the familiar
syntax.

While at it, add a help text for the command.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ln.c | 30 +++++++++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/commands/ln.c b/commands/ln.c
index 9206480300..c907b306c9 100644
--- a/commands/ln.c
+++ b/commands/ln.c
@@ -9,22 +9,46 @@
 #include <environment.h>
 #include <fs.h>
 #include <errno.h>
+#include <getopt.h>
 
 static int do_ln(int argc, char *argv[])
 {
-	if (argc != 3)
+	int opt;
+
+	while ((opt = getopt(argc, argv, "s")) > 0) {
+		switch (opt) {
+		case 's':
+			/* all links are symbolic, accept -s for compatibility */
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
-	if (symlink(argv[1], argv[2]) < 0) {
+	if (symlink(argv[0], argv[1]) < 0) {
 		perror("ln");
 		return 1;
 	}
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(ln)
+BAREBOX_CMD_HELP_TEXT("Create a symbolic link DEST pointing to SRC.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-s", "ignored, all links are symbolic links")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(ln)
 	.cmd		= do_ln,
 	BAREBOX_CMD_DESC("create symlink (make a new name for a file)")
-	BAREBOX_CMD_OPTS("SRC DEST")
+	BAREBOX_CMD_OPTS("[-s] SRC DEST")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_ln_help)
 BAREBOX_CMD_END

-- 
2.47.3




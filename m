Delivery-date: Tue, 20 Oct 2026 09:10:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zs-000vv8-0X
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:10:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0C2E92021E3
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G6Yt2C5w;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Gmvn6tvP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480256; a=rsa-sha256;
	cv=fail;
	b=ILSFi5zWwTXM9bdEsa/IhJV1YyCQRhrgdTPEXZUgv5yuwFxBOcUqdsFQoeB99zIDOOyZan
	i3DSiwSzFEByb7ONbMLvf5dk4xWZZP6F56g0c5kL8dGkrsOwIlEiCO0vj2VoaB6bDR6rlj
	1PWhmolCKfSAI+MJzitaj75s/L7W2fUhdZRs/RULR05bYdz3Fhxp1tCFcL6kqP+NBkr7ld
	iP5LQ1Qc9rRJa1Y48zuR7IBgiMlHRpj7nLBMws6z/fnLgci7ykIubcgaMKCX7hB12Y5OMQ
	RYgWl3ItZCw8CnUXRgKowxmmHM4Bs6JdnOPPwUAp1A7JAAWEd1CT/DRBMZW7GA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G6Yt2C5w;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Gmvn6tvP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480256;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mNuyK97QmZ3bzXw3J4V9uuww+hvrrOiH0N7WNrHjfl0=;
	b=g6JS/aLaTcJGlQFBgIHt0r59TMoQ+FIX6avlp8H/RltV0jdFW/fuc1sfwVbSGZTSTPjUYT
	EGZ0ZxJzFkLbmESn24/NiS4A0bp0XayZaRTmIQE3qonJNGa/9x0l40sc4TZB0vqH0jmXPm
	SooEWrjLIIyTZjxyenAt1P2MjChNBtdZIh2EuAmy2ZsEx7/vGPv2ALLqeH7WEAOKR5krHb
	l2d8Qoh8riRcWznWeg5Zs20SHL/4u+44WVirJhMhRYec+OxyUHe0UvGnisoJo7UAHlKPAv
	hu+8eEk8SyWZnx36GA3R3ryPBN7Lkmd+IVIi52uMve3qOm8/UxDn8lu47Lv/eQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mNuyK97QmZ3bzXw3J4V9uuww+hvrrOiH0N7WNrHjfl0=; b=G6Yt2C5wHBiI9LIPyoWqMkrWbs
	e4mLWZg1bIrNCo/mLv8qjgv19a6Vz1k75mRRldl1tKlijGxHnfNkXWHcsKng2KCBR4V6qY1cWYE70
	Z1ckExknWWwEBjcgsK7A+Hza0Ua5lLhIgZlZaZhFlc/u5o3TblykYTAc/ShiDThTdPyMzS5zBmw+f
	jXDXCtpxgAFnnITSIhWcyS3YPMuFP5U2GmG7i9nIMvoNwb69BOsRtFR/Vbo0nWeCDXiypvUDnPuZn
	Z8WDhHT9MHbesFdVKdE40okXwBBB1JPq5ZSwMJ9AspyvCSf8FnnyPmjtdtxvTgT9UupGmWr6W4BWy
	x6zLA8Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yf-00000008zL6-1JM2;
	Tue, 20 Oct 2026 07:09:41 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yb-00000008zGh-3MHv
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:39 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 05AE02022C7;
	Tue, 20 Oct 2026 09:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mNuyK97QmZ3bzXw3J4V9uuww+hvrrOiH0N7WNrHjfl0=;
	b=Gmvn6tvP/IATPrEDj8mY7reEE7eLii7lHqOyqXvA0LUzUJ5QxZ+f+O+mbKWEdBWPY95Hnz
	ESpOYAZC33CHcQAcLQR+EgrTx3sUq1hccuXpwBiXUY9bSx7OgJLi8CQN9NTwCpNEsipxlJ
	MNmDQMcw/hyFp2IqrHz/fhpWBt01YNbwxtArF5bDt4iCLemNPFiMNatQGTdwsVHnXJHirD
	689zPYE3a2k1cxC27iaNTBwmrQZPYodVywuqbu1LrvEfA6pyNVpOR4UCsCR0n8YOMIBTbb
	ApqSJoIRC+xe5Cw0QGj0xoLYIZhHscWbGFsoJwxpk5QZ0UtoLw3q8zW7sjdUbQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480171; a=rsa-sha256;
	cv=none;
	b=YE9a4xnIk+dCVl/1usyBgeyBRPVPKf8Nf+/G1P7coUxiamTAQfREPvLlEh9zEQrnQgbKW8
	hj4eFWTgQqwuYJf3vbyy6COcLYXPW+CTVo1AiSnmbYwSe7gm23GtYhD+UI/UdkpsereTRX
	6ZpNGiE6IF2FOThaT+CL6NEA+OCtaha3SE9Z0dCWdGwHbHT4v9aGpQmG3oW7vzauXXR7rf
	YD2WFbceBIwVqiXO2G9tdweuV2MIjqwUuXWrTZrIv5AOxpFHgwYEmUMxw3l6maWsxRVP91
	Noy9yHa8Vdi31DA6bFZPXyLO3MrwsQfcrm5ugfTvIKqE3KQWRV7L3KoUFA3kUw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mNuyK97QmZ3bzXw3J4V9uuww+hvrrOiH0N7WNrHjfl0=;
	b=gr9xwHaznFjoQuiJNTC6DRWSbV6PgzaRpACnK3kaUPk/xLl8AaTmWv2+OQMEDfgsi9hbrA
	Go4BjI1OHCYgO6gKvJJShAlgW5xguviRVD6vvsdBYbMy/asFZW5qT5C0K4RPVbb9gTvXIR
	fR6x5SMyaXsxqBHtpJaaPVNYX0H5O/Q/HK2/n9k2hRDTRO/T7uLkj+pMYsL//Q5w1NLRuf
	lL2SWhMry1ADcnxXtsWHPt9Jmy++2Ju6MSx1HbNPBuCUq9K297WQWeCCQ6RnKaBvVQTI4l
	rPD8YPj4YPWozp8CuKXueXrj9OjjoVDA1rf+GFhjNgjO08cGf5GZr1jBFP17lQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Oct 2026 09:09:32 +0200
Subject: [PATCH 7/9] test: self: dirfd: add tests for absolute symlinks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261020-fs-symlink-fixes-v1-7-e7ac8c29b08a@pengutronix.de>
References: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
In-Reply-To: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=3279;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RZsokRobkELCLsyItj2T+DnGvb0Oyv0lNpdQJw2Imbc=;
 b=n5lUFseGJRArLfLiQ4YHysH5gaWTCaupYgby0tWGSiUm4IYMWWmK+estlD7DrN+3WiWqI+COZ
 W00b0sjdOCuBiHk68a4OBp7WSgeMb48YaYoTGUnvNvQQIV0w+M4U9H2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000938_451796_0142BDED 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Add tests for resolving absolute symlinks, both relative to
    the regular root directory and relative to an O_CHROOT dirfd, where they
   must be resolved from the root of the mount. This includes links po [...] 
 
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
X-Rspamd-Queue-Id: 0C2E92021E3
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
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
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
X-Stat-Signature: 6kyq6qztg5jb3koqjqt5oqfsggbini1j

Add tests for resolving absolute symlinks, both relative to the regular
root directory and relative to an O_CHROOT dirfd, where they must be
resolved from the root of the mount. This includes links pointing to the
root directory itself, both as last and as intermediate path component.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/dirfd.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/test/self/dirfd.c b/test/self/dirfd.c
index 04cbf6e285..be927f0761 100644
--- a/test/self/dirfd.c
+++ b/test/self/dirfd.c
@@ -96,6 +96,64 @@ static void do_test_dirfd(const char *at, int dirfd,
 }
 
 
+static void check_link(const char *at, int dirfd, const char *path,
+		       const struct stat *target)
+{
+	struct stat s;
+	int ret;
+
+	ret = statat(dirfd, path, &s);
+	if (!expect(ret == 0, target != NULL, "statat(%s, %s): %m", at, path))
+		return;
+
+	if (target)
+		expect(s.st_ino == target->st_ino, true,
+		       "statat(%s, %s) resolved to the wrong file", at, path);
+}
+
+static void test_dirfd_symlinks(void)
+{
+	struct stat root, mntroot, testfile;
+	int fd, ret;
+
+	ret = mkdir("/dirfdtest/sub", 0777);
+	if (!expect(ret == 0, true, "mkdir(\"/dirfdtest/sub\") = %d", ret))
+		return;
+
+	ret = symlink("/testfile", "/dirfdtest/sub/abslink");
+	expect(ret == 0, true, "symlink(/testfile) = %d", ret);
+	ret = symlink("/dirfdtest/testfile", "/dirfdtest/sub/fulllink");
+	expect(ret == 0, true, "symlink(/dirfdtest/testfile) = %d", ret);
+	ret = symlink("/", "/dirfdtest/sub/rootlink");
+	expect(ret == 0, true, "symlink(/) = %d", ret);
+
+	if (!expect(stat("/", &root), 0, "stat(/)") ||
+	    !expect(stat("/dirfdtest", &mntroot), 0, "stat(/dirfdtest)") ||
+	    !expect(stat("/dirfdtest/testfile", &testfile), 0,
+		    "stat(/dirfdtest/testfile)"))
+		return;
+
+	/* absolute symlinks are resolved from the root directory... */
+	check_link("AT_FDCWD", AT_FDCWD, "/dirfdtest/sub/abslink", NULL);
+	check_link("AT_FDCWD", AT_FDCWD, "/dirfdtest/sub/fulllink", &testfile);
+	check_link("AT_FDCWD", AT_FDCWD, "/dirfdtest/sub/rootlink", &root);
+	check_link("AT_FDCWD", AT_FDCWD, "/dirfdtest/sub/rootlink/", &root);
+	check_link("AT_FDCWD", AT_FDCWD,
+		   "/dirfdtest/sub/rootlink/dirfdtest/testfile", &testfile);
+
+	/* ...which is the root of the mount for O_CHROOT */
+	fd = open("/dirfdtest", O_PATH | O_CHROOT);
+	if (!expect(fd >= 0, true, "open(/dirfdtest, O_PATH | O_CHROOT) = %d", fd))
+		return;
+
+	check_link("/dirfdtest O_CHROOT", fd, "sub/abslink", &testfile);
+	check_link("/dirfdtest O_CHROOT", fd, "sub/fulllink", NULL);
+	check_link("/dirfdtest O_CHROOT", fd, "sub/rootlink", &mntroot);
+	check_link("/dirfdtest O_CHROOT", fd, "sub/rootlink/testfile", &testfile);
+
+	close(fd);
+}
+
 static void test_dirfd(void)
 {
 	int fd, ret;
@@ -116,6 +174,8 @@ static void test_dirfd(void)
 	if (!expect(ret == 0, true, "write_file() = %d", ret))
 		goto out;
 
+	test_dirfd_symlinks();
+
 #define B(dot, dotdot, zero, dev) 0b##dev##zero##dotdot##dot
 	/* We do fiften tests for every configuration
 	 * for dir in ./ /dirfdtest / ../ ; do

-- 
2.47.3




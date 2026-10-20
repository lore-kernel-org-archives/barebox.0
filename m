Delivery-date: Tue, 20 Oct 2026 09:10:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJ3zv-000vvq-0z
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 09:10:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 367C620227A
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 09:10:59 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AyNLMwfN;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ohs1Fw6e;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792480259; a=rsa-sha256;
	cv=fail;
	b=cBcQsAHT8fLPZWngaL3vN2+IXXtV3UTxfCp1IbCQaMkCWre8ChNSpuGiQurjugHppadyBO
	9CIosq1f0fhyM9OUtdyV/qrbz/K0weEHsTfefgXTcRCu9FzbpEOLQy0X+EEGIrddYf3e2d
	zobQZQIp48aql4tRrDl71q+IBH9KhP3TJnuwyrPPPM0CgtgiqUqbSokbPjyBQw+8Hd5BUU
	eAby8Zlj0FsDrO5OHB3PLdw2zn7e+r4L0XCdbg6C/gJ+wQDdd+UdkbbSXCCbkUdTNUiufU
	BWblHbds4nIuptn/2hzUPREvoRDv14qi/l9vjA5Blp2IIWPRnR4nFpYvmSP/xw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AyNLMwfN;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Ohs1Fw6e;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480259;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rd4IDRc+nqavYYi26VD4bAd4CcNoZNyqZ6g2MrgjfWQ=;
	b=Zd3jazuwhVGhzf1hpAkxZx6j8ST8h2cLpcv32mXqsKetCETi3Uc4i3MCVwy4JA9dTJAGZh
	D+f+GuKD5r2i+jxZcQ7hYg/UFKDic4Szk0r5HTuUXiNQNUCO/bafLFR8D/m5N8r8tf5YYJ
	UaRkeyUDdRl/Vei0sJdC2ThaVq5wesVV8pYCuu/R3Gem2G4dqSCmiCmz+xltc1RKW7SBcM
	6tX5+ZlCigcxgPnnKQ/vmECOjVtZemnxpANJIuloxO029pb0WA4tLChFAuYKGZeIxlMgCl
	549jlKgMJImEd3nT+rD7HfFpRdMtHLuFZ/txrpZNIl8qAH7r05hanhN0qzuAGw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rd4IDRc+nqavYYi26VD4bAd4CcNoZNyqZ6g2MrgjfWQ=; b=AyNLMwfN8BqSpxeHhVq28CtUMe
	k2OXwcxt+IE2Y/6QI4lKbGtWclK37GI8GH7XAz1DGXK5N5QmF4bsTQbACdoQk/CNoK+HUqyXrB28B
	LCkD6B3NuJdpabH0DenLPSO6VLL0g0qFqqzPtYXFyBDna4vXPDx6ZD1cSywoC8zQAe3C8tfW9GIe8
	08GdlnAHCj7fxBHg3eTmuSwYzi2wOFCoSy4WbNI8DpnaAdUBb3yBy35DXXOqIe5kooqlSEcHcyMWX
	OC+Su4kr5dza93ozWFAE5oaaDBnHNT1hyzKs4d+nTb2vU07vlLBTkqW0+dc6dHoBVS1oD6b980gNx
	X56JIjag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yZ-00000008zGj-16hB;
	Tue, 20 Oct 2026 07:09:35 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ3yW-00000008zFU-2aj2
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 07:09:34 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9EDB72008F0;
	Tue, 20 Oct 2026 09:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rd4IDRc+nqavYYi26VD4bAd4CcNoZNyqZ6g2MrgjfWQ=;
	b=Ohs1Fw6eq5idLHucexcFSk4uJ+mK0oedxsRbPMAZWn1Zzt8B95c7oR4c8d10PCNzJROVph
	k54U7DN67kUFTlrPEZX5UFEPUQ4suhmznvpag4P+d05QnzqVAupMIR8YKmvdbvtnclxBSj
	1NcdplYGL6PjcJqlYuJDxw8UG47rCDl5aYBv05cVHgRaG20JDsyW7O3818Q+NwBze8YVJQ
	JertpCb4c5l7+T9CoKlMbfwasToNa/5i9yMIcKWfVv0IsYiN5Cqb+Yc/pb71AwmgMh7EBQ
	lWnh6bV39snsn+TXP6Wli4ltKFHCsiwhjZwsjFPzS8zIs/7O5/etD1Xhgy+jHQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792480170; a=rsa-sha256;
	cv=none;
	b=QBQHbQGSg0GUglsgysFssM9Jwu4eBS0cE++WdgvPFOKN+b0BON/ZDRLGmuHoueA3Bs0rl6
	ZPulfWZPD44zuazYwy5B64WvmW6WaDzGZ0vY7xVp7wbokbi8RJZVorWFwqL2ghJHqIhaB9
	sO5gMe6cMW+XqakgDc5J5HrgF9oGo5wuFaIgGYTu7b/0NIFE5oT4aAUxTT4hrhxkThZMUV
	Iq3SqWYIk6aXji3/EEXz5EKwoxZ+bBw9KulvGKAGD7r5Aay6AtUJVoJWxfpsZqN+bbYe7R
	V+KWkJpt4XoFCOb3Lm5/5uygtHk33jHEg3XRghpZLqYCqOl9ZxLm0Frm2720tQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792480170;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rd4IDRc+nqavYYi26VD4bAd4CcNoZNyqZ6g2MrgjfWQ=;
	b=ZmCCpWb0gZLI1X8RELF7Miq/OUZmbHyCqgQni5bwlmfapdJQqoxBSv2EBbpQIaq34eB2wn
	r2vcbcmBBsX1nlaer19tGKsOPYyzzTjjn5X8NNKKH2Iafu9NKTKmujbFBx8AxGZoNQr+XU
	IZeHNQmYjWI1wh/Z6CEsnD6fZq0rQcJpYJKRJCgpFVg8WzobxpPBiBt2m0AAu+vbKiU5J2
	/TX+CsWwrD4Dq+elz7TZjLqHDhwuYETOpUL4ndROJo1lvyShLwraDXv6axUtSt21QPhUaq
	yr1HQ7MTuRntpie5+p+vafgcyHs4hR7TPQUz8gC88gEcedB1Dqbq+lT7p3I41w==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/9] symlink fixes and improvements
Date: Tue, 20 Oct 2026 09:09:25 +0200
Message-Id: <20261020-fs-symlink-fixes-v1-0-e7ac8c29b08a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKUT12oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDAyMD3bRi3eLK3JzMvGzdtMyK1GLdVJPUJFNzC6NkI6NUJaC2gqJUsAR
 QV3RsbS0AcTAty2IAAAA=
X-Change-ID: 20261020-fs-symlink-fixes-e4eb5782c22e
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792480170; l=1426;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iHEwwN8yoH5OXQY8rjoPlpHhW/EjVwZAhr6N7ItS1iM=;
 b=NTi1otQ3+AufRyiK+HG1PJmDYAT3jycbIaLzP5VNj1H8pcfejzWwKsYBi751hpvFPK6ktF8gj
 u559C/6eQsaDMJaR68IK6RaZFBACqmBI53jV3DP8CSz7vngGBlBtp32
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_000932_834117_0C6A8C6E 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  symlinks in ramfs are created with the wrong filesize causing
    broken symlinks on envfs. Looking into this revealed other shortcomings which
    are fixed in this series. As a bonus the ln command gets an [...] 
 
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
X-Rspamd-Queue-Id: 367C620227A
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
X-Stat-Signature: 6otrgudre77g9uy5b6k8ewm3pngkm9mt

symlinks in ramfs are created with the wrong filesize causing broken
symlinks on envfs. Looking into this revealed other shortcomings which
are fixed in this series. As a bonus the ln command gets an ignored
-s option and also the link destination can now be an existing directory
in which case it behaves like the linux ln command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (9):
      fs: ramfs: report symlink target length as st_size
      fs: qemu_fw_cfg: report symlink target length as st_size
      fs: ramfs: create symlinks with mode 0777
      fs: follow absolute symlinks from the root directory
      fs: allow trailing symlinks pointing to the root directory
      fs: symlink: drop references taken by filename_create()
      test: self: dirfd: add tests for absolute symlinks
      commands: ln: accept -s option
      commands: ln: create link inside DEST if it is a directory

 commands/ln.c     | 51 +++++++++++++++++++++++++++++++++++++++++++---
 fs/fs.c           | 25 ++++++++++++++++++++---
 fs/qemu_fw_cfg.c  |  1 +
 fs/ramfs.c        |  4 +++-
 test/self/dirfd.c | 60 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 134 insertions(+), 7 deletions(-)
---
base-commit: e65108ec0a682b53ecb9e1bebde6a37e0a99ead6
change-id: 20261020-fs-symlink-fixes-e4eb5782c22e

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




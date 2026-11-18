Delivery-date: Wed, 18 Nov 2026 15:53:19 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2E-000nei-2U
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:53:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 26B1B201EDB
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:14 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f7zYQvNa;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Pc+R6lgl;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013595;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=aCVjJlWLPS2BQM+CE4laMfFg4TX5P0PPpS6XPVBMz1k=;
	b=Ce/GEEshgILl+UFXT2W123qRPRpNVASJaLj7EqkjImjP7Gceciv3pC3kYABaGwwJJW2OBV
	lvMkT8iRRKHwSYqLSwbaB9VVAm3Ox3Snl+HOrvdrmrxPPTrRpLX60X9SXwO1Mr4OsE/paG
	yJKXl93twrUASIK1oHAPRQaHJBH2uIF+Oo84GV5TT7hpkDKtUJVYynxI1gPjOrTBdMnPfl
	F5QVMuIPg3UaP9G8KN7w+PDuqgWz5p0ogNP4cUXhL7Poh7AqSxhOn/J/nE+B1SSU9qDebh
	DoCic4bumszsDtlBMAJLas8FnQTJPB1wE//dYCYYHvJs0CAg4wXBLm2FHHZskw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013595; a=rsa-sha256;
	cv=fail;
	b=a8g3NqWnOZAsShKMYCS2YyAFcavJNQFAG6mqmJxGWixczllFRmcVRzo2mJMbePTjo5xm4J
	1eEWEwyjW6P1MP8nCv1gmeikiPaTMLIRaxieBRooGC+wmp8G11W/5+WlDwIY1X0x7Xh/lq
	j1PwYblt0aWZHpkgDhXL1XFDWc2xbgz5hGjBR+cwKXzo89BntECkJDZXtwv1jPwJgnuzDJ
	CZA2oXouNvQ8gZvVumtgAn7MBC7B0eYQvEYQTvqce1aQTEw/sT4TdOqT4HpQZLdupb55v/
	i8wqrR2XCRU9jkg7hbjOAOPQzikWkPaQWZjRh5Y6z3DlOpWzGcwKNauk/0ecBQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f7zYQvNa;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Pc+R6lgl;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=aCVjJlWLPS2BQM+CE4laMfFg4TX5P0PPpS6XPVBMz1k=; b=f7zYQvNaB5llhTNv7A1hQEnOCP
	3AnXve8Rq/Ysi+EiNBDkH3gtUfWhxuRJmn53m30d7ShPyBTLu5Co/hydUNw6fZd22DyH/WozRvIE+
	YiMQS/PjcVYp6q1HdVxo6t5Us1wLZjdzqlf/mn0OzBHnhbaMhlP8AllQii/wOgsl6XLpih8cGWkG+
	CHV30LNxCnoKF4DiM9zEUa2VNrRey9AkLg5gOpFLWRWm+vHXtEolyByI9i8dt+Yln76FD9eUARcf+
	J+FjO+QSf7tY1WwtMUoath7M78uIu9dllQKoXJRIyjKHqOUt02lYwVcWxzBDv6xpnuNvi4eA/vPMR
	2Jo0uGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh12-000000099eG-1G7C;
	Wed, 18 Nov 2026 14:52:04 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh0z-000000099ca-0JwU
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:02 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2BE99200467;
	Wed, 18 Nov 2026 15:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aCVjJlWLPS2BQM+CE4laMfFg4TX5P0PPpS6XPVBMz1k=;
	b=Pc+R6lgljiWIBn6fXOHxMG5kX3gaUmZNZPrbSt4keuRuOjC6Si6ME2autseeDUp2JPcTNS
	FkdVL8fQZavVGenR63jHgfoL9NI0SAqgcMy+ZRBLEDcjbrOyaIZNQJsfO3xtSmJRPmiYKM
	YxWcEUrIK2adZq9BCRc6WGuYt73+ukAxxhyUviyMkL2cUyV6p5xLsrfZGb1tHQUOI1m9VF
	+Te7KQmpntV8BBTe36ADYshK7nneWilU2zNdHO/wdLl8wYsO5krNcA7D7OrPIbK6UhPVfl
	bZa/CJhRV/8gRPNkjsYlMWTbJUrtBcJDqGRNp03ig+4hIZ/LNvu3qeyCvOG0dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aCVjJlWLPS2BQM+CE4laMfFg4TX5P0PPpS6XPVBMz1k=;
	b=A8akmwyrlZNRTiWbfTTZ5fzF/v73sPbefoHGMMLKldyxPEAq7pQehC59eeGep7TJAwFXik
	9DzmCoq8t32mFX2vfzvYSdTSuDxMQe8F/f4+oMHD4CGREOCWxqy8fOVFQVwrZuCRdH1dpv
	Bct8aLofbTsRhh5iQwtgYllatZrX73RwKznnJyONUwwLXN6UL+pxbpy5NmNlRyFCa9+xbl
	bs3BYp1h9MObPjO9SZWipwFMwjiN4HcZDglItA2NbGYgA4+20NkMY/PfoubkzlhAckuKO0
	r1TfjsIR7ZSzf5WPqX2X5spu1m9LOGhfL9tk8Htqu43XJLhr91x8/bmuBEWa5Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013515; a=rsa-sha256;
	cv=none;
	b=DDoDkzwQNJjXag4W62Nrm2gfzxksqibwI5OL7uvYs4D3SImRn2HfxyINjleV2a90eijB3/
	nLFscEQs0Fxjfx+oYYLbiHKBpUcxZN363anGil7jyZbQw20TwdRToumAt/h0dy2FCC40rS
	ESW8oIJZyMth5amN88eLZbGbBiswOZBIBhv8ja1hqKNlFWn+5tCIeWE78Oa2DzjsGT9rM8
	sRRI87NlNY0P00tj5+k02r2aWE7/JMrvKHoLgBDpu8avVHgSo6XPoOyWW7sr6PptmCIzEt
	dzWzS2QiLjyeYTOJW+AnOrcVxMIkygq5bZUgEMFzzymr2HJYkeITWGOaO/aYqg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 00/13] fs: fixes found by file system conformance tests
Date: Wed, 18 Nov 2026 15:51:50 +0100
Message-Id: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIe7/WoC/x3LQQqAIBBG4avErBtIiYquEi1Ef2sWaTgQQXT3p
 OXH4z2kKAKluXmo4BKVnCpM25DfXdrAEqrJdnYwxkwclX1OMZfDJQ+OckMZ4zABIfbOjlTXs+A
 P9VzW9/0A406GqGYAAAA=
X-Change-ID: 20261118-fs-conformance-fixes-e768eedf4a27
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1760;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VUIRXISUBWNrsF1bkaExnTSnSV8GCvnXFLMAg9/Dd4M=;
 b=7OiSdePqVK5h2vfoGdZfOdm7Xw4cHkFXHJ4EqenNzMpFLAxh4l7utK4npnj582R2YgMUxx/xr
 QAFXfiIelODCpelAgy0u4EaK0ckJcYgA18zW+T2zttYNo0JvQvE5HKd
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065201_566920_4C12E37F 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  I am currently working on filesystem conformance tests and
    removal of the legacy filesystem layer. While this is not ready yet, here
    are fixes for several issues that the tests have found. Assisted-by: Claude:claude-opus-5-5
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de> --- Sascha Hauer (13):
    fs: ramfs: zero the rest of a chunk when truncating fs: fat: zero-fill files
    grown by tr [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-56.38 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.97)[99.85%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 26B1B201EDB
X-Rspamd-Server: mx1
X-Stat-Signature: xaq7xcsnz6zctghu97c695qn483mh4fm

I am currently working on filesystem conformance tests and removal of
the legacy filesystem layer. While this is not ready yet, here are
fixes for several issues that the tests have found.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (13):
      fs: ramfs: zero the rest of a chunk when truncating
      fs: fat: zero-fill files grown by truncate
      fs: keep the file size when O_TRUNC fails
      fs: legacy: return -EPERM when a driver can't create symlinks
      fs: uimagefs: allow opening a file more than once
      fs: nfs: drop the write and truncate stubs
      fs: fat: fix building without CONFIG_FS_FAT_LFN
      fs: bpkfs: skip the data of ignored duplicates
      fs: bpkfs: allow opening a file more than once
      fs: bpkfs: make room for the NUL after the checksum string
      fs: pstore: read from the file position
      fs: pstore: don't free the records when unmounting
      fs: efivarfs: zero-fill variables grown by truncate

 fs/bpkfs.c         | 49 ++++++++++++++++++++++++++++++++--------------
 fs/efivarfs.c      |  5 ++++-
 fs/fat/fat.c       | 57 ++++++++++++++++++++++++++++++++++++++++++++----------
 fs/fs.c            |  2 +-
 fs/legacy.c        |  3 ++-
 fs/nfs.c           | 12 ------------
 fs/pstore/fs.c     | 25 +-----------------------
 fs/ramfs.c         |  8 ++++++++
 fs/uimagefs.c      | 36 ++++++++++++++++++++++++++--------
 include/bpkfs.h    |  4 ++--
 include/uimagefs.h |  1 -
 11 files changed, 128 insertions(+), 74 deletions(-)
---
base-commit: 09dbb295e9107a256d73e218dca96f420f4e344d
change-id: 20261118-fs-conformance-fixes-e768eedf4a27

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Fri, 30 Oct 2026 09:17:39 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMhnu-0054mn-1o
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 09:17:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 71A0820295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 09:17:38 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="KDwP/PQV";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=KUlT5ZiP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793348258;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/QJa2ZI3Uk6H93LJocQVlk3gWMayiTR/0TYfLv6rhOw=;
	b=AAXtX8EfajKa78FYL02wRO9hOLIGYt64GrO7FZD3B36j8YYDcNghx9MPveHwFYav22x2zf
	hMx81ebg/iOH+aUrCDUI4Mdd7lCrzSXVPjDuRAMo4xaCDXsHTrB7ionG44s65WvImOvbfA
	5brLL8fuMCDsYWtuum2j/fCNhxItCz0jq1OlbOWcLciCuxnnhzDo5xizos6U4fMxxtUreV
	ne+WNrIvKcnM+NCTCJqWVRa9HqGf5yYnfFckSMNm1pQUJ2SjHLmqyD5mwzTSaq1QJJmTr/
	Ux3QVPTONRsHIOTEBVtXEfLHIBbjoqr+a8HOg62ocC0l7CEmiW/UbxKOFgOyqQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="KDwP/PQV";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=KUlT5ZiP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793348258; a=rsa-sha256;
	cv=fail;
	b=girYLSUDqlcvoPZXLAoK2FPe42h8gVVdcDbpL2gihRhyziXvvHW87HEFNnsKgZsvOyvnZL
	zrAvm4ZnoH20ePmqgV1bdUkFzcsSpFpJ1o60t2izIREi0/y8XBx1nITyl/VR51ZCelXlyB
	fxDNcowcxkuUVxKVZjFwfvhxspL4OCUCSEtVeDYczoNm/X7k0hod8jqF5RUCt+vVFKsAan
	3U5Y+AHR0TTVUbxFoHxhwe9UyEDfZKFcV3i0zdJTrAzL8UbqVjV7iLTt2edXZVKX1v1jpH
	n//ZlT52hE+BWDYRtGpupfCuN0GVMgF0yRelNCTc2/1gSe36S6mI/EReE2IDXA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/QJa2ZI3Uk6H93LJocQVlk3gWMayiTR/0TYfLv6rhOw=; b=KDwP/PQVGqsHbs
	NA4wkFtp9QtKor0dQUM5hVO/lkImBdzZgZFAeFdmJoJtKz8RfrwFQ85HC+U+wOr5YiYSd4LQpYT4u
	G5ssKnRgGt7xTbnDuVquAHCIYZLvQXeU8UKB1/TVUtFp98E4eVTG+AG8Df1T0Ehs6cxU1+nmlksmb
	EJnyFyBQjtsZt68xfe/Ktk/kJ77ozlxx8xFS+YDWWpS71dqCkcT+CXv88oknbcMK9/CPHPzVaIb4T
	KD8bI9nmmVyEW+mR/Qs02PN/1dEAIF03AymiXpfO82J3Hl6HIC3SaoffuKyxalY4uaJNg0UPALgY6
	aYlVrM/17qPEaoRTlI1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgqm-0000000Az0G-0O89;
	Fri, 30 Oct 2026 07:16:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgqi-0000000AyzA-33Kz
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:16:30 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3A70620295E;
	Fri, 30 Oct 2026 08:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/QJa2ZI3Uk6H93LJocQVlk3gWMayiTR/0TYfLv6rhOw=;
	b=KUlT5ZiPuaMtvZdtrqjNyRoY3z4TRXkWHLyeBNWAvyqw5VHQ43PhnYqtOSW1t7jTos9zFG
	gKS9rsJoceqdnixVpMBKLNIA2Zevp1Z3jE0+24+MNoc9yvsWSl0A5MQwVG336JUFCyenro
	aWAsp8eG2/ZUEQbWVcCIw265t3sThGE+4y+IfEyoxPpD1h+DGNMNUiQsKVbtiTa6wR/aaU
	rYlsbJbSepeUOrM0F3317CHhetPXhVnqrLL9fq2F6hS4e8jqCn4QyqosN1wL8yUdWOLxd4
	w4GyL4RLWqPTsqcj3WVscOgNZM4L3as4zBgJrxDAnKIdl7bcgN/B4is8X65X8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793344584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/QJa2ZI3Uk6H93LJocQVlk3gWMayiTR/0TYfLv6rhOw=;
	b=VYyc9jheTu4N4YlYnfuHCIksGfKkyHUu65eVocUi1DHXT+jXGBPBvK/YAg6I/tabM7cDK2
	5JR6NcBZzYJtWsEKh/EW/AHS/kjeyH9kqjQSwXMpVpisX9ElSpvzmoLTDvAFX92qv9GTFH
	Pj2n15dWwxFD7BRWTz/6vH0QsD1U9ePNJt8ZqwX9bVEAlIoDNP3foMomGfC1qrJfKWz/yJ
	Axq6eSxO0BKeNM3kn3GVQsZXdfwMCI+20YoZb0D/i3k8hd9CfIQwAomwTjBs77tctvHqu6
	c1DEgTfWvGKSi4uXX308D738IcP/+u1l0tie6FK0TXeN8JRtDgRkAX5ZuSer/g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793344584; a=rsa-sha256;
	cv=none;
	b=DIV3tOTqvgcjUFa+b4DwFv09uZ0k4Kp16Q6yyIuNlLMEVtt+jnqa2wN+u+kO2/3LqQVmdv
	2BsoNIgQ2u7BXukszuXMQuh9F1WRFan61DrnYCcgbSYOaOiVd++bkD0NPduu9TfqLbMder
	HZOKkIP1lHUBVSUQsOBqewE1GogqZYbyf389QfTH3elKHl8eQEU7iEEPy5vx6JF2vP3gyG
	YdFsvposJ7J5MKQunQFTU22NmRYW8Kfs8kKBuieOqO8GB8K/9ydXzxImlxyD+8cOe9BLnY
	OwtvyrVkjmvwLq6XB3iU6axu/ir3xYXSsL4icwXMmYXYp16Wh5rKlI0Ka4vmJA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:16:21 +0100
Subject: [PATCH 1/2] libfile: add file_exists() helper
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-file-exists-v1-1-34035d7392e5@pengutronix.de>
References: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
In-Reply-To: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793344584; l=3854;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=2r6H6iGq/FtY4VyUqWNnfhXTn2GL04vhZjYvnyiMe38=;
 b=8GiACmfK7mSA4ix8Ff8uP3992w29DDWb6ja8hTn/2ZULvWdas0FPfJtZwBVU9mkzD7jo5MCDf
 fD30GuzfKCCAXbggLuaLLScCa0JS2qHM8arksoZsMQK2ZUTD8nmy5IJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_001628_925036_D2202339 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Checking whether a file exists, possibly of a given type,
   takes a struct stat and a call to stat() that are otherwise unused. Many places
    do that, some with helpers of their own. Add a generic file_exists_type()
    helper that checks for a file of a given type, and file_exists() on top of
    it, which checks for a file of any type. Use file_exists() in place of the
    helpers of the sa [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Server: mx1
X-Stat-Signature: eyeenadts13k5jsrnxaj7ji6xk48n5ej
X-Rspamd-Queue-Id: 71A0820295E

Checking whether a file exists, possibly of a given type, takes a
struct stat and a call to stat() that are otherwise unused. Many places
do that, some with helpers of their own.

Add a generic file_exists_type() helper that checks for a file of a
given type, and file_exists() on top of it, which checks for a file of
any type. Use file_exists() in place of the helpers of the same name in
the fiptool command and the firmware loader, which would otherwise
conflict with it.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/fiptool.c |  7 -------
 common/firmware.c  |  8 +++-----
 include/libfile.h  | 13 +++++++++++++
 lib/libfile.c      | 28 ++++++++++++++++++++++++++++
 4 files changed, 44 insertions(+), 12 deletions(-)

diff --git a/commands/fiptool.c b/commands/fiptool.c
index a0e67ed439..d83362b96a 100644
--- a/commands/fiptool.c
+++ b/commands/fiptool.c
@@ -174,13 +174,6 @@ static void parse_blob_opt(char *arg, uuid_t *uuid, char *filename, size_t len)
 	}
 }
 
-static inline bool file_exists(const char *filename)
-{
-	struct stat st;
-
-	return stat(filename, &st) == 0;
-}
-
 static __maybe_unused int create_cmd(struct fip_state *fip, int argc, char *argv[])
 {
 	unsigned long long toc_flags = 0;
diff --git a/common/firmware.c b/common/firmware.c
index 3df1606ecd..c72fcbe556 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -236,11 +236,9 @@ void firmware_set_searchpath(const char *path)
 	firmware_path = strdup(path);
 }
 
-static bool file_exists(const char *filename)
+static bool firmware_exists(const char *filename)
 {
-	struct stat s;
-
-	return !stat(filename, &s);
+	return file_exists(filename);
 }
 
 /*
@@ -266,7 +264,7 @@ int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 	dst = basprintf("/dev/%s", mgr->handler->id);
 
 	if (*firmware != '/') {
-		fw = find_path(firmware_path, firmware, file_exists);
+		fw = find_path(firmware_path, firmware, firmware_exists);
 		if (fw)
 			firmware = fw;
 	}
diff --git a/include/libfile.h b/include/libfile.h
index 3f5ea5255a..72c736d301 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -37,6 +37,19 @@ int copy_recursive(const char *src, const char *dst, unsigned flags);
 
 int compare_file(const char *f1, const char *f2);
 
+bool file_exists_type(const char *path, umode_t type);
+
+/**
+ * file_exists - check whether a file of any type exists
+ * @path: path of the file to check
+ *
+ * Return: true if @path exists, false otherwise
+ */
+static inline bool file_exists(const char *path)
+{
+	return file_exists_type(path, 0);
+}
+
 #if IN_PROPER
 int open_and_lseek(const char *filename, int mode, loff_t pos);
 #else
diff --git a/lib/libfile.c b/lib/libfile.c
index 35ec631de8..2330d52d8e 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -745,6 +745,34 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 	return ret;
 }
 
+/**
+ * file_exists_type - check whether a file of a given type exists
+ * @path: path of the file to check
+ * @type: file type the file must have, one of the S_IF* values like
+ *        S_IFREG or S_IFDIR, or 0 for any type
+ *
+ * Symbolic links are followed, unless @type is S_IFLNK, which checks
+ * for the link itself.
+ *
+ * Return: true if @path exists and is of type @type, false otherwise
+ */
+bool file_exists_type(const char *path, umode_t type)
+{
+	struct stat s;
+	int ret;
+
+	if (type == S_IFLNK)
+		ret = lstat(path, &s);
+	else
+		ret = stat(path, &s);
+
+	if (ret)
+		return false;
+
+	return !type || (s.st_mode & S_IFMT) == type;
+}
+EXPORT_SYMBOL(file_exists_type);
+
 /**
  * make_temp - create a name for a temporary file
  * @template:	The filename prefix

-- 
2.47.3




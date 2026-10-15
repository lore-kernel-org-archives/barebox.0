Delivery-date: Thu, 15 Oct 2026 16:07:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM7W-00Dwxz-2l
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:07:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3B8F02027F6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:07:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kLnBANI0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HdhuaxvE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073262; a=rsa-sha256;
	cv=pass;
	b=Fh0LGoqTWPvPRnaTd8cyx//LNMND8EJRWm722zD8Q2PwLEgTrPRWkUJjW6QDMItPNKuyqr
	8DkjR1vjgEk67uNg0KMqdgTaZRcXtnhpSD/dRIvPfmKLdS3yHd/+Adtwj/zxckB6iQlg48
	RvvCa3xDtN7wzcwEyKj7Cc65uKk7fGms9gQPQl+LXZDOTR6j1fIjG0ob5kfHG+Qk1yfoCB
	cSq6mOqyNyyAgD+RY9ajX6hmIONu51nHfmkOAfjn5EmwTagEqyHx4nFCKUsrftpksa7VAj
	tltA5VIFWBUoeITReK5epA5zXDCQIlqpzu11z3g1vjlUd0OossjTd/N7rT8Ixg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kLnBANI0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HdhuaxvE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073262;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+dB6s6Fxq0qhQ1WXIiZQNEtIr9U8+cWXpLQO7zRSKK0=;
	b=ConHsuwEmTxUi6IuCo5n85sTBJSZpF3Slg/90KWcnzbl1RUpjjzQJIXDaBEMtf4Ia8hbyj
	4sNEU9qneL3AxjB0/8rfOJ2xD/cyZ5r53TeUdPXNG+B1Z4wKG46Y+09xp79q33rxtos7cV
	erSQnmsBnPH/FG3UNu6Hc8tE+dA2qOzyVbxdqZzDkpecxptMNVSstZ6SWM5QxUgWrRiP8R
	bs0tqjRb63ZIdsqJl5MpX4doEB1KXSdCS+hwI/cizilZV0PA/NiGtE1BN0cF3bjg+vVx1u
	1NhdmL8Bp8H2KxjcTuEOsHHDC3/ThuqXrbXrxgfHkaPtTDO8yLpuPFa4GxpolA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+dB6s6Fxq0qhQ1WXIiZQNEtIr9U8+cWXpLQO7zRSKK0=; b=kLnBANI0uvLjqzVa4xgqonNbc+
	wfIS6kLM8Towp9rS+zWLxAEEmxVVNwWhuzJNfBreTpFo6MdPvhUMJnvnLPr+sTK3ThDS0Ftt/004v
	9VIqS2b+FW7Jvh2uXB/8zV08/XWKRpEGoBq5eMqxhcos/+WqRy4OqLc/EJxuquspWdLz6IL/3xxqh
	m3LPQZvEo0hah60sP51STbOluAHXzmYI4Qzg3UiBXoE6sJbBpcU3Xns569eoMpXH1nvGHkGmDt8Tf
	w58zFGgd+iWEA6q3EStygQN2OERSzwsVaxUtP/ZaadZmoba2zjkmvIpyR9i63AA816fbmI/aUPOfp
	vOOMle0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM64-00000000KBN-1E8T;
	Thu, 15 Oct 2026 14:06:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM61-00000000KAb-0uUP
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:06:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2BF222027CF;
	Thu, 15 Oct 2026 16:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+dB6s6Fxq0qhQ1WXIiZQNEtIr9U8+cWXpLQO7zRSKK0=;
	b=HdhuaxvELlTV0ou4pSJN6Dv8gkfooxbH8ngNN2wZy1wOskjfzaOnkjpC0QaWudcNGTBZUV
	bHGjkIe/swFHWQoVZh3pXU95wfY6X4rKVg6w84ZI/2OrvJ91+KLUIEmSkWBtc7dau/TN4S
	FcXr/Xh8r/v5+Dtpm4fQo7zTRXQ6duIzcO6kkTnQGYICQO+68ULITw/pqmCdCWafDb72BC
	0pj/qplts3TosHiIMJVKjelK9cWD+TDecvu0wa6FQNTIlzmd0yFdyBWM3VPdVYmvWkYCp8
	3Oe3P7PIUKy3dxrS544IQeMTa3/QBS8R65wXs41oniyv5tAqFdA84VHtq3i9AA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073167; a=rsa-sha256;
	cv=none;
	b=MCYeWIzy9rOoY28TZJhuD2m8IyVNLaP7G46lvSbiq6e7U2mAOfpN2EhgkAAGzzVqBCL7Dq
	VHyYfff4nMeBOoxtsvs1CccRSrJJpkJtQeAmo7qpeiwMDMoIMBpvh66hZN7+EorHzMF/JW
	4sa3k4qMbSqoilZXASxfuZ79naIXAc7vNOc/K2tacVYsaw/dyrS8yOKbq8wrBTID+6vYzD
	3/A4xOnXgj9/R/8I4RdLms9QZyTOYFf6oeReal99HHWrBTss56YBNr2G+efky57YqQLynd
	SwCK+4+WeVDwgrqJneNyhp6L/+xJqfQiZbr9EIlbqAmouy1yCV3NwV1GkiWrKw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+dB6s6Fxq0qhQ1WXIiZQNEtIr9U8+cWXpLQO7zRSKK0=;
	b=DzaukUV/C/wyMXFeTNg5s1c5EV4hMAbArUvdhaoBzStKFMLjx2gq8V+i8fKXgG5SY6Y7bY
	8PdYMCYMvBfy3Xtc2/V+n59b3DGLz21cYoFTkbyROs+PLdETm16kt2538hnrSkt/KcGyRc
	P7LWIcAt5N1EKZBTMdWgWVqK0sKnHA9dfwi6u8oVu2/Ni5vieJ64VAtlrYB1QKpwSMqoF1
	aNJVYv107n+iKbH9mflxoJonZELAcF5HfDcHII/sh3ozZo6lwSLl3XsIwDSUet/jMQcWW6
	jLJ7FWXFSB5pVgsaK7VU1UUZ8GIvDH0Hp4YA9qZFLOkDfrBMYVUSP1sw1VOORg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 1CE2D7402EA;
	Thu, 15 Oct 2026 16:06:07 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] blspec: allow devicetree-overlay to be specified multiple times
Date: Thu, 15 Oct 2026 16:06:06 +0200
Message-ID: <20261015140606.1181053-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070613_411946_58CB8742 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> So far, every devicetree-overlay
    line in a blspec entry replaced the previous one, so only the overlays on
    the last line were applied. The spec only describes a space-separated list
    on a single line, but systemd's bootctl accumulates repeated devicetree-overlay
    keys like it does for options. Let's do the same and append the overlays
   [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3B8F02027F6
X-Stat-Signature: t6aaqc3fei7dagfuer5773ut7e44ix8w

From: Ahmad Fatoum <a.fatoum@barebox.org>

So far, every devicetree-overlay line in a blspec entry replaced the
previous one, so only the overlays on the last line were applied.

The spec only describes a space-separated list on a single line, but
systemd's bootctl accumulates repeated devicetree-overlay keys like it
does for options. Let's do the same and append the overlays of each
line in the order they are listed.

Add a test that chainloads barebox via a blspec entry with overlays
spread over two lines.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/blspec.c        |  8 ++++--
 test/py/test_blspec.py | 65 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+), 3 deletions(-)
 create mode 100644 test/py/test_blspec.py

diff --git a/common/blspec.c b/common/blspec.c
index 7802574880b5..ee2cf052f512 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -257,9 +257,11 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
 
 		val = end;
 
-		if (!strcmp(name, "options")) {
-			/* If there was a previous "options" key given, prepend its value
-			 * (as per spec). */
+		if (!strcmp(name, "options") ||
+		    !strcmp(name, "devicetree-overlay")) {
+			/* If there was a previous key of the same name given,
+			 * prepend its value (as per spec for options and like
+			 * systemd's bootctl for overlays). */
 			const char *prev_val = blspec_entry_var_get(entry, name);
 			if (prev_val) {
 				char *opts = xasprintf("%s %s", prev_val, val);
diff --git a/test/py/test_blspec.py b/test/py/test_blspec.py
new file mode 100644
index 000000000000..f1ab693069a0
--- /dev/null
+++ b/test/py/test_blspec.py
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import os
+import shutil
+import subprocess
+import pytest
+from pathlib import Path
+from .helper import of_get_property, skip_disabled
+
+
+OVERLAY = """/dts-v1/;
+/plugin/;
+
+&{{/chosen}} {{
+	barebox,blspec-overlay{n} = <0x1>;
+	barebox,blspec-overlay-last = <{n}>;
+}};
+"""
+
+ENTRY = """title blspec overlay test
+version 1
+linux /barebox-dt-2nd.img
+devicetree-overlay /overlay1.dtbo /overlay2.dtbo
+devicetree-overlay /overlay3.dtbo
+"""
+
+
+@pytest.fixture(scope="module")
+def blspec_entry(barebox_config, testfs):
+    skip_disabled(barebox_config, "CONFIG_BLSPEC", "CONFIG_OF_OVERLAY")
+
+    builddir = Path(os.environ['LG_BUILDDIR'])
+    rootdir = Path(testfs) / "blspec"
+    entries = rootdir / "loader" / "entries"
+    entries.mkdir(parents=True, exist_ok=True)
+
+    dtc = builddir / "scripts" / "dtc" / "dtc"
+    try:
+        shutil.copy(builddir / "images" / "barebox-dt-2nd.img", rootdir)
+
+        for n in range(1, 4):
+            subprocess.run([dtc if dtc.exists() else "dtc",
+                            "-I", "dts", "-O", "dtb",
+                            "-o", str(rootdir / f"overlay{n}.dtbo")],
+                           input=OVERLAY.format(n=n).encode(), check=True)
+    except FileNotFoundError as e:
+        pytest.skip(f"Skip blspec tests due to missing dependency: {e}")
+
+    (entries / "overlays.conf").write_text(ENTRY)
+
+    return "/mnt/9p/testfs/blspec/loader/entries/overlays.conf"
+
+
+def test_blspec_overlays(barebox, strategy, blspec_entry):
+    _, _, returncode = barebox.run(f"ls {blspec_entry}")
+    if returncode != 0:
+        pytest.xfail("skipping test due to missing blspec entry")
+
+    with strategy.boot_barebox(blspec_entry) as barebox:
+        for n in range(1, 4):
+            assert of_get_property(barebox, f"/chosen/barebox,blspec-overlay{n}") == 0x1, \
+                   f"overlay{n}.dtbo listed in the blspec entry was not applied"
+
+        assert of_get_property(barebox, "/chosen/barebox,blspec-overlay-last") == 3, \
+               "overlays were not applied in the order they are listed"
-- 
2.47.3




Delivery-date: Wed, 28 Oct 2026 14:14:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xM3Tx-004LEl-30
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 14:14:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8C5B9200AD1
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 14:14:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o26NZ762;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=E7pe+5uX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793193261; a=rsa-sha256;
	cv=pass;
	b=Ul9L9XbQhJxM9NRXa7TTkF9s+qNKu6tEjmPvwbGc+eTAocKRA4IBNuxUOodXTbTxwgQ6eJ
	0XoOo4bSGwYX9dqHy7WznTPhFd2TkgOdXefhaWmoc0hRqasAbiOFOgj2yeZQbbJ9Zqixc0
	d9Dv6RvUxzvtf288q3NIU78LVNsHhNxeuoK3c+SPBdRjdrbHk7V56JkdWEkxmwOxzQdjmU
	vyYmpYxnQ2q+6LgUuPLPMxrLKuKAxbZheWqpCyTysr9l8PpNRX3pBtYN7l71GjsJlGisiR
	Cq0Fdky1n/1XQ8a/6LWedKG4MYG/dDhnMxhJ76p0e4jRp9GhoU7LEsIlpVzL/g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o26NZ762;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=E7pe+5uX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193261;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/DZO/NpWohMwbZt31s2pWj1hF0NneEJIlf+SkoB2DLM=;
	b=OLoh6bDikmC+wzdiIO9u6k04+JdI2oZW234WSdrI1Mbw90EUFlKGVNjFIJyb0nph3FxB3s
	dDGAobxfLwhG+y8m7yfTp0BacHGq6oZ+NiCwyYe29yTQAo5f5cXNEIfhMGXIg1/kGM7muT
	IVM3xHC6XiCc8gQU7oHNf4h5oWWZ3HV8QUpjkdFP4wh+ib7ZM6iP/zZBZAjkPP6759Yi6/
	RGpzNFvIr5VihOho96x5C/uba2Ze3TTzAepGVnYFGtQ7kEmuxBucWk/DVpOkqq22d2kmJS
	Pp2Tl0uAnCBwBrcnxL4Bxp0L/NmjCH3grsmiLVJ2jEGAlqlA/lpVHQqfZI+ztQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=/DZO/NpWohMwbZt31s2pWj1hF0NneEJIlf+SkoB2DLM=; b=o26NZ76248GACX
	NsSm7c4tN37vui+GVRFwJuF47zP6WRwY7ruDnR6h45MtLEZbKMXFVz8BflFv0T3kGHTq0iuwSa6DU
	SROE27uRbUTN9XkmbmO9zkGwtP8nw8nboNqT5JoXe8Jif4AcvYhWN/4k+mdEtfdSTrU4PMbj7Z3uj
	juko5Gp8X8cNtaZa3kMOLQPayawwFNUhQVMf/be60bhdnKrTMKx8atZgRpDEVYoYL9HrgWnvjy6nw
	1BElmoo6MbhKygsMgacXzXREEV1fQNLg6kUbj+2rQBJYkZlpxSq1sRqgTDiL6NOOQexCvWhgM2F15
	sgvImCQfjgCcMyVWJXLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3Rn-000000071gW-2lrx;
	Wed, 28 Oct 2026 13:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3Rk-000000071eL-1mSP
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 13:12:05 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 183BD201BFB;
	Wed, 28 Oct 2026 14:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/DZO/NpWohMwbZt31s2pWj1hF0NneEJIlf+SkoB2DLM=;
	b=E7pe+5uXEDWseri9tDnydMwJRSP1sLGikCf1IjDhRb7dMu09Sdzfe9fomombsOLkp8buGB
	qfpSV9I8IlTzHZK1bcIq0/6/XGvH3IYwvewyfD58oS4U2J/rO2Z+mCoc6TkB6HWYFkCF3f
	vRsnAlq79srkC8KWHkmzr+4LqUevj5yt37igneJnYoI3TW+IvP2JJsBW6ZGUGLoZ1/DWMR
	ahY57RCaOOyHFiFXVaLfb8KoZOsK7+xcWrr50HGnVpZwmSfqHb5wCd51VyjRM84ZmZlKQt
	fDlgjjPefWJEv+0iiMiMU/wu1k2TJHFfuucl57V47z7UdVkqfO6TtdLldSLFVQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793193122; a=rsa-sha256;
	cv=none;
	b=fS8Xt+azLxPpsw73rCLC5q/xmmbUxx/fSh6SYdOYI1ZCHpqezYTNHKpmO7tV/Hk310c1qc
	kd9iuKpkdRAU3usMdJ2mj6/7aeR79ISDCyDKpAjVSKmpJ6QImSnHtMe23pYFnwnZS3H9be
	irHOfekpvRk56xpgnWRqSZSivKGuhmF7VE6nFyvGWBUQmWVI1SvPVDZnL69h62UdSNrbJY
	Rp3noCPcQEmb/DpbnBFQkTigNJpicyEo0SAokRuYGTRC7KG3P0qUYZJKUL/+R6/PrUjojO
	lLGy/IeHzXsDNVaRD7AM/P8TiGsk2/7yRy57h66eWI5LubWcopXAxtjZAfB2VQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/DZO/NpWohMwbZt31s2pWj1hF0NneEJIlf+SkoB2DLM=;
	b=FqTzqTn+cmLDTypWtIRvxZC+MoeWbtfEAf3AnEQt0gnIr3v7bEd6lfqNfe9erRdBr3Ai7W
	tLIziqQ337GIz/Bw+0F76pLbiEOrdDMk1XTO618k10qe2aiOasg4yAkgopoCpNNIQH+YJk
	MVlMcuW/tRVvzvnYiptSfu739OqIj9TqiZImpA4Y8w8D7qAj7PqzQE9kU+ny8v/gWKgbzs
	egsDg6yWxrJoJwXr1i4bxL7YPjyfraZvmDaGVN9KtR7u3/Jp0RzjvYh/c2WEXDM//Z01rg
	1YPyfWtpVrmLN0rCejqqmoGVPD0nbxLMNFvC5I6k9Y2HMaiSq/X5bEQuyOwEFw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id F2F42743F38;
	Wed, 28 Oct 2026 14:12:01 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 2/2] defaultenv: devboot: adopt same variable names as in /env/boot/net
Date: Wed, 28 Oct 2026 14:11:59 +0100
Message-ID: <20261028131201.411183-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028131201.411183-1-a.fatoum@pengutronix.de>
References: <20261028131201.411183-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_061204_622114_D17D69D3 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The variable names for devboot follow the names used by global.bootm.
    This is confusing though as they differ from what's used for boot net. To
    make it possible to use the same artifacts with boot net and devboot, rename
    the artifacts that are looked up: 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 8C5B9200AD1
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: jgbtaxoj3r33zfizduikfqnbqmkbrzdk

The variable names for devboot follow the names used by
global.bootm. This is confusing though as they differ from what's used
for boot net.

To make it possible to use the same artifacts with boot net and devboot,
rename the artifacts that are looked up:

  user-image-hostname  -> user-linux-hostname
  user-initrd-hostname -> user-initramfs-hostname

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/devboot.rst                   | 4 ++--
 defaultenv/defaultenv-2-devboot/devboot/defaults | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 5872973f5650..54bebb419b43 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -207,9 +207,9 @@ which the configuration script can source instead of spelling them out:
 
 ``/env/devboot/defaults``
   Sets ``devboot_image``, ``devboot_oftree`` and ``devboot_initrd`` to
-  ``${global.user}-image-${global.hostname}``,
+  ``${global.user}-linux-${global.hostname}``,
   ``${global.user}-oftree-${global.hostname}`` and
-  ``${global.user}-initrd-${global.hostname}`` respectively, but only
+  ``${global.user}-initramfs-${global.hostname}`` respectively, but only
   for those files that exist in the fetch directory. Symlink the build
   artifacts under these names into the TFTP directory and the script
   needs no further configuration.
diff --git a/defaultenv/defaultenv-2-devboot/devboot/defaults b/defaultenv/defaultenv-2-devboot/devboot/defaults
index 371051143268..b8a087b463b9 100644
--- a/defaultenv/defaultenv-2-devboot/devboot/defaults
+++ b/defaultenv/defaultenv-2-devboot/devboot/defaults
@@ -1,7 +1,7 @@
-# Use ${global.user}-{image,oftree,initrd}-${global.hostname} from the
+# Use ${global.user}-{linux,oftree,initramfs}-${global.hostname} from the
 # fetch directory as overrides
 
-devboot_default="${global.user}-image-${global.hostname}"
+devboot_default="${global.user}-linux-${global.hostname}"
 if [ -f "${devboot_default}" ]; then
 	devboot_image="${devboot_default}"
 fi
@@ -16,7 +16,7 @@ if [ -f "${devboot_default}" ]; then
 	devboot_oftree="${devboot_oftree}:${devboot_default}"
 fi
 
-devboot_default="${global.user}-initrd-${global.hostname}"
+devboot_default="${global.user}-initramfs-${global.hostname}"
 if [ -f "${devboot_default}" ]; then
 	devboot_initrd="${devboot_default}"
 fi
-- 
2.47.3




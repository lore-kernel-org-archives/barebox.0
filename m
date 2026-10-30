Delivery-date: Fri, 30 Oct 2026 11:55:22 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGY-0057JY-0l
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1E6B9200AD1
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2BrhLPJb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=b8hONcIJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357722;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Vp58StDj/vc6MFnbO30McrOfNj37vT3GjaexcrOE2Gc=;
	b=a/YIIpzwkIQvKY32xU55OBHQnDf2VGQeyCZTJ3AsbsVmXDUKwt/uPT3OBCVzUJiaNhQ1le
	xcumDKrFwvOrjJQWjAf/H06NQ7YusVxlXgz0G778MkmI03D1N0nfdMios5ZfSsGqRnJPgH
	xkK6Se1dQrVaDteeS32oSqRxZgMnFH5TrQry95CBiDnCT+m+Dt51e9Wrx7w6tub4AP6Jfd
	MUoCy9YkDBXPBOM7lHGaffzh7MUkV3iOncP2PO/T6lspm8I67hBekSzJjS7h7NldgTcKDn
	irHTSjuGwfrix3PpebZm3+rnxHzZhGZUzOHadsskAlDjGuzrEfRsM3N2LRN5IQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2BrhLPJb;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=b8hONcIJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357722; a=rsa-sha256;
	cv=fail;
	b=R1KZKa//P1F9i6X51ZcGFXe1jCbEiCQFquXrmKRIpE/FH8s1uZg/CzeTFwmMiOtBSO5SqB
	33W22oWWue/nFTaTaf0m2YpW78xYKpg4V9zeLOOshVmz7pRXAYqDAlFy6+j8s9p0H0pqRv
	dtBwhzh82fYOwFlS00XFVlNfmtm8hPQ56PswVMNNjChE1nH5INd7VXvLp7H71dQyuJjnID
	dBxhVVC8VF+YDUSv2o/S7wUQV+q8/22T766t8eJl40qjnX1srN6URma9ZcH9gM/6Y1q/Fc
	Vg4Whrn1nDzlub7uMHnlX2dkPBsanVqKkf3x31esvH1v4LJvxXqOzvki5UrHPg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Vp58StDj/vc6MFnbO30McrOfNj37vT3GjaexcrOE2Gc=; b=2BrhLPJbpFZ6Eh
	Vt4XQPvJVPtu/W4jK4z1fOd2DHDgkF8cXn3wsVa2BC9qgHrUiBViXIJ+ET/jgL+UOVtbHdQ3YML9X
	pSqth8VKErCC+fzefmU+XykmksEBTzSLh8o7qG8p6c+j3/IhPsUzBARg6f8mv89S7gUK5paYLZpFf
	KQkR1YXQDQYQuD4+WSJga62Vjq1KHBWH/lTmMggmoNUukBVOLKZ+JbNulOkehCLwSYPrm3c4zudDH
	vGMH8Vzd6VoF8ZnYlSybu2ULu0q/YJ/Fz/LbKJHzdLisbRTTNkuxFyb3//o51uOkUhOLjPWc1CXIY
	qNrdUoEwtXyukQo9uKVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFR-0000000BSul-1T6u;
	Fri, 30 Oct 2026 10:54:13 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFL-0000000BSnG-2eJ8
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:09 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1051620296E;
	Fri, 30 Oct 2026 11:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vp58StDj/vc6MFnbO30McrOfNj37vT3GjaexcrOE2Gc=;
	b=b8hONcIJ2zDFM2grLXiRf9aWo7+6XoVr1qe5wevNmg4IoA/p33qycWstG1/nGA3rYHVFUc
	akU8bH6ategSHxH/9JSIdCLKXUz1sz8RiySAjwbVxghzlhSsiZKLPtr7YTJcx7KqiuxTny
	wlGgOG6FFalgfqL1TeujZ9IXTwHPjK+iNr4f8cGQwC29MtOZMxNxvDShHmleFv9gHwCRDv
	3eN1Bxz5Kt1cEnv3cyBSTkZkuYZdhavyW6fZhH/h117OSZHxkf69yRPsovqfKsoeP58oOW
	YAsG26vXULp0Ab46UwNiNdrrpzmcDM1IFErNzIiT0THEEhAyXJ9y/suyEVpdRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vp58StDj/vc6MFnbO30McrOfNj37vT3GjaexcrOE2Gc=;
	b=antkHgwlV671D9G1wV0A2fZl+UZXmk2Sbt8ruUILaEDYWnM16Y+bQZvoLrMJoe+42HlGcX
	JvVpQgIplY+swDazgQU72utREwUwAs4rNkE/n6Rz0lXisKAv+FGZ7P2XzyYEOZun/wXQFr
	dEggB0vAbQaRFqCYN1ooa8Qqg1vRHCpwYme3hSG7Jx+HQ22XDE4ZC16XczEee0cxLeIhIs
	xcUUZa9eOStlCrhopOSbbMq710IbdugSHZX4IMWCiqVRQl4UY0pSLyG61Sk76ie9uS87gC
	lK4Nn+9W9kZmpFCKQ85sRiHp9Zc9HWDfqd/fB2doHtmnBrVVDzox0W2eHvX60g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357641; a=rsa-sha256;
	cv=none;
	b=WKsu3lOiaG0lOkixpkyzqBiBD3ogLujbrYjD9SEOENuVbtEmiDakfGtyI2Ff4ndFDPvu6D
	g3HeSSr/KzlPL1fVrLkR+UwIa0hAXuD72jutX58+bhJ2cV4hgYpeCMl1aPnyHf5XcvzrWV
	pF6b5T3aKFkg8cYfA1orthil3EG67OOHg8sS61bmrMcrwJFVs+9zUwquVHJr2M3RhyAH0L
	LL5JFtVjHLsgkmYlcuaFoz53kne5ahvoDEH9WEOuf1Shp2jVhvvF9BPZ00H1qSJO08zS/q
	Wh5N/d/knukt1pRpsKKuckLeFgshDaLknBSp+ii8ThBbiIYG4wePdFZ8xPc62g==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:07 +0100
Subject: [PATCH 09/10] defaultenv: don't use global.linux.bootargs.dyn.* in
 boot entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-9-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=3372;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IJfYUC6Y32LYeiqXpNb3Sno1+bK+k+Req7ksZBLoiOM=;
 b=SxUjtXj0ihsyCCtEpvQ++7cZkV5QVo79nKsbYXCSz3Z8e24tfLzyRIbjOT+IAJ+1QCWgpBVAg
 towXOGYx1YnDV7Fdev9JgPquyEX0+WltH+231VntvjXmnX5KTW5HWw/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035407_988561_B3F70656 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Boot entries no longer need to put their Kernel command line
    options into global.linux.bootargs.dyn.*, as boot_entry() reverts all changes
    to global.linux.bootargs.* when the boot entry returns. Use p [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Stat-Signature: 9kcubhotycmqom6kbufetmist89oug8p
X-Rspamd-Queue-Id: 1E6B9200AD1

Boot entries no longer need to put their Kernel command line options
into global.linux.bootargs.dyn.*, as boot_entry() reverts all changes to
global.linux.bootargs.* when the boot entry returns. Use plain names in
the net and dfu boot entries, the boot entry template and the matching
example in the documentation.

Unlike the dyn.ip and dyn.root variables, which bootscript_boot()
creates for compatibility with existing boot scripts, the new variables
don't exist beforehand, so create them with the global command.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst            | 5 +++--
 defaultenv/defaultenv-2-base/boot/net           | 5 +++--
 defaultenv/defaultenv-2-base/data/boot-template | 2 +-
 defaultenv/defaultenv-2-dfu/boot/dfu            | 4 ++--
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 158aa8b313..85f7694fe8 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -442,9 +442,10 @@ If the preconfigured paths or names are not suitable, they can be adjusted in
   fi
 
   nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-  ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
+  global linux.bootargs.ip
+  ip_route_get -b ${global.net.server} global.linux.bootargs.ip
 
-  global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+  global linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
 
 ``boot net`` will then retrieve the kernel (and also the device tree and
 initramfs, if used) over TFTP and boot it.
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index 8408ceaf39..f025bb4098 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -23,6 +23,7 @@ if [ -f "${initramfs}" ]; then
 	global.bootm.initrd="$initramfs"
 else
 	nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
-	ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
-	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+	global linux.bootargs.ip
+	ip_route_get -b ${global.net.server} global.linux.bootargs.ip
+	global linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
 fi
diff --git a/defaultenv/defaultenv-2-base/data/boot-template b/defaultenv/defaultenv-2-base/data/boot-template
index 689d98e1e9..b63eb86d1a 100644
--- a/defaultenv/defaultenv-2-base/data/boot-template
+++ b/defaultenv/defaultenv-2-base/data/boot-template
@@ -6,4 +6,4 @@ global.bootm.image=<path to image>
 
 #bootargs-ip
 
-global.linux.bootargs.dyn.root="root=<rootfs here>"
+global linux.bootargs.root="root=<rootfs here>"
diff --git a/defaultenv/defaultenv-2-dfu/boot/dfu b/defaultenv/defaultenv-2-dfu/boot/dfu
index 682091141e..56a88ae0a3 100644
--- a/defaultenv/defaultenv-2-dfu/boot/dfu
+++ b/defaultenv/defaultenv-2-dfu/boot/dfu
@@ -23,8 +23,8 @@ if [ ! -f "$kernel" ]; then
 fi
 
 if [ -f "$cmdline" ]; then
-	global linux.bootargs.dyn.dfu
-	readf $cmdline global.linux.bootargs.dyn.dfu
+	global linux.bootargs.dfu
+	readf $cmdline global.linux.bootargs.dfu
 fi
 
 if [ -f "$dtb" ]; then

-- 
2.47.3




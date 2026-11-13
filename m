Delivery-date: Fri, 13 Nov 2026 08:23:48 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRldU-00AKz4-0G
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:23:48 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DD2432020ED
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:23:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZF9KFshM;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e0WVcD2+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554628;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Z1HStgkcoEvRNyoONEnqiBcSI7iLMc7BeOqmilE6lwU=;
	b=Bix5RtY02NTtavdspv0l5YqUIcxFl6OfcETC7dqpQjEDzinKaVCCgt0Alb8QyRMRIutBE5
	U68gN+bFlhXwGSu5xms6hlkpjKRMmXVTA28M+n7Xacm1Na7sNszMA0BxMO+sRuif9KQ2uG
	HAWRDGrSe/tEorzeqkMDS8Qi5E/FkpRFB9obVq53xCzGy1PfrtOd5ryv1sUXpR+eqn5vrt
	TsQ0cMgRH9hJHv6DB0qeUjnSz4Z6bdNZ+PFcij8H/9Axaee0TncoLawp0jDLqfjfMt8yoD
	zcxyne2UEt9vdH/lLJMlXCh704cfrwgjqJU9iOSwSmySX65H0lhyiXhIaN3AEA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554628; a=rsa-sha256;
	cv=pass;
	b=SXQIdcaTn1m3rdSj03oVvmsjghquga6BUzgwH+SlzD+DQ3ER8g5/7aMmXUiPDWoMP8Cpbx
	jhYMFL1ZbFuOugzvKZiWcir5vtXLSUhx9/Lch+dufbw3ib0oirvkHGW8Cp1kHbWyfjm528
	lP3eMqK2107Lb38X9fzDxY9ZWmAQFKPuvvY2eJz+Aw/RZ9u5ivwxe8GeSo33MD3yMaLR81
	PsF7uIWd9ZI+luJFD67k6SQu1Dxpn4XjvS/TOpqP87qswnR0IoSxRhkwVPGhpa6wuaGVgR
	+rlq8hqWORZvQ7Pjq5PsIr/y+mRU7CsKL0N/WVmlA3QGQfjzwTceSuW1/9XUAA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZF9KFshM;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e0WVcD2+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Z1HStgkcoEvRNyoONEnqiBcSI7iLMc7BeOqmilE6lwU=; b=ZF9KFshMQW8i63
	AqvKiAQRdYKHPkW1igTdK8BEh2ARYlHOKNA0ZhFOZAzfh9TCkIIdliANUTIOnhOTyfwYQD3nFJDxe
	ieLDy627MFdwOG7J4G0oLfNt2eXUizPhBkLeTr6OGiOXOP2FeCrXxx50+pO+BwXUOwpCM5uaQG2S/
	F5Qj3XiVjDrs+UOZdqw4E/i/Yihd8Eupm5pk+ZpdsI8quXcnsfBwHLaj15vUcw6du6pH2wCya4XgJ
	1FzpbtdbrMy5ZO22t54fLC+z42KoEudVzIVzKEHo6rsopZwQcWzfVWd+Gv3FcXYgWrFzeK/TNFSBJ
	uJrjGiU6ttiM3cebBYBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlal-0000000BtAl-3bvy;
	Fri, 13 Nov 2026 07:20:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaZ-0000000Bt23-1c37
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:51 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E6A4B2058D5;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z1HStgkcoEvRNyoONEnqiBcSI7iLMc7BeOqmilE6lwU=;
	b=e0WVcD2+HQkya5vPM/X8oYQdcVbWjAR5FF5rKkCQm4OE6AVPveFGwjZLBhxjGnMShF8/3O
	kiKa1kkDb9tq2ZiCZL73ZO0g/XzflY2q7ibCfZeEEssvPhnUW4U4VpChx20JnGv3lDKMJk
	LTUoPkVeqoe8aArWr0WtIYpJTJvCgmUA6IOIUWKa2WyxTx0wljTcKioBtK2SxZ7rH6vtd3
	PAAjefi7VjOYH3DCV5hPrkTCXoA7Ij3rp96+oCXgs4VtBCH9Aq6xCucrbTRpM6RS/HZCRk
	6nB+3zrGChKXSE0Ti7+VUxopUZEa2piVkag1CzZMND8j1cC1Dfk++FetA/OePA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z1HStgkcoEvRNyoONEnqiBcSI7iLMc7BeOqmilE6lwU=;
	b=IMbEzV1Id0cZXqTgdM77gYqbs20LjI2UeJJ2tCI9g2mJsDfexZeg5u9w0SM+hBLw1wy+XQ
	02LM/bbfOcfltx/zcEFDSO8UibCg3dkERrlRehHMAnW92bOpxB+s3DPqsSygtkCz1SPFDN
	p8RBorsivZNErCKtYvkNUy6kK4XirU/cmeNlK/gyJ5Mrq2fONgemdYiu3WL5i3Xhry7UW1
	AGjmnC9zHrmyIVjB7HGi8JlYm8+LXfVv80dEGZbbyYPObA0WebXFmV9grhWp3oc5n6xVNZ
	w/XmuP9xtiSKvUR4/IeE4OFVIeyTiIKCMb0bL17pYXhSTtg2XMkNSC6neKcmFw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=D5qRRK0ev9AJUo3YfKs43Uy/NMz1oBDOfxqEJZUdOyfNKnobjg/Hvo1oA+E9g7ius8O6Vt
	euBgGrS7fzMYiUdDFm1JYrnCNZ4fMrT9RlH0j25OBK6EbvmgTeb4YrZOyDcX42yHkhr2JN
	71eYUv0ViJEt03YU75rqhI/DFCXDu0hJf8W1iYTaxqnxGycEdd6LHFxemKvBzyLg3xqm3v
	eHsaxP3jOf2oM3qgLA6UzSYzToYZ5KMYvF+ULkqrgTGCo6OYMtubrifng5HDLu29zwXmKw
	fQ/ZVwGFkUAk0+Ak0RS5KN2wlhr+v+ePu+hScny9cEc3yCKvPJ+35dwG0twjgg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:43 +0100
Subject: [PATCH v2 8/9] defaultenv: don't use global.linux.bootargs.dyn.*
 in boot entries
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-8-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=3388;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=I/P77tFpKFZjGr0r6Ykm4vnNNwYMXoN4rRiskBV2C7E=;
 b=VpG3b32KPzqI8bNL4mHBO/c0ysVlov9TfxxJh7nvYgdj9PteE00q0o+KXanLgJlNzFTMBvxqO
 bgbJ9CcrtygA0BS6rmNP7t1nxSnbMosPfttZKfiha21losNKAleo8nQ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232047_667709_87E9E7BF 
X-CRM114-Status: GOOD (  11.43  )
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DD2432020ED
X-Stat-Signature: 1xt9j3uyn7bsrcaxw6g1kjgn1iq6896x
X-Rspamd-Action: no action

Boot entries no longer need to put their Kernel command line options
into global.linux.bootargs.dyn.*, as boot_entry() reverts all changes to
global.linux.bootargs.* when the boot entry returns. Use plain names in
the net and dfu boot entries, the boot entry template and the matching
example in the documentation.

Unlike the dyn.ip and dyn.root variables, which bootscript_boot()
creates for compatibility with existing boot scripts, the new variables
don't exist beforehand, so create them with the global command.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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




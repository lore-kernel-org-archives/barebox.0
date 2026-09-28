Delivery-date: Mon, 28 Sep 2026 14:43:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAhs-007IFx-19
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:43:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CE8F82004BB
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:43:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="BG/6lHiw";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=MKrmlk1T;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cudFz4gT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599424;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=J1m5v9He2P56QV+UQYwM4s5st1wWOS+crOPEI9WJYjI=;
	b=OoyRRH19a99VMypB6lCTH6FMB+AjUQ01gZB1fc7+OKS4ruGv11ZbGmuMbBnLdmo2fgaiu4
	SVbcrdlmt1KEqrDb6RDzkYfvjo3bmRjVvZQtUUg1EhIVmUOOlaJBJoyzK3ik59kUFYyUNE
	njzD7mB/w4qc3T4ATfVWMPut+tQjte+IFmS7C5jb8olH0Q+C6zb5C+8PuyZPuOE/WdTrwt
	FoXFLi3VcLcfGe/hAvesZ/SivFPCsvO5w+VCyJJx4AXhpQ/XviCg/fZBUZX1D/F2wvONlV
	8OsqLsziYQ7XwQt5rvPjHcA88uwwx1Ty+yEayUEx3qlLpMYvVqBrRV3AuhfVMw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790599424; a=rsa-sha256;
	cv=pass;
	b=gdJdbbeRkVEMSzF29P55Ox+SmpeC5EsubT9rx9oqJgzhHBOS7RMiwAD/5ZNrUIqVMiT48p
	EfErGU0TXIA+XYRK49bqGOJwlTkwef2ds2eREUsUBZV3Q7EqGtrBHjXabJ4mzwfGdX0YrL
	EFx1MZij0s7B7DEvxnbC4zsayeriNen3HMBumOZzqY46cTTAMVbfpU0q/kAEnzFVpa6Vz/
	lIIITjBiYacWAmaE2sInxZ9I+gx0I2zRm8lC98tNge7EWdiakm7FL6P7CxTSva4Cyu4yzJ
	gyF/C5qUby5H8XVJxTQjVZ54L+OKZsHAVdoE1j3LDWRwkGRnNED8fqfYI4stWQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="BG/6lHiw";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=MKrmlk1T;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cudFz4gT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J1m5v9He2P56QV+UQYwM4s5st1wWOS+crOPEI9WJYjI=; b=BG/6lHiwvZK0n67XHcmOpYUicA
	DsEpIzy98p7JHDF6ycSWUk3NSyc2C5/n7QH1lpKGICScMKNuJCXFx4UTXgwWl1D3AJh0qMjQvOqaW
	Bhl5K8rZolIIBLNLUkprt+ejS/m1aJD4U1feL1wDjbvyeyIOV7p8+h9pSghnGtyJRekVdC3K52q1w
	ebkR4iWuyUoOWCtziCV3ScLynCEVn/hupg3LlY95vX8j49Z3AkzgPvbR4TXwEDNxgit6YAcbRKZam
	Ub9neewGjIXoZDgAF8qzlMXmNnW3YOs3DLsOYUvC8UbGUOEBrgkMPKWvoNSfRextMvRXI7PqxQfBw
	bpBASUQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wv-00000000S5V-3VPy;
	Mon, 28 Sep 2026 11:28:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wt-00000000S29-0qA6
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=J1m5v9He2P56QV+UQYwM4s5st1wWOS+crOPEI9WJYjI=; b=MKrmlk1T064ootEE0xDu4cb5Jv
	u5EE4x+E9o17TvqPa7yMnvCJHym3aB/4RrU7FbznvGPcU1kAlpNc6yZo8Z13LLAB4sSPxZvABXaA7
	UZ2xs8tUKJE3mgU6UuWvwEnOivy4csMNGpVII98XSEr1ijC/mTsash7F4yiezYIoGF5OXeEKBB2E4
	ipNjg910GSydi1rlWGkG1OpQsvLeP43KEzJYlO+EG5QlqViNRMM8p7M2yzBYEtwVECSrhxviF9b4y
	ozjXJe85/S+9aZZw3VbpnbJUAdLhMPOirJOBy1X4HHWC/ldJhAimK6wsV3mE8hAPImKgI36CAY8Q/
	VIhumrnw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wo-00000001PlS-0mAM
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B044F2007E1;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J1m5v9He2P56QV+UQYwM4s5st1wWOS+crOPEI9WJYjI=;
	b=cudFz4gTx5nPP/Ov1If2nvHSRxAxzhhqCCOwI9GUaVZa+taNFPi3wsLQTL4W6feFXmmqXJ
	uP1yCAJZoW0g00mCIIyDV54FS1/dxKuepSpfWuBSD4os6Qy3EW2+ENCQ5qmNffF3XGLsV0
	KUA56ldutVvw7QEAkVoEDiaccr7+tZTDJI2erQZ/Tbk7R4du1HnF9oJtBv988hJXJ1Nhrp
	vkaEbVLb3EAaJyNsBAM42mfCr8x/5NgMnIoJFN6v+uVzGch42xhD52ffkXZgGg0pOD0DfQ
	E87khYArZ2X9vOz6dZue8XZPvOoTrPuk9NzP133bOcRI76L2BPiGZgfj58Qheg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J1m5v9He2P56QV+UQYwM4s5st1wWOS+crOPEI9WJYjI=;
	b=EykIVXJHgACpIj7CgMZKebUKIOaLkG+YQlti6PWDCEtIMpRs2DMWvO8Q5tj2ffK1b4lzFA
	73brntKE4Jar2umy7ZfqEWbVVXemYf/HqM015rWVkP0dqhqRE+6jZ4MnZCFLEMn1oLILGC
	dWgFXIczuheGNcYN3YxSJCA/Njc2y0wZSjeX3uGrOAaGZBYUMgtJqJlZ03ejwNitNrpVav
	KUggGlCaOwrAVjp+74GHBO/pxcMdJ0+aRPFSos9xW8p0ov0sjc4Y5HYD9LLdzjNDgwlnxw
	NwWykKOqF7zHCci1ktBB318aYLV97/Lc72jlMzSCUsQ5Gt4WX8179LlX4ktXtw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=XKl0VJ/WTc+Qq9fVIDD1fleKqyE/Khjjbq4U11+cgz0w6xQZ+t5z6nmOi7h00d1pz6cQHo
	eKuR2XBn2DsuxtD1GRy8UclstzeuzRUeSrF0TSa2fTiMVsmvDB3gkZzjmD+NqfwiiiXi4X
	z5GxPLWou8O0+9veNMgXz/GIIxtCr6EeDpIeFkZtFrMDDDs689ROZMgPmQ1SGa/z5I6dNj
	DwQXUE+51VdLQ7h6VJHA0HOZ0gfzzoNU9/EUNL8j7sTY9NJTSWE1a+FGpuTqn9s73BKI+U
	urVxg23y5KTWH6TKFwsKyj3r4w/EZoSdlb/DBSP2z3k3M5mCHzZu3/xSNOQnQg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9024B74D045;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 01/11] Documentation: security: unnest hardening sections from dm-verity section
Date: Mon, 28 Sep 2026 13:26:56 +0200
Message-ID: <20260928112731.1271094-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122814_468879_F6ACA974 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The sections on
   disabling the shell, on the non-builtin environment and on avoiding file systems
    were meant to be subsections of "Ensuring the kernel is verified", but this
    got lost with the addition [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,m:a.fatoum@barebox.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: CE8F82004BB
X-Stat-Signature: hrzmz6zmzp9y1w8xwfu5nw4wi3kdkx98

From: Ahmad Fatoum <a.fatoum@barebox.org>

The sections on disabling the shell, on the non-builtin environment and on
avoiding file systems were meant to be subsections of
"Ensuring the kernel is verified", but this got lost with the addition
of "Prevent the kernel from booting the rootfs in verity boots", which they
have nothing to do with.

Move them around to fix this. No change in content.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 54 ++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index a7b2cc61c9b0..657bcd690b8e 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -69,20 +69,6 @@ Firmware) should happen as early as possible, i.e., within the barebox
 barebox will run with elevated permission, which greatly increases the attack
 surface.
 
-Ensuring the kernel is verified
--------------------------------
-
-barebox can embed one or more RSA or ECDSA public keys that it will use to
-verify signed FIT images. In a verified boot system, barebox should not
-be allowed to boot any images that have not been signed by the correct key.
-This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
-and disabling any ways that could be used to override this.
-
-For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS``
-can be used to compile well known development keys into the barebox binary.
-The private keys for these keys can be found
-`[here] <https://github.com/pengutronix/ptx-code-signing-dev>`__.
-
 Pinning the FIT configuration
 -----------------------------
 
@@ -96,21 +82,19 @@ booted without altering any image. If that matters, ship only one configuration
 per FIT, or name the configuration explicitly, e.g.
 ``bootm /dev/mmc0.kernel@conf-production``.
 
-Prevent the kernel from booting the rootfs in verity boots
-----------------------------------------------------------
+Ensuring the kernel is verified
+-------------------------------
 
-In systems, where barebox loads an initramfs that sets up a dm-verity rootfs and
-passes the location of the root file system on the kernel command-line, make
-sure not to use ``root=``!
-``root=`` is also interpreted by the kernel and can lead to the kernel mounting
-the rootfs without dm-verity, if the initramfs failed to load, e.g. due to a
-different compression algorithm.
+barebox can embed one or more RSA or ECDSA public keys that it will use to
+verify signed FIT images. In a verified boot system, barebox should not
+be allowed to boot any images that have not been signed by the correct key.
+This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
+and disabling any ways that could be used to override this.
 
-The fail-safe alternative is to use a parameter name understood only by the
-initramfs (e.g. ``verity_root=``) in all bootloader scripts. If the
-``root=$dev`` is fixed up by barebox dynamically, the
-:ref:`global.bootm.root_param <magicvar_global_bootm_root_param>` variable can
-be used to customize the name of the parameter passed to Linux.
+For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS``
+can be used to compile well known development keys into the barebox binary.
+The private keys for these keys can be found
+`[here] <https://github.com/pengutronix/ptx-code-signing-dev>`__.
 
 Disabling the shell
 ^^^^^^^^^^^^^^^^^^^
@@ -154,6 +138,22 @@ Especially, :ref:`bootloader spec files <bootloader_spec>` should not be used
 in verified boot setups and signed FIT images **must** be located outside
 a file system and directly in a raw partition.
 
+Prevent the kernel from booting the rootfs in verity boots
+----------------------------------------------------------
+
+In systems, where barebox loads an initramfs that sets up a dm-verity rootfs and
+passes the location of the root file system on the kernel command-line, make
+sure not to use ``root=``!
+``root=`` is also interpreted by the kernel and can lead to the kernel mounting
+the rootfs without dm-verity, if the initramfs failed to load, e.g. due to a
+different compression algorithm.
+
+The fail-safe alternative is to use a parameter name understood only by the
+initramfs (e.g. ``verity_root=``) in all bootloader scripts. If the
+``root=$dev`` is fixed up by barebox dynamically, the
+:ref:`global.bootm.root_param <magicvar_global_bootm_root_param>` variable can
+be used to customize the name of the parameter passed to Linux.
+
 Configuring barebox
 -------------------
 
-- 
2.47.3




Delivery-date: Fri, 30 Oct 2026 11:59:04 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkK8-0057NR-1X
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:59:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5AB4420295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:59:04 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=blDiD1TC;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CNi7U2f8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357944;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UHcPNMI7OcVbZfPUTDrP6tpQOVMTgvkoNR44VoAWbvM=;
	b=PFxF4IXKx7BT+PnjS6FMF+JFWgGZ5aN98DI3r5vLBQ0j4Se8+Gk04n+4FliDNP+e4EfICZ
	ODojCi9M1KvrI7ovdiXiSZ8OFGYsieENXN6Gmcps7m0vfObMz/AK2ztUmkaYGzRbahZ+w3
	GN7yD5IeG1N2Mcwrvfn+bD3lcmSA1oGs32eupiPcxPiwkhcfPdRKQ7qEzCqYiyI9r8ykRV
	kR/JAL4m9KaVyfneZYg3wSgrr54PGzZ2UFtfB7Xfc1VQ6kJ8RBGiN0VvGRm6t5mTTu9X4r
	G9qSx32ob7EmqJwsBrOwAxeZXF0K97Me/s/OrdpEQb3JiagsL48IP4cV4ox7bQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=blDiD1TC;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=CNi7U2f8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357944; a=rsa-sha256;
	cv=fail;
	b=CNy2Al5PZxkOFBWi0Ora85Qr7VhHqaP6VMDm4Qwh2fsExlhzUw0htmVARIvSkUb/zsnbWt
	bWgjzOiEa3YQM++k9xLYHmdsDExbty0caYTR1iocVgH3YaFUAkVYVFlsW3+rFwdhRGN4mA
	eJFVnXyqvV9AAtcNDdFDd3cd51/nN5Ck/qBo3wWVt6uuJO6au4y4/kq+cOIiexkA7oJk+5
	In8DTzRr2DHn83jcXZ/gYNANaV8SzQCkqGbKMq6mwZ6ONqkm9ORlZSWd+gBHqhQg4XBcHo
	7TxPEDX5/d9KBln5tsT8dug/C+cquf0r6mtGGX4nukWRlOYxPVxgBsUC99nSyQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=UHcPNMI7OcVbZfPUTDrP6tpQOVMTgvkoNR44VoAWbvM=; b=blDiD1TCXeTGrX
	g+V0aG8vRgqa42EUTLdEAOcZFgOEfa70zAcyY+KymGkkco3T0QJij+MG/JOK7k5eJ9s96EJMFDPuw
	7a7zHGnwy4n3DnOHIxRO4SLUSGJle+Jnmp4JCno0I40uj4ge85pgMoqYmsP3MLCRSxQd8dGu9+Rg2
	zwLypXolXeti4KjGRYZWmnrkU5BB85djsTHcCsjosfL827CgeV2EVsIZcCvb+hjhbwzxJMOUDCQgA
	aGmbdiJzFx5b/5oPMg3DSTVR2qCK143M7d6RABTXSAL1TjgbXo+ACzg5JHNy/uADY+Cq6YTHvoZNk
	TNtJEQCXrmONjzYjjn1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFO-0000000BSrV-2Y3o;
	Fri, 30 Oct 2026 10:54:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFK-0000000BSms-41pM
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:08 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 031CB20296D;
	Fri, 30 Oct 2026 11:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UHcPNMI7OcVbZfPUTDrP6tpQOVMTgvkoNR44VoAWbvM=;
	b=CNi7U2f8Jy4RfSN1xVp5I3mwyUl7g0qblRyxZN8iyuiXF9I4p7gAE4F8IioMHR38rmOG/2
	ZMFy9f9QDvbd/Hly8dD5xCC0ZYJKm+/xS9YBiKGPmhXloSBzBe94Srwh9RiZinwUg/oGuW
	lASsWLNLJvQ1GEBx6Ka52FMSt3b1F894DDuGfVhmbLOIhilVU4iU7m6oe3kpCNc3asJV4I
	+Ty4mkzuabR1bO8sjHESuRuXXO0fy2YNM4OTrQTnzLYQOhaKY8XEul7GgWz/32HkD38aLt
	/rgojZNWes8y1JO2vi4OXbNJWKbCmLjjHhIfXQjuqGTgFxcWP4g3E/eOjPPy1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UHcPNMI7OcVbZfPUTDrP6tpQOVMTgvkoNR44VoAWbvM=;
	b=CWtLI3vCSS2V0uv+K5w8UreSACSQ3uJm6aZiT5VUGhrVHUeiH8w2qtVfDp3AZfJUPfdlb4
	C6Q1fHvFnNC+dmHX0UVARu9PV09Sp5zzr0rXFn/RyFjerXR6S/Zol0iFYuo1UT/4tse002
	0q2pk78BcpXpkGa9KvP0lAl7e5zIyMdOEV8dEPUk3iIHmc+iRYHKMmds+IF3yzJaOSkvAt
	vPaN8F9zuYWFOMMkFKNaxhjDdmBOZ+8e9lHYBGePq4dDfxC0lKVAQ/g3XlGLvDjvD7tlyA
	4Ciahi03PMJCcF8EHK6feN8lb/ZoIma12iOIp1vKdE5TiCETyDsINF6yXsWMUQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357641; a=rsa-sha256;
	cv=none;
	b=GVRbLixBxXwU+6u/oZsRdQe7wRc1/MQOgedHaJbPS0JYAZacI7vKF1bOlf4NaeVQ/tSLVx
	jE8qtD1h1y+nbzbTi4fyoHcqcCRc8vreZDbN4PyX8zxzSKWqmgeh20BCPV8dlMjhcruJvR
	UlBR+ix4u4AHzmZlpB4ppBRK0XN6+NGwPGJyJmbg/J5uuBTP9kcahxH/kcDcWTYVmV64U+
	iPIIeLu0DTzoXsGgmHDI6GEctIjbHfen9Eq+72MCY0wctza4riPjV1h1jVrnctaosYum1J
	lT3rtUGxTWRhwOBB69l0qQ+85BUOfSdPXLiveWVpdkEv+3zbrQaLx3TR66lj5A==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:06 +0100
Subject: [PATCH 08/10] boot: drop the dyn infix from the bootentries
 bootargs variable
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-8-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=1729;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=16ao1fjQkspYmX6t+bguG0NABMjr78+G2GEgLSuoRK0=;
 b=N0jJgdWn4rkkJ81n9jf/pyZJ9Qjse4A7aAJF+3yTk4aLZkPxxNn1j2U43r/VwEuq9LHbhNoi1
 sXnl6jEY4lqDm9pawPkEbYgyWooUzYXGmI742tbqN8QO9xDX5r0XwBV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035407_163119_40F0377B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  blspec and extlinux pass the options of a boot entry to the
    Kernel in global.linux.bootargs.dyn.bootentries. The dyn infix used to be
    necessary for boot_entry() to clear the variable again after a boo [...] 
 
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: wfac3f5mrmk1fxwu7cxqbpis61go4qkx
X-Rspamd-Queue-Id: 5AB4420295E

blspec and extlinux pass the options of a boot entry to the Kernel in
global.linux.bootargs.dyn.bootentries. The dyn infix used to be
necessary for boot_entry() to clear the variable again after a boot
entry returned. Now that boot_entry() reverts all changes to
global.linux.bootargs.* anyway, it no longer carries any meaning, so
name the variable global.linux.bootargs.bootentries.

As the variables are concatenated in lexicographical order, the boot
entry options may end up at a different position in the command line.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c   | 2 +-
 common/extlinux.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 0552e93b79..e2fa4956e9 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -128,7 +128,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	if (initrd)
 		data.initrd_file = basprintf("%s/%s", abspath, initrd);
 
-	globalvar_add_simple("linux.bootargs.dyn.bootentries", options);
+	globalvar_add_simple("linux.bootargs.bootentries", options);
 
 	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
 	if (appendroot) {
diff --git a/common/extlinux.c b/common/extlinux.c
index 1976fe09aa..f502bffc7d 100644
--- a/common/extlinux.c
+++ b/common/extlinux.c
@@ -68,7 +68,7 @@ static int extlinux_boot(struct bootentry *entry, int verbose, int dryrun)
 	}
 
 	if (e->append)
-		globalvar_add_simple("linux.bootargs.dyn.bootentries",
+		globalvar_add_simple("linux.bootargs.bootentries",
 				     e->append);
 
 	pr_info("Booting extlinux label '%s'\n", e->label);

-- 
2.47.3




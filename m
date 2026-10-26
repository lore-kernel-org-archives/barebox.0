Delivery-date: Mon, 26 Oct 2026 13:13:15 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLJZj-003VEY-1J
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:13:15 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 475CE2022DF
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:13:15 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EWzBheBS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=COppkE4X;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793016795; a=rsa-sha256;
	cv=pass;
	b=J0nG/gPQcl3lmVztzzCBKlS6w7WJyoDOjdjkU5RQST189t6ocgm5grgzDgudZu28jRWSL/
	XAETUEQx2oPFrRKXPVq6uoOuew2TUciayHYB7u2wM20XqTXced0vuXryZBl6JbRfX4mRcg
	mPCiSh63Y/l5hY6vYfN/JigaG4dqCa/873YbwOJfj8+kNbIvW6TImuKGj0eMobt3OJadzl
	X5lGaye2f8sLzt3xPCROZqNb8pJDqvqM6dAWdYyNQe0VudYMy3JT78/CIxUzWn6+lE+e6J
	6A9Y5FD8CYdrGdSoCt6B66w7l8+BIL6t8xr0LmTmU63gztxEFfLaeVOiNk1ogw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=EWzBheBS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=COppkE4X;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016795;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=WIMmS19lAGar/PoFXRHyJUZ8mbeqE+cle325kdNKMZGOPcrHp6jAh4Hm+mYqTuXR1JN5sl
	S807ZXwnVO/IHwfhMSprEfNSTMpUWb3XQBh6eu11vrC0CPPf/Y+9H6veQQni8VeiT8RhmT
	MAS6rsubgimz9NfHkh+xtbIjxnuzk/WfB/rpP7EUkFiW9F4WtsLQsAXDQvH890F3v3tD3v
	B2/57OITw5rgYRTE/LBzt43799mgu0Ed1Oh9ev4lOjsR541EPhbaHX5hRaraG+HecKBZqL
	bieTXFzFSdPcp18R71vlJQo1t9N/fjlxnaQqFB3Cm3JBqJa0HqBT0qFmKTmWfA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=; b=EWzBheBScYhcJq
	OIEuWBq4CxclteOMSXcNh61XzbJY4Fl4h+UOm3Jr4zog0kH1nPMDW9JrX+4g65UFaNuSNr0yZ7rY1
	Qu5yRW1xy10uyvsC7U/URbwzS1F7H8NqIPEduz+4nCSLe6qr+dC1gNLlOoCfUA5XNMHF4a7eVmEMc
	5CI2AnqmYRYcnMPHi9lnzZHTcpKyybXuE7UX4oU9y0ncHD9D8PwdTHqrEwunqD2VhdRfeNkcvMuuM
	ItGY4wIDCb2WJVi3SDUimW681uJOkNmrSkk6n7YeccpSOlGHrXlHjjwcUTsjJfTU1SWc6rx6Hh70I
	Kl4J8u2e8l+OP2BZA+nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002TI1-2Ti0;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYa-00000002TCB-0SWI
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:05 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EF0D32027F4;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=COppkE4XGT9oethUZ8aSi1hbUUqLt1hrDiw1Kc3UeetbBFEaDlYrgQJL6ZBwkt58gyRdvt
	8mrI/Axc/o0hwHOt/4ICw7zpkWSb5DJmmhAQynRhNqcsbzR81yhInnsJz66eS8CXvCSX8k
	WNM4IJq5yzS6125KImcI/Z6lpZuF3OpDSb6R+hV9HAcUtdH6tGQXJta/QkZcbAY1brbNBe
	eam49U2MreMRFVgiCYvlhuWC+KyHgKNCOHQXy5DmvmzytUCWhZpsZAUiWmwgqqfSRwXsON
	d67wDWTXmKIe79UNEzJKW6ybijp0f1QrLbWtgxLtkJb3iImPtdjamvs55ti3mA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=azP5K4RuTcttYhKI9HFtcS9WYZftJZLXex0ay/4LeUuo/k0Iv5hutiGrrD2qxpW3ZFvvaQ
	GUyBM1rScgm16YUseEc0eWGRLZYzI11PDBja9OiKiReXz4mumVMUTkvpnQQw1y098tZD+2
	do47EzQtkB1LmDQKeYeoNrMrPzgVA4a9u7Dx+c0jgCDnXj0iHF+bay6FlEU1juY+SvEmBz
	Y+23kZO9Sd0l7RU8j1JY7zp2boOzwLct/ts+WJHJtrw6dnRUGsQpeJ3o886E/4dy1tzS4t
	SWuAzDuvGZM8kDe98YlR521EB6sxKVOVRdUr74OjlKl3HHnuMH/Ez05m7YJYqQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqQYu86k1+EF7QgVnxX6q7D+BqHgc0N8gQD79jjXMMI=;
	b=Xe5YCdLQKvRqcyVZ/kNPLHNuJ1eFJF61WyXoM35ypQowaAF7fT1IwAXiGcGD3A1hHrgMHt
	b+wWBYGNvxrY+pNvQdaWplGSpDKjINZtNOpbaU9Unboc5/1wgbQvgodcvMliYYJVHc0RFy
	QltcAitLyXzNEno/cCMa9ToA+GkKgWRisWaCp19o34zpBI4EwEe9D5PmUFPQgjN04oh2Mm
	CWlJsfND4bEEEvdA1EDk10JGB49MMKCx0qO1D6Pssh8/GLSNGa8fD3/F5wBbdpI7+Xu04u
	vQA4Sj1UBmVSAQESMbbaSiCyPLwRCSMFKYR89bcqkXIoZBi9iAPliEFIslCmmQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id D4A61740A5B;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v3 11/12] test: py: efiloader: check global.efi.bootargs reaches the kernel
Date: Mon, 26 Oct 2026 13:10:02 +0100
Message-ID: <20261026121150.455510-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051204_331724_2F984FA0 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Set a global.efi.bootargs.* variable before booting the Debian
    kernel and verify that it shows up in /proc/cmdline ahead of the Linux bootargs
    when booting via the EFI stub and that it is absent when [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 475CE2022DF
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
X-Stat-Signature: k54ng5qma4xpnip65jwnxuxiac6hjmks

Set a global.efi.bootargs.* variable before booting the Debian kernel and
verify that it shows up in /proc/cmdline ahead of the Linux bootargs when
booting via the EFI stub and that it is absent when booting the same kernel
without EFI.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_linux_efiloader.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/test/py/test_linux_efiloader.py b/test/py/test_linux_efiloader.py
index eae6703e9d49..a39c6804f61a 100644
--- a/test/py/test_linux_efiloader.py
+++ b/test/py/test_linux_efiloader.py
@@ -50,6 +50,8 @@ def configure_bootm(strategy, barebox):
     barebox.run_check(f"global.bootm.image={kernel_path}")
     # Speed up subsequent runs a bit
     barebox.run_check("global linux.bootargs.noapparmor=apparmor=0")
+    # EFI load options are only used with the EFI stub
+    barebox.run_check("global efi.bootargs.test=efibootargs=1")
 
 
 @pytest.mark.lg_feature(['bootable', 'efi', 'testfs'])
@@ -76,6 +78,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
                                    "\n".join(dmesg)) is not None
 
         if efiloader:
+            # global.efi.bootargs.* must precede global.linux.bootargs.*
+            shell.run_check("grep -q 'efibootargs=1.* apparmor=0' /proc/cmdline")
             check_efi_kernel_no_warn(shell)
             check_expected_efi_messages(shell, env)
             check_efi_systab(shell, env)
@@ -87,6 +91,8 @@ def test_boot_manual_with_initrd(strategy, barebox, env, efiloader, debian_iso):
             # Verify that EFI was NOT used
             assert uefi_not_found, \
                    "EFI stub was used despite global.bootm.efi=disabled"
+            _, _, ret = shell.run("grep -q efibootargs=1 /proc/cmdline")
+            assert ret != 0, "EFI load options passed despite non-EFI boot"
 
 
 def check_efi_kernel_no_warn(shell):
-- 
2.47.3




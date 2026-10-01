Delivery-date: Thu, 01 Oct 2026 08:42:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAUe-008LVs-0j
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 08:42:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A9E18201547
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 08:42:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=apGDA39I;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=b9g53Ng9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790836932; a=rsa-sha256;
	cv=fail;
	b=JoQKRFFDXAs2Qvrhxz/VfU1rNXOVVjZpPnA9pA4OetMhx7sNAwtG8sOdaZC98xUXV7GFzk
	GDuK/HUgNYRol9OL6jKIr/LUoFFgOZQkAeGcEBC/vsi+q0E5d6vMXoeKtw8ZubBXpyT+pl
	7F8rrV0Kkj+dO4XEiIc/LxR5C7It8827Mn+6COXVrKQZ5O6JW2+U4s77d1DCL3OwuN2fju
	MXsfg+GBynrB5PGvdG/D2PpZFlGuWRjlTNX0VAQaQ9K48FOrhI0DROPC/dNPwHhO0A7stN
	7wLfUomhPW6kM/N8decFiQRO3POKBqnPVanlF2HcFmIFtep3CU6zt1d4g+Wr9g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=apGDA39I;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=b9g53Ng9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790836932;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=65YA8jHtiZFe1RMEiH6oSEdHJwFj5yXuP38fGyDmXsc=;
	b=LNKc7aYWx3Hsz3I/YYDIt7CVjqXYmOTXNYF80HvgjYMTmsFTaE6w8VJ1Kf6lQkk1kKrIeR
	eEQGt6uJ0fZyUD4vxaER9sTTX2oD14jj90aCBVcuoF1IUopOLfXsN9h5OXF49Rkrw1jh/h
	1IZTFsPqNBs72/gKaHFNGjoBPncQWEiElTL/2e30hBdbjjuXXizITgttvvXJb+WwUtCJQJ
	nhV8DPk3gmvFyErrg4mFcWD7WhoTiZ9GYcPsrtDvR+RudTnrA2p/cmqIbkngYaMtBLpsTJ
	Ueyi0CySjO95Ie/JyUlq1hTHO5drAwc+7C+xmG5jsog/2WXwnH/isBD3mSxTDA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=65YA8jHtiZFe1RMEiH6oSEdHJwFj5yXuP38fGyDmXsc=; b=apGDA39I9d6/4IzrvOopUGMw5G
	wlO0ZOPlHrBX6/URZEh0cYPDvTt4RLGclI8pV2gjNkpr5bvUa9qyuurXVO5m3jNB1+/KeFjkCw4L8
	OwKYJ48bqq2M7AeVVH+8sXf0gsOGk55TmO9l5ZqqIQLnrmqxCiZz0uManoMsqWG0NIJc2Em8PjxtV
	rVc/UYaj/l5JuccQFSo1K2pK8kHX68RtEI8WEr+rai/DlRfz19JrXcEzeiZ9MGWNvGSWlzVM6fFxo
	X3Z3zt5wAPoRFqb11EeTzARV658WSixGiXwU1ucpIAe8D2FBlbFUHYMnR8U3hJ0S0jNlfZ0AOj7rr
	SIjBr4VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCASz-00000007uZy-128b;
	Thu, 01 Oct 2026 06:40:29 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCASw-00000007uZW-2Mz3
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 06:40:27 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 53C8A201547;
	Thu, 01 Oct 2026 08:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790836822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=65YA8jHtiZFe1RMEiH6oSEdHJwFj5yXuP38fGyDmXsc=;
	b=b9g53Ng94sB5w758nDJicMlZadj0/lJKdvlha9CH65lYoQjFck+xBKDv/QSw3WTvq24X4r
	tvDlsYCE4RT96R+B/MUJGzFo+mceRTe7NyKe83CRdNIUzUb569xL51jR+/lHjveceowYOt
	uQ1Wd5KdHXgiVekV8udBSPDPNZuOVbCDcCaByLZlqLY6Cx4sYSYxti+Dkz7ElR6VhemKlQ
	T/tqhJNyG+skq5VPJf7vbbsdaiUXgo8L2qZwaWSp7FeYESFehaAD+J2LnCo2xupK55cOAD
	hHQH+R1BvxHewcnovQhswzwzGLt+Y5ugH9/WT/SkRLF/DmJKF7jXr2VO+g7Y2w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790836822; a=rsa-sha256;
	cv=none;
	b=Rz2LuX1ZGZfW6u+PqYzqOcpKjZ0OAnlKzRqcDZfKje82k4ggN9ZNjhWd0A98CKQaTmQ7ro
	KNFT/30zCZgMrudOtdvWwZTqFZ2RHZwB2s7CadZEvsxQF0jfIevoQ7RpP+HaUE6HkGh9EC
	vrtNSnf0W+zZEP18BrF9HI+Xb86hsz3UO9HN8j6Jg04xHXk0ePJNB0ZqBUnn4RH6A4gUgp
	bfzJ34W4p91on4KTwzF3Q+Pz0zXR5PIKIk5080W2B4TsnA+3D/zTr2T0TFxmANBb2+rp7M
	Ra0IQvgueuGKFfRBY+7N+6RF7o9U7HIYN0tBpQbYCMYiMsV/FMCG3KItrQirxw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790836822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=65YA8jHtiZFe1RMEiH6oSEdHJwFj5yXuP38fGyDmXsc=;
	b=HOq65PSHPE37DokwnsklkPQCnS2g7n2rvs21V1QaGeP+tPGQUE9D1shPyP9RF9nIvapWdo
	EvT0qg36nwi8YgMgQVrbZJMJluwzmBHiJ/6EdRncAib06ziMx8afbxPC+FLCXyRAzVujoq
	G1G4nlUwHOshTAripyOmjct5+W4qHUx9n0BfY7500ZPm5I5xlsnsEH7qdz0RjiCsnTa0fR
	QvTkZQyXnWEC2VkJig3CIk3zaD3sQIpMGRN1v7tCdYmw0eLngOaZt37vUswVEZHvlKgZx9
	lRSt/6HlO2vZswkXpgbeceWlE+NNyWuSAgdCXplF5SRAOWByHAWuXRpioB2Q1g==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] treewide: drop PRE_IMAGE linker script hook
Date: Thu,  1 Oct 2026 08:40:20 +0200
Message-ID: <20261001064020.56348-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_234026_760113_1ADF9B17 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  PRE_IMAGE let a SoC put data in front of the image, e.g. a
    BootROM header at a fixed offset. Its last user went away with commit 0900665e01
    ("ARM: remove ep93xx"), and since then it always expands to [...] 
 
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_SPAM(0.00)[0.029];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A9E18201547
X-Stat-Signature: kz9x75dz8w8c1xm9s3mjic7qdzbiraj7

PRE_IMAGE let a SoC put data in front of the image, e.g. a BootROM
header at a fixed offset. Its last user went away with commit
0900665e01 ("ARM: remove ep93xx"), and since then it always expands
to nothing. Remove the empty default and its users in the ARM PBL
and MIPS linker scripts.

With PRE_IMAGE gone, __image_start and _text are both at the start
of the ARM PBL image.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S            | 2 --
 arch/mips/lib/barebox.lds.S       | 2 --
 arch/mips/lib/pbl.lds.S           | 2 --
 include/asm-generic/barebox.lds.h | 4 ----
 4 files changed, 10 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 72aca83495..c4abfc5989 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -40,8 +40,6 @@ SECTIONS
 
 	.image_start : { *(.__image_start) }
 
-	PRE_IMAGE
-
 	. = ALIGN(4);
 	._text : { *(._text) }
 	.text      :
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index bbb9b11499..7dda8b80f1 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -26,8 +26,6 @@ SECTIONS
 	}
 	BAREBOX_BARE_INIT_SIZE
 
-	PRE_IMAGE
-
 	. = ALIGN(4);
 	__start_rodata = .;
 	.rodata : {
diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
index cca980c35f..b5c73999dd 100644
--- a/arch/mips/lib/pbl.lds.S
+++ b/arch/mips/lib/pbl.lds.S
@@ -15,8 +15,6 @@ SECTIONS
 {
 	. = BASE;
 
-	PRE_IMAGE
-
 	. = ALIGN(4);
 	.text      :
 	{
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index c672894ad5..7dafe10a8e 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -8,10 +8,6 @@
 #define STRUCT_ALIGNMENT 32
 #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
 
-#ifndef PRE_IMAGE
-#define PRE_IMAGE
-#endif
-
 #define BAREBOX_INITCALLS			\
 	STRUCT_ALIGN();				\
 	__barebox_initcalls_start = .;		\
-- 
2.47.3




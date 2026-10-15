Delivery-date: Thu, 15 Oct 2026 11:27:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHjv-00DrS9-1g
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:27:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DDD572025FA
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:27:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TMFgRD5I;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=BY2Nm3dA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D6OtPWd2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056427; a=rsa-sha256;
	cv=pass;
	b=DT+w5KrwlurDDrN2nAw7MGeTJ8ky5Mro5Lzjfwj9mPzCoCF3NPEJImhCMIYnLMtloM6JkB
	uOCzvv9SSv2pqlpJbkRck32bEzh5EZtO2c+VWN8lcC1iCdF6bvXyHdSsjAsbQps/4BWyJp
	jGjqRAWu1BvHPNm8s7t1zVvFFgg1jflNPyWENfo4seKWF0NnQ21Deb8+5hFRa5xnuty6Ls
	kR6hHZJQswkJYP4MvAySr7wjcaNd7ysOJjfPSZeK5ZjDq7LccG3ShD7YOqxOc6fp8/wwQU
	g7hf6vIYAlrXeBPuGy8gi362EComJ2ujHH3GNuH/lsZHYsJfR5SMXgLjDTARGw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TMFgRD5I;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=BY2Nm3dA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D6OtPWd2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056427;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ffdfBw2ZqkfMbogsO8Kgylbjp0UaMMt4p3XAwawQTOA=;
	b=G98WE7hj3aRcuLqgxJBRUqCllrxzCrt0P9C/xtOEcyxZDhfeQh2H7TK3LjgNiT/leFVnhf
	iZM9hH/TDDUNSTXHRxoqL6RLtCI2hAyV0VOu1EtCaEzzHkqDTy30R7lyrZxU+OFMib4+sW
	t64166hvXS7gJ07JXgoPunhUenhnwAWCdJlDEPshNuTrQNDGZzvcLABnZ1v5AKJ9ayiMbE
	aeurquj8bKVSROTaVfOUim1ao8yfvT9mxrCnzgSNJ2HpK4QsigfpEIWVY00poRgB38tarn
	cYlP0b5ZhVwkPkPsZY+i+dy33qb9PAj94Ps8Xw4v8KuHIq1h2M4SXKFka9+Dlw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ffdfBw2ZqkfMbogsO8Kgylbjp0UaMMt4p3XAwawQTOA=; b=TMFgRD5I477Yo6KazkvV9hbwi9
	N4+W5MXwY2pIDTHmGYRrFsvmhpgGNstOYZDnN+4WdbQ/CpNjpyLVYAU0eEy0WrBLrRGoQtNwdGQjs
	/2NHNlG/Fm5snGmMU3YjQrgowlPod4S92CaCs7agF6vJLUJAyUOhEO8LjAjrYqDbrzYPU7c7qUlcW
	fHlpmonDx+kT9I8bvNrzWtEKUqB0QUYAAw2I6Wcf1g47M80Ew8VlX8QIefR9SoAvDjLjItRtNc5K4
	biDBvPjcH14tK7uYrYb61vOVr5dCAi3WSrqQbhOvStBNjbO0C5A2Th5wCVwg38RlRD0DO43BIfsPT
	UukNY47w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHiu-0000000HGDv-2S3h;
	Thu, 15 Oct 2026 09:26:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHit-0000000HGCC-0W98
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ffdfBw2ZqkfMbogsO8Kgylbjp0UaMMt4p3XAwawQTOA=; b=BY2Nm3dAwhg0zyrh/E3iLpj5xc
	SRWBLEZYR/np4yO7zpxY8jp/buGmN4MQRJrDWOHXgEOBWJlgaeizHrZnoOTBXu82R0Wr+lTCOdZBg
	Ods798QpOIxGVhk0l/6RyOaePijUZ44jheDVRuzvXtNneTWbS5bkR4vFyO56oLv57UEjILHvzNqXS
	6cgNiAvV1Mj5itQOOLxReD0hki92kxRJWl2ase7KUqnb2Re/PBrjaxNYAtsZ3VlUYPx/5l3JOqOku
	lSkaRiwip9GXKTxZdxorR5/fa0sJVXTJB/2Gn3f8dKlZJIVLHDlH/v+5CZxO8qXInVQB0X3sGqNk0
	73x4YxFg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHio-00000000Aas-3Zim
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:26:02 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C2926202615;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ffdfBw2ZqkfMbogsO8Kgylbjp0UaMMt4p3XAwawQTOA=;
	b=D6OtPWd2U+u+1Jq6Yo363999YdedaIZjxfjun86PEuYgketdNjI2JW8Efw4vfeRGwrLPOz
	GwWBoy9UN0ivSJdeTyRdegVGiP7OHQzfMgKM0dWIwAvPYLqtGkadleJ4t4zGD6Y2nsPqTp
	RQrULa1UoM4YSxweUD1JW9HDXP2UZ99vUKwyD+hPnrcuo4nsOjStugYLItvmRNsWfagr+y
	iH+9Q9vBVJIiNhi6ZvHyqW+7sxmDM/OpHRfkay/JNKpbJQbpO55KgZavLrtsju5VzYtREj
	fnw9HKa9T2sB2ovNeTQM0x4WZOvFfPcXeJrkhddlHfrYAVKALSn8Gf9zFRlKgw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056357; a=rsa-sha256;
	cv=none;
	b=MGf6xo+rjLpRceJ3U+hRe6jjR6mf+lcT4ZILxnHFw881vtepqYjKLMlBmsXlWtrZolo1Ux
	AISSXFdT/+2bo0rb6Ss7NSxQ2GNQxz5a7mf/8LF3M8b+jL0Z6MAgYavXeINI4+IyqNrWgA
	Qt72ZD8jRSOERMnKtJnPs2idZwluFx1PySHj7R1U6Gv+bcAHzVtNb9Tmui1uOa8XBnJEHd
	Pc6aRjJ+w+Assxc+BbRQ1DXQS7gMTwJRnzBWTO4hRlAjd9ku0n830dskr4vuNAvj2nG0JS
	2cXRRh+fQML+9kZ0Uuqde/QUlR78rG6e7BxWY5soj8ZSIi4OWy/pVerXsx8utw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ffdfBw2ZqkfMbogsO8Kgylbjp0UaMMt4p3XAwawQTOA=;
	b=FaBYuyUQDAquUR0yECOvZ7tH3Pl/8WPVXNjMWoMSMI2354M1KPQdv3e/EnLM61f2CDs7Zd
	zVwsH2w+pEHzeTSPbUqoo3fqy3p2NVRkGrIOOkwyKmtdqd5oIHr3Y1CLGfAVjHfFJbGpkU
	1PVoBkB4ptBa5l2WB8vJg/kXNuY2BpqRoyICbKffIaRyl7MOzoKy9GGppBYINVfr5I/6iP
	rXq+zblBM9FdXnEKQVLRHOwKAriIKYFyDXjluxcgteE1WckkwB67BE7hVFbs0nOo+c5f2E
	Qb9kVqhNo6rHDnjho193XneX+sp6ZMDQ1R+v4IQXK8PD5J7ob30WVLC5VucTbQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A135D7415BD;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 2/4] kbuild: dtc: introduce empty fallback device tree
Date: Thu, 15 Oct 2026 11:23:28 +0200
Message-ID: <20261015092554.210438-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092554.210438-1-a.fatoum@pengutronix.de>
References: <20261015092554.210438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102559_147031_6B129449 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload,
    because it has no internal DT at build-time and until recently not even a
    DT at runtime. Instead of synthesizing a DT root node at runtime, just compile
    in an empty DT that the user can extend with builtin state nodes via CONFIG_EXTERNAL_DTS_FRAGMENTS.
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DDD572025FA
X-Stat-Signature: kyh3a4i5qjhcp3qbdzt3qna1u785hbwq

CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
it has no internal DT at build-time and until recently not even a DT at
runtime.

Instead of synthesizing a DT root node at runtime, just compile in an
empty DT that the user can extend with builtin state nodes via
CONFIG_EXTERNAL_DTS_FRAGMENTS.

x86 has had no device trees of its own so far, but gets a dts directory
here as well, so the fallback device tree is built the same way on every
architecture and efi/payload/Makefile needs no special case for the
architectures without one.

That makes it the first dtb in the tree that is built without
CONFIG_PBL_IMAGE, so define suffix_y for that case as well:
scripts/gen-dtb-s reads the size of the compressed dtb unconditionally,
but scripts/Makefile.pbl, which defines suffix_y, is only included for PBL
builds. Without it, the .dtb.z is never generated, the build prints an ls
error for the missing file and the dtb objects are regenerated on every
make.

Build the fallback device tree only along with the EFI payload. Fragments
are applied to every device tree built, so elsewhere it would just be an
unused dtb in the image that breaks the build when a fragment references
board labels.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/Makefile   |  4 ++++
 arch/riscv/dts/Makefile |  4 ++++
 arch/x86/Kbuild         |  2 ++
 arch/x86/dts/Makefile   |  5 +++++
 common/fallback.dts     | 10 ++++++++++
 efi/payload/boarddata.c | 11 -----------
 efi/payload/fdt.c       | 25 +++++++++++++++++++++++++
 scripts/Makefile.dtbs   | 10 ++++++++++
 8 files changed, 60 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/dts/Makefile
 create mode 100644 common/fallback.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d9b731e0f286..14ec007770f3 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,5 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+ifdef CONFIG_EFI_PAYLOAD
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+endif
+
 lwl-$(CONFIG_MACH_ADVANTECH_ROM_742X) += imx6dl-advantech-rom-7421.dtb.o
 lwl-$(CONFIG_MACH_AFI_GF) += am335x-afi-gf.dtb.o
 lwl-$(CONFIG_MACH_AM625_SK) += k3-am625-sk.dtb.o k3-am625-r5-sk.dtb.o k3-am625sip-r5-sk.dtb.o
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 521c8407c5ae..8a136f96c7d9 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -1,5 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 
+ifdef CONFIG_EFI_PAYLOAD
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+endif
+
 lwl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
 lwl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
                               hifive-unleashed-a00.dtb.o
diff --git a/arch/x86/Kbuild b/arch/x86/Kbuild
index f5fa602122a5..28744c7dc511 100644
--- a/arch/x86/Kbuild
+++ b/arch/x86/Kbuild
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += lib/
+
+obj-$(CONFIG_OFTREE) += dts/
diff --git a/arch/x86/dts/Makefile b/arch/x86/dts/Makefile
new file mode 100644
index 000000000000..25b653bc9b03
--- /dev/null
+++ b/arch/x86/dts/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-pbl-$(CONFIG_OFDEVICE) += fallback.dtb.o
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/common/fallback.dts b/common/fallback.dts
new file mode 100644
index 000000000000..7c88eba462b6
--- /dev/null
+++ b/common/fallback.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+/*
+ * Fallback device tree for images not tied to a board, like the EFI payload.
+ * Empty, but can be populated via CONFIG_EXTERNAL_DTS_FRAGMENTS.
+ */
+
+/ {
+};
diff --git a/efi/payload/boarddata.c b/efi/payload/boarddata.c
index ec6ee7bbd98f..a2f4b8d21b4a 100644
--- a/efi/payload/boarddata.c
+++ b/efi/payload/boarddata.c
@@ -14,7 +14,6 @@
 #include <linux/printk.h>
 #include <debug_ll.h>
 #include <init.h>
-#include <of.h>
 #include <pbl/handoff-data.h>
 
 static int handle_efi_boarddata(void)
@@ -47,13 +46,3 @@ static int handle_efi_boarddata(void)
 	return 0;
 }
 pure_initcall(handle_efi_boarddata);
-
-static __maybe_unused int efi_register_of(void)
-{
-	if (!BS)
-		return 0;
-	return barebox_register_of(of_new_node(NULL, NULL));
-}
-#ifdef CONFIG_OFDEVICE
-core_initcall(efi_register_of);
-#endif
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index 9cdb32370f22..f98fd86bfbd6 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -5,10 +5,35 @@
 #include <common.h>
 #include <init.h>
 #include <libfile.h>
+#include <of.h>
 #include <efi/payload.h>
 #include <efi/payload/init.h>
 #include <efi/guid.h>
 
+extern char __dtb_fallback_start[];
+
+/*
+ * EFI systems have no device tree, but barebox may still need one for its
+ * own purposes, e.g. to describe a state partition. Register a tree that's
+ * empty unless populated via CONFIG_EXTERNAL_DTS_FRAGMENTS.
+ */
+static __maybe_unused int efi_of_init(void)
+{
+	int ret;
+
+	ret = barebox_register_fdt(__dtb_fallback_start);
+	if (ret == -EBUSY) {
+		/* architecture code registered a device tree already */
+		pr_debug("keeping already registered device tree\n");
+		return 0;
+	}
+
+	return ret;
+}
+#ifdef CONFIG_OFDEVICE
+core_efi_initcall(efi_of_init);
+#endif
+
 static int efi_fdt_probe(void)
 {
 	struct efi_config_table *ect;
diff --git a/scripts/Makefile.dtbs b/scripts/Makefile.dtbs
index 9d50fc7fe6e0..5083da6a6273 100644
--- a/scripts/Makefile.dtbs
+++ b/scripts/Makefile.dtbs
@@ -93,6 +93,11 @@ cmd_dt_S_dtbo = $(srctree)/scripts/gen-dtbo-s $(subst -,_,$(*F)) $< \
 $(obj)/%.dtbo.S: $(obj)/%.dtbo $(srctree)/scripts/gen-dtbo-s FORCE
 	$(call if_changed,dt_S_dtbo)
 
+# scripts/Makefile.pbl defines suffix_y, but is only included for PBL builds.
+# The compressed dtb is unused without a PBL, but still needs to exist, as
+# scripts/gen-dtb-s reads its size unconditionally.
+suffix_y ?= comp_copy
+
 $(obj)/%.dtb.z: $(obj)/%.dtb FORCE
 	$(call if_changed,$(suffix_y))
 
@@ -115,6 +120,11 @@ cmd_dtco = $(cmd_dtc) $(if $(DTBO_BASE_$(target-stem)), ; \
 	$(srctree)/scripts/check-dt-overlay $(FDTOVERLAY) $(FDTGET) \
 		$(obj)/$(DTBO_BASE_$(target-stem)).dtb $@)
 
+# The fallback device tree is board-agnostic, so its source is shared by all
+# architectures instead of living in a dts directory
+$(obj)/fallback.dtb: $(obj)/%.dtb: $(srctree)/common/fallback.dts FORCE
+	$(call if_changed_dep,dtc,$(dts-frags))
+
 $(obj)/%.dtbo: $(src)/%.dtso $(DTC) FORCE
 	$(call if_changed_dep,dtco)
 
-- 
2.47.3




Delivery-date: Thu, 15 Oct 2026 16:04:11 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM42-00Dwi0-39
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:04:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 608B2202601
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:04:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XAmISNUs;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=e9t3+f8R;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bvyQ61x+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073046; a=rsa-sha256;
	cv=pass;
	b=cyO8LZB9kPwq55xc0jc5hrT2UVYStC7kCrllcptpVE0zRSwOZC+esgSiGq0Bhmyh1vwp45
	knfdYhftW8E4Gu/jNqMHce4GoxXS7SEuIg3H2c7dxmMxg65J7h4yaCra5Z76LxJG715PxY
	A6133Hi48dxo4o6nz1ICrkIedPEtWd0Ms1rtGVenkbgVNGsRkG7Vbq2MaVuK0hYDQJ72vf
	q2zTyt3X0B1oAtrS+EgE77HOSx/H/wsR28EQkxeTL+b6oELdA2+F5RxVaibjl9ydzyanYY
	3bnIkxJ8ZHP1JdA1xwWyThzCY7ffxO9+4VJdHRlkavTWuSooku51sogdppyRgQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XAmISNUs;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=e9t3+f8R;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=bvyQ61x+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073046;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kKO64AhhtJZP1mhjj4ZO5XDwU16YcQuVU8BbLgwdgrM=;
	b=eF6KyVufOr46z7XKcqrYLSLgKvysNIc6yg/COcEUGPKhH5E1Fb/4sQkIXskGC75EwB8lxE
	iH7TRXSww2i4wlRveeN+vVQoj4S7FKDds2Q/sgh0Ve4tRN6VCGj7/JG6xW7TWqbgC0a2wN
	IAUBL12w5Z6ZKlD6LeOFEPVvWk9XYUEQXWTgWJtNlYHnchQQgPCHWGFnAzQ9m5yOvTJAGS
	o/DRzsdyBLOpeMQE7xHEi4qiNgQ7ZB4n/Ga4yrvsrhLpCJf3dM/nBX6OfZr+lWwkneXXd2
	A+c3XXzc7ASSfeYxAdp7Uup///f3vCkL1FHft9LpyAPx9k5MET9BritAY20WtQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kKO64AhhtJZP1mhjj4ZO5XDwU16YcQuVU8BbLgwdgrM=; b=XAmISNUsaAgmpHQol4MmqM1nAH
	bJ0Cs80vI+6ZtZJdXy5dCwBvFWTgrwJD/nqSTvxjuLYeqGNpgInQVizxIcWO42NP+vscwBSreGpt0
	kmO7O8P+g5GuKPZQDvkNg4LBTVvnmhZ3gh9tjelUvtP8ZVNjWUY25WJS85/+a0oFPLnFHc48c8j0F
	TNlNXM1wVMbuCUQij4VqmOi+GJJzZr7JHS4OVBK1N2GvvxMO81rCsRi1rJftpKc/zFt75h6x71Az4
	rS0QD+ucv8JlcknGjJp99zGN+RuBPfCACBeEyDDfD8zE6e07AzQT7Q3qiY9Kwqef9RO7VaPQEhh+g
	zyXi/T7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM3K-00000000JqM-0XX7;
	Thu, 15 Oct 2026 14:03:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM3I-00000000JqB-15VI
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 14:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=kKO64AhhtJZP1mhjj4ZO5XDwU16YcQuVU8BbLgwdgrM=; b=e9t3+f8RPWHU+GwSasWwySqTuH
	YXJQMG+LqxzmcEaTIGw2Mi+AVGZhw+YUZoZtmFK1pdn2s+fKcqgmL/VAlR7CF0BduzIMkU3mHGJa0
	5SdsXeiOcLozihdZpPlwntg/zFp+IkoWrOipRCmoEJUb7aqYAgzTCU/sfdhiy4+gnI9Ph6Ri2LJqh
	ixQs1gha+SYfGb/fS7j1D+Vu15G/DAPisjsabFuDMq5Cbp5u9c1wdjq7ihGDfc04Lfaqm5NvWiBJC
	EKS8w9Xpj5xDj/CSj9o2QUnVtqgKX7mLr/gjB6fXogibVzEE+COw+LKqSFA916X08yhbBD3FmqCjt
	PodpzVTw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHM3F-00000000Rju-1W6G
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:03:23 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AFAEA202601;
	Thu, 15 Oct 2026 16:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792072995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kKO64AhhtJZP1mhjj4ZO5XDwU16YcQuVU8BbLgwdgrM=;
	b=bvyQ61x+OXuMEoOTLCira2BmhL1UpL2KRSaX6naL7Rk45GIiOwRzXMtz8W7wnAR6pDr022
	f/42MN6Nsang5/URCql3QIJD+yQxVpApWtK6VC3aX8T5VxnuI3pwOMzAN1VVzMI6qBeNS6
	zlkGt5GFVSi9m79FslAzoWwfF0BGkzcL0WsCbDy0K4pOwk9hCeJP2zCS8nW6fvMJ6wYRJj
	eUeXGH5bFctn6ByD7RVbi1+2g9R0u49FnW6Xfuhgp+hIOjyQkAtD+VcXHeuzQFyvQPYwhf
	xc3/g+cdnagU1DaWgirWiwxpzLLcAlGknjwrs9pXoop19pXsTCt0DkdoIBMUGg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792072995; a=rsa-sha256;
	cv=none;
	b=YN0jCKip1hEziPeUFRh45COpHxVf9A8+Uu7YWcGGgdd9cYLFd3Hp5FYEZv8zG9z/11ABHR
	dv2yBq59ys3wEsn+uk3LhqjU1kggRbAGeNNiJufKsuRKSFrlcVB1QPfJJy11O/Gtv3YTnS
	9/UB3bDHIc2/vruUkf8c2zxFk+348DPRCQVBkoLjQsiMcPykD4TEauiQlatE1wCsHwh72J
	QAPD2PmnIBg47ri1Cncw/hYlaqtlhiGQVE3D8YQwptR+ytfEmQzh+By6EVeP7PHImdrSdc
	m8oP7Gsk91bdnvU23uXdGP2cOI07KVXTQ70Ky5yqH1d8bliaMpEmimUR2sxYLw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792072995;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kKO64AhhtJZP1mhjj4ZO5XDwU16YcQuVU8BbLgwdgrM=;
	b=cKod49Evf7k8VFpMsSw/aOQTZv0V75c5cqI8C5gkyqZw9h1+Ig7MR2OFnOTWjR07G8j6x/
	iwzqkKjTlogDVycOhWLMI4NDbpT6Pfc/wjpJndW25r6oEAsey/KATc4zQWNeIPQmsa5HG8
	+YptXrpLMv/12F/AISlp/wocvJ0Z6HorPHgvDqnc9h4gDvNfBfBfutnAdzQlvfWVgn+GKW
	zxTrjy1CNEI6tuynHNi0YrMboFvEtJ/6AKuvUn0VHRmhobNEUN2Y8+qgcjjOXAR01H0m1e
	n4bhpEm7SoqnI+V5tSSN4+0+QJ8eCjXdgN7+KQVZY8UQEf3HAcOdxR1BpfX0dw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9AE86740A89;
	Thu, 15 Oct 2026 16:03:15 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] images: remove unused FIT.ITS rule
Date: Thu, 15 Oct 2026 16:03:14 +0200
Message-ID: <20261015140315.1112500-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_150321_593378_64D4A8F0 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The rule building a FIT image from an .its file has had no
    users since commit 7269ad4be96b ("ARM: k3: remove beagleplay FIT image").
    Since the kbuild sync with Linux v6.17 moved dtc-tmp into scripts/Makefile.dtbs,
    which isn't included for images/, the rule also passes an empty file name
    to both the preprocessor and mkimage. 
 
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
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
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 608B2202601
X-Stat-Signature: 3uyzc5z18afjdqc1j1hfwxgckpwjqk95

The rule building a FIT image from an .its file has had no users since
commit 7269ad4be96b ("ARM: k3: remove beagleplay FIT image").

Since the kbuild sync with Linux v6.17 moved dtc-tmp into
scripts/Makefile.dtbs, which isn't included for images/, the rule also
passes an empty file name to both the preprocessor and mkimage.

Remove the rule along with its .gitignore entry instead of fixing it.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/.gitignore | 1 -
 images/Makefile   | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/images/.gitignore b/images/.gitignore
index 0e0d2fa71859..412587de5188 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -38,7 +38,6 @@ barebox.sum
 *.swapped
 *.rkimg
 *.imx9img
-*.itb
 *.fit
 *.missing-firmware
 *.k3img
diff --git a/images/Makefile b/images/Makefile
index 6b0feb27659d..2af2d17911fa 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -125,15 +125,6 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
 
-quiet_cmd_itb = FIT.ITS $@
-cmd_itb = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
-	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
-	$(MKIMAGE) -f $(dtc-tmp) $@ -E \
-	cat $(depfile).pre $(depfile).dtc > $(depfile)
-
-$(obj)/%.itb: $(obj)/%.its FORCE
-	$(call if_changed,itb)
-
 .SECONDEXPANSION:
 $(obj)/%.fit: $(obj)/$$(FILE_$$(@F)) $(dtstree)/dtbs-list FORCE
 	$(call if_changed,fit)
-- 
2.47.3




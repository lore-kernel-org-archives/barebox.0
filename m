Delivery-date: Thu, 15 Oct 2026 13:31:04 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJfs-00DtwE-1d
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:31:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 82D432004B4
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:31:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G96islDm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aImo9Vt4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792063863; a=rsa-sha256;
	cv=pass;
	b=VQOGMzO/FySUaoMUMlxoUorWV1WT2f+2bUBtVGm6uxhM8HzVOtOuPktWjG9NvcK69fT1HW
	P2+vD1DAgmEOdGB6jNBjbwFz5OFyJNaWplhXqfycjb+gh3I7r4DR1btc1C8z0lkLtd9Xc2
	5b2fow9iDneuDzkxnuvFzEE0AnzHyEWowJ02b7BxcFwIJO+VGz0ytGXe4POLySGh42V2CR
	YhEA/eHQ2vx0ic0gO8tSvGV5lvs7fakHRk03W1ivkAGUMII+JtKal0XCCT61uY63u9Nw5d
	RbRP9Ui9n0U1ljMUzwgFHhKssfdbSNdbrp6l7HiqNob/JneyJyqUwWsxfQAKww==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G96islDm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=aImo9Vt4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063863;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Wa3OaPMgvBm79RI0OwGwQ2YcI9d4CfAEhij101rxIzg=;
	b=BamRK2AtZ8NHQTYo0Pec91/HoiMuvyu72OUyp+00diT/MutY4qmRb4ZXwncYJFK+bUEs6/
	Guqw/M/4FwUkuuNpZ3CQFbDAwngxc9gnFlVXekIfD21U1kFwMx+wBuaua+puk274epxai2
	mk4Hqyz95K9rSTzvEgWQ8h4nXjwfHuV29FLUITNPSqrwaeYUu+FO4W0D2zlFL6EH86BeSP
	kUc/I0tJEX5s2lJNaPVavmRWnEPpHXQ7xLC2nPGGdELeR4og4KVnwJSiC2Oy7zmOV73yeo
	eJfHqcOVUi0pnAGjsP8gCb7188Pf+vMSiRBp1PsmN2JTF6h1McL7OZeOUr0nyA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wa3OaPMgvBm79RI0OwGwQ2YcI9d4CfAEhij101rxIzg=; b=G96islDm1C7uGXvgCd12V+p5Qy
	JqB73S0qrTq3iRvXGwlCUzlAP7bUa8Fv3x7OTg6ujN1Ln82lBFwOpG/lqeoVj3O85By7/mQnYJD06
	1t2EC26Fd5jtIr6vcr7HeDbxku7IMfU9PrsKRxKw4uZi/FYhGd2NJXznnHdnboJx/HH5oewbTzrVM
	gD+VtfbQK7P7w9XOZUc/c2dig2JbutKqJST3KW6F760/RdpzfESAH6P0GPWvqtTMRBXtwB6ZAAn5n
	HWQSnYpGLbk+hygqcnoG5jW46PpECNM9OQ7r1VGBF55I/3xr9GH5jcDYtNknfiQzHDFYuUkhT2F5S
	UMnWtAvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJel-0000000HZed-1dur;
	Thu, 15 Oct 2026 11:29:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJei-0000000HZdV-1KxF
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:29:54 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B642202012;
	Thu, 15 Oct 2026 13:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Wa3OaPMgvBm79RI0OwGwQ2YcI9d4CfAEhij101rxIzg=;
	b=aImo9Vt4FH0bggRzmmuixfE/lABWrtY1BCDk4fO/aYQEgH1spgd6vEoW5KRn9NtUwXm4Xq
	hD9qYdr1xuzyNeA8LkOTbjLgy45aJg0L6dAHsD/NbtyHVP308QvgOLhGXFM8uzXZcvjzJS
	rAVIRBoLV7GDiMDvWbi2/+J46aeIo0KsBJvMt/yNWQNTSEU35aNgvo2vXNOmQpXmMS4SIj
	M5CAcyWRoFvFXdfefdng8UpUHyIjRIaUhxjABtEC+YRyKv005e8PPBs4FLKveMTYf31dQD
	thCVW5deY2r2MxQB3NKge7JqmCQDUUR7Mx26dYHNDQioT4H2AXi+hnbSnIzzcQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792063790; a=rsa-sha256;
	cv=none;
	b=cWjagfyMZo+QgRGfZgZND8Q5v16e2zZ58B8I6PlreIYPhEdY2x5j6qKOyVXjJpjeEN4yAt
	B+CBdle2+R+ut64KVOxLGkCCXjjpMTG/Qa6NHRgkcW89KgtksPcDlRTVLuec2mCJ/TVI8N
	JT3UjOFHNcU4dQoXJINYu9882dN5ZHCLFaIZmOARz48NwoN7WVk7ad+eNwugTzGOMimP3w
	+ufKetj+pwndVMxiJsSwGYZZlieBp5OQrA2Zm+ZF7j71p4FomGBwM2EQEBVwnF+1lhrFHi
	/g/OAZxsIlG+tN36e4xUZe9+reu7RJlYtUU749MBwoBk51PIME/3rMHPvunYIg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792063790;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Wa3OaPMgvBm79RI0OwGwQ2YcI9d4CfAEhij101rxIzg=;
	b=ZYc9Mn6YPnXBISRb0BHqUufgkYevo4AoahTz3aaTChkimD7bg7brbANqMwRfZt45xZbWO/
	5ylcsqnYs67gCKeLouoVQ0q3Skkb6NHDOpJNfWenfqPxKf4nHDcgZ+8oJEHAOTmYQ+/Vlp
	g4TOhVhpFvGSW+4rP/gFbbathJj/cTR6yFLjJywQn6sVSxnl2cgUhEaA2I59h2rfW2wI23
	sqSUBSFrbmdO22ogtuZ7RH6RRujpm2QhNdIZqxZKk9LMT6lqzdw0mVoYoCbeI646IE2r+M
	FHxii5MvLxtE95Sbe2NFeu8jc3+XcC66W2k/lHtX+MZuNJzmEzBnRBiYw6uMkg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 399F07409AB;
	Thu, 15 Oct 2026 13:29:50 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] Documentation: devicetree: document overlays in a FIT image
Date: Thu, 15 Oct 2026 13:29:40 +0200
Message-ID: <20261015112949.2983458-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_042952_643655_9E6B2A0B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> global.of.overlay.path
    may point at a FIT image instead of a directory, but the documentation doesn't
    say which of its configurations are applied or how they are verified. 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Rspamd-Queue-Id: 82D432004B4
X-Stat-Signature: 1nsichpuupkqf9nhcu89omc9enecyi4i

From: Ahmad Fatoum <a.fatoum@barebox.org>

global.of.overlay.path may point at a FIT image instead of a directory,
but the documentation doesn't say which of its configurations are applied
or how they are verified.

Let's add a short section on that. Unlike overlay files in a directory,
the FIT is verified according to global.bootm.verify.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/devicetree.rst | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 5d26524809db..d8648d293e06 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -140,3 +140,18 @@ For upstream device trees, this is currently done on a case-by-case basis in the
 Makefiles::
 
   DTC_FLAGS_bcm2711-rpi-4-b := -@
+
+.. _of_overlay_fit:
+
+Overlays in a FIT image
+^^^^^^^^^^^^^^^^^^^^^^^
+
+If :ref:`global.of.overlay.path <magicvar_global_of_overlay_path>` points at a
+file, barebox opens it as a FIT image and applies, in order, the first ``fdt``
+image of each configuration that has neither ``kernel`` nor ``firmware``.
+:ref:`global.of.overlay.pattern <magicvar_global_of_overlay_pattern>` is
+matched against the configuration name, not the image name. The FIT is
+verified according to
+:ref:`global.bootm.verify <magicvar_global_bootm_verify>`; overlays in a
+directory are not verified at all. Processing stops at the first configuration
+that fails to verify or apply, but the kernel is still booted.
-- 
2.47.3




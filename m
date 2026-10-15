Delivery-date: Thu, 15 Oct 2026 10:50:31 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHAV-00Dqdl-22
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 10:50:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AF060202339
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 10:50:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cobqb01h;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="rAB5d/Qk";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ffXLTBlr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792054231; a=rsa-sha256;
	cv=pass;
	b=Kpm+2DAvvwWH63bAkwyrejysQcRWfY4aFMdcAsbvMLOe8Lt8uKxx3RFiUiJ0VdVdVEZuhZ
	Pbmoy8rBHX0Ox0Vm1tQDv1ISptrXqwl3dIZUnCL5gdld7eSy3JrT+EIqgIZgi8DOAwqkK2
	/PdSp+H8asFsWMewWkqbX59BXxX2xmSifLhoHD6ZdLeWdJqhTsDjAvD1Gti11CGtK6+QoO
	b3HlczwhXHeMpsbmwnXodjyhMCy8r6N7dIdJrPwBdX0hnElZLV5L+cP9NHQifEvGDwMoUe
	XiGidQil1zG2CPKJq9kZ2/noi2nq+2BQ4vlp8SohrnF7JJGPBV61tcqKmdYRrw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cobqb01h;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="rAB5d/Qk";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ffXLTBlr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054231;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Y1B63Gvk85tCVaUybHD/cbffagEhQtWZv+jLE0Kpb/E=;
	b=SWSKP6dD2FyUAd9PuxUJvz1WUW5fQZtpB/Ma6ZPj9C6EBj+yj2lb3ETwP5RU3h7p2NZr42
	F91+Eu9AWP5WXI3lHVNiKvRxKerEaOgshe2PNypADfyaxBasDFBp9ok3Tys7Gi5ZDpfC9J
	tnyKzEnZ7xxfRq3KbzQ69lNEPg/a1xFa5FiH0wP102TmdY8+hZOcBHBNdCCvNnDdFpazo0
	SnnJ8y1xO7xeLIL8s4gzGJTJq5HDEx8XShua/Y76G9CeJMF4LIt5YUSWXbvOxQnfHpeew3
	iHrNMJtTedVhGd0/6NGL6nwn7ef0TwvjgAvGFpk4vKR3c9bw8EOV3LpbXcEGaA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y1B63Gvk85tCVaUybHD/cbffagEhQtWZv+jLE0Kpb/E=; b=cobqb01hLcm6iR7G7apaw0YqEM
	YbvUUAjdojUhB/Fs4VVtJh1npKEAUblqWqlbw14itYwJaRVaEmcD0BDkEpU1YgOhx910sPdH9bMXR
	UvWsELu3bRhc405cLFvwbpCmmyGp+NgFbhPXmJzfoP0o3RqsEbwpm1PXkskPCOaqcCZrseOhIzNIU
	pw5YdTljl0QbZnb38EaVJZTBTbv2Ty/kiTlPux8NH56I1WTul5dgjjf9suzLPHIls33M2YTYMvDIp
	wDAvYWf3ILSBPOWqBadee/hI1N20u4w75d45/UDsFqt8bCnYfNvqTQwXU7E0ItdUvK6OnlizCUVkA
	3MDK57Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH9F-0000000HBqq-23GJ;
	Thu, 15 Oct 2026 08:49:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHH9D-0000000HBqU-25sS
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 08:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y1B63Gvk85tCVaUybHD/cbffagEhQtWZv+jLE0Kpb/E=; b=rAB5d/Qk7SGEtlcx9HqVUUEpY0
	Bd9T2erDngm7Yq6WAv3ZY2YXJl7K09CTlT8fOxSZQCu/vqRl5R9G0DVsgsktHzR2zbuHwaj449X/i
	g/UNoM7jNYegHnD0wy3MMzwo5e02HcmpPTFHxj3MEhWZNKo3e2tiZVhg6Tjj5+ZC5iFL15GW65SAm
	+lWkCrRGAd1yXx2bBNFw/E+illssv8Ocy/a4LHy8jJ+1jj88RJuDQHMu9MNtEArdOxvLai4MOZUh3
	mUhdMD7o6BkYLfbubPcsNpmXak9za6u/3c+INM0DOich3eMnqGWAHueMCqZHe28X0cbFoXPZCe/v/
	Y3NM5wSQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHH8e-0000000083N-3bId
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 08:49:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5F169202381;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y1B63Gvk85tCVaUybHD/cbffagEhQtWZv+jLE0Kpb/E=;
	b=ffXLTBlrPP8v04bPt1VnrIrfowRyhRfiDqtJyENllx3sEvjb+lhdg38cdI7PG6n4Tcn0wy
	6ThzijY5RFrV9OfYG0uDNcrfps/ueOEQkKB4cmRDl3hITqWY9RpPrwUes9BViTNTHKiSHt
	px4W5PbzzNGWQYH2HIxecyAdXMoDZF0QzVtHtNQwRg7rb2RDxxGfvSb/yHj7Le0T9PdW2m
	vZZZZ7lK/kKm0qu9mCM4+q/5li6nBBaYqEKQT3si+ej5/aPDTEkkGPRnsezdahh7FbFJoh
	bONb0h8JitvXMalMr678mZDLft5CQuot3RBhlpoYJdWH0MNlkm6Ygjvg5thkpg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792054114; a=rsa-sha256;
	cv=none;
	b=TAhyd0cbMz8b7QOdTF8HUlHF+avBg/3Bt5WQ+m1T9viGQ4bWhYyZiaYdIeNCg3q9fgYHta
	CH8Vc9HXwK7/ncHYwjHdy1O6AcZzq9khg27zABCxCz1zx+yuE1zJHJoDwECZye7fsR+lGl
	tFGDTOUMPrcdwLUEfFce9bURdmV4iPkrQg30me/S8MGSFD1qN8NSvTimcMXEBAOLJ6GAwc
	PelSfIoWH8qujYuA9qYfUZYNV0SSX0AfF4vwsk3its18FTUcVr/DUJZCPKtZZUUAjvzbFK
	4uSLSmsBcbU2y5frfqwQk3XgdGQenmSjwNvlJmDFOHTVhcpFbqV7tp5KJHNS3A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792054114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y1B63Gvk85tCVaUybHD/cbffagEhQtWZv+jLE0Kpb/E=;
	b=CqbZcjZnGK9l5EwT1EjKIW9yS+wBghLKAPtMXrzUlHY1qIsldAjxdaQQXRw8tB3ss6p4I4
	u1/tYZi5JXNCYgt8KsC9jzj+UyRmVwLTZnx3v8hTDCnd8zhmJ9UBjmQAkr0Su/xUEit/YK
	Qq4s7RHQCY33n0FrPgfIFiTR2fgjXvPjuvnt21ikZIIr6J3kT2tTrb5kv2JJgVLjMsyJGg
	ik7nJbMPNrh9eZgPt0J1KLcuNOPdClLOm2R304InFTgxLeA23dPWxcJhJT6rsKFSy3khYG
	FbKGDR/98+teBVUrTaosBxw4obQ2TnwIQvnKzc8CbtldFs7o33JUkS8xGyHuRA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 457D47416B1;
	Thu, 15 Oct 2026 10:48:34 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH master 3/3] of: base: use default bus match table when populating /firmware
Date: Thu, 15 Oct 2026 10:48:31 +0200
Message-ID: <20261015084833.4090522-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
References: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_094857_234065_408338AC 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> This is an adoption
    of the corresponding Linux commit: | commit 48e6a9c4a20870e09f85ff1a3628275d6bce31c0
    | Author: Rob Herring (Arm) <robh@kernel.org> | AuthorDate: Tue Jan 13 19:51:58
    2026 -0600 | | of: platform: Use default match table for /firmware | | [...]
    
 
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
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
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
X-Rspamd-Queue-Id: AF060202339
X-Stat-Signature: 5n7e8o95dxojanshejy4q4odpwrcps5g

From: Ahmad Fatoum <a.fatoum@barebox.org>

This is an adoption of the corresponding Linux commit:

| commit 48e6a9c4a20870e09f85ff1a3628275d6bce31c0
| Author:     Rob Herring (Arm) <robh@kernel.org>
| AuthorDate: Tue Jan 13 19:51:58 2026 -0600
|
|     of: platform: Use default match table for /firmware
|
|     Calling of_platform_populate() without a match table will only populate
|     the immediate child nodes under /firmware. This is usually fine, but in
|     the case of something like a "simple-mfd" node such as
|     "raspberrypi,bcm2835-firmware", those child nodes will not be populated.
|     And subsequent calls won't work either because the /firmware node is
|     marked as processed already.
|
|     Switch the call to of_platform_default_populate() to solve this problem.
|     It should be a nop for existing cases.
|
|     Fixes: 3aa0582fdb82 ("of: platform: populate /firmware/ node from of_platform_default_populate_init()")
|     Cc: stable@vger.kernel.org
|     Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
|     Link: https://patch.msgid.link/20260114015158.692170-2-robh@kernel.org
|     Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

This change becomes necessary with the dts sync to Linux v7.1-rc1 in
commit 9eb4ad3c0b8c ("dts: update to v7.1-rc1"), which pulled in Linux
commits:

- 5e3bfd609ffd ("ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes
  to root level")
- 0acb1de2b4df ("arm64: dts: broadcom: bcm2712: Move non simple-bus nodes to
  root level").

On all Raspberry Pi device trees the "raspberrypi,bcm2835-firmware", "simple-mfd"
node moved from /soc/firmware (below a simple-bus, populated recursively) to
/firmware/rpi-firmware. Its clocks, power, gpio and reset children are
no longer populated.

Fixes: cb667b97c663 ("of: populate "/firmware" while populating device tree")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 194888359345..81aa69391692 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3034,7 +3034,7 @@ int of_probe(void)
 
 	node = of_find_node_by_path("/firmware");
 	if (node)
-		of_platform_populate(node, NULL, NULL);
+		of_platform_populate(node, of_default_bus_match_table, NULL);
 
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
-- 
2.47.3




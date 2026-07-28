Delivery-date: Tue, 28 Jul 2026 14:47:34 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wohDa-003nER-0r
	for lore@lore.pengutronix.de;
	Tue, 28 Jul 2026 14:47:34 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9A5D82029DD
	for <lore@pengutronix.de>; Tue, 28 Jul 2026 14:47:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zaO8ew5u;
	dkim=fail ("headers rsa verify failed") header.d=kelvaneos.eu header.s=x header.b=QkHMk4gt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:
	Mime-Version:Content-Transfer-Encoding:Content-Type:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j9v98uUvyL8Axe/AKzd8h6tANWB6ZE0izTVRgAL71kE=; b=zaO8ew5uv7zKUb7BVJPkiS65+5
	scz/DEU7Z6eVDAy/jXTFJS5Kn8CLkgI6mpH9mBwaMXUaju4B6u2tlEzRhn6m77SkRALZh20IxITMj
	5AvOhvdqLUGPgYxImO4BcPk9RqPexcvel4UNaTcrl/1FJ8IuOhpD/3lRSzBtPZXUoCHonBIhRT+tj
	ZSmxe4fiOE64QnPwD+V9UdCPDFz8+A7r5dvjRSLab6T5oZZttsZXBH+078DGk2b9tM8k8p4SCpCHf
	9a/JZvZ63Tnc7HTyYEd49aadfzkznTCZCDuTTwWcvSg5QstW0/OMibeMSRg4YGzqkRhCP3db79rkp
	yAYfPlnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wohBo-00000005Hfb-2yM8;
	Tue, 28 Jul 2026 12:45:44 +0000
Received: from mail-108-mta45.mxroute.com ([136.175.108.45])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wohBm-00000005Heb-1f2O
	for barebox@lists.infradead.org;
	Tue, 28 Jul 2026 12:45:43 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta45.mxroute.com (ZoneMTA) with ESMTPSA id 19fa8c25946000c8ef.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Tue, 28 Jul 2026 12:45:36 +0000
X-Zone-Loop: 79c303f084675e9db4be2258ae691a45709453f4e0be
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kelvaneos.eu; s=x; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=j9v98uUvyL8Axe/AKzd8h6tANWB6ZE0izTVRgAL71kE=; b=QkHMk4gt+b/S0K6puUZo65Otip
	nm8+xA4g3uc0BMVolHjA683iucKt8lKEpWFdUFxFyUJj5bX96ONb+NgQ3HteQCFSDOEozcrjESBg9
	v4X2L2ANgBroJ4SL+vCUamYdZoBN0mhWGVo9OF/8jYT3i2H6TNcbYq8E2eLQL7InoeDyqcqyKaKIF
	yrUaBmAcRvpTZUg+pR9Bev1lCdmZZ6LNSI8TLBAXvrmXEHiXVHwyGP9xyRLb+k/sOnGUqCDwLjGvu
	mvHHiNvIIOZ/NvKBQWMXamgFBCxgqnvbjd8YosV3tp+9pgD7KtuzLqpNNloPSHIaLBJlbt/TeXEi1
	tmc8WV+A==;
From: Raymond | KelvaneOS <raymond@kelvaneos.eu>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: barebox,state on the EFI payload: boot-disk binding and state.dtb
 trust
Message-Id: <146164AA-62BF-40AC-A83B-83F9D36CF356@kelvaneos.eu>
Date: Tue, 28 Jul 2026 14:45:20 +0200
To: barebox@lists.infradead.org
X-Authenticated-Id: raymond@kelvaneos.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_054542_519386_56D7FA21 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, We are evaluating barebox as the boot selector for an
   immutable Linux distribution on UEFI x86-64, with A/B generations and barebox,state
    in a dedicated GPT partition. Two things in the EFI payload I [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 5s4jfz3yfq93ostjibc76zwbs65rcwfh
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MV_CASE(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[kelvaneos.eu];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[kelvaneos.eu:s=x];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kelvaneos.eu:-];
	FROM_NEQ_ENVFROM(0.00)[raymond@kelvaneos.eu,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[136.175.111.3:received];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 9A5D82029DD

Hi,

We are evaluating barebox as the boot selector for an immutable Linux
distribution on UEFI x86-64, with A/B generations and barebox,state in a
dedicated GPT partition. Two things in the EFI payload I could not settle
from the source, and I would rather ask than guess.

1) Binding state to the boot disk

We want the state backend to resolve to a partition on the disk barebox
was loaded from, without baking a machine-specific PARTUUID into the
device tree.

barebox,bootsource together with storage-by-alias looks like the intended
composition, and state.c already resolves a whole-disk backend to the
state partition by GPT type GUID. But bootsource_get_alias_stem() in
common/bootsource.c has no case for BOOTSOURCE_HD or BOOTSOURCE_USB, so
bootsource_of_node_get() returns NULL on the paths the EFI payload uses.

Is there an intended mechanism here that I have missed? If not, would a
patch adding those bootsource cases be welcome, or were they left out for
a reason?

2) Trusting state.dtb under Secure Boot

efi/payload/init.c reads the state description from
/boot/EFI/barebox/state.dtb when CONFIG_STATE is enabled and /boot is
mounted. That file is not covered by the signature on the barebox EFI
binary, so with Secure Boot enabled and our own keys enrolled, the layout
and storage association of the state area remain modifiable while the
rest of the chain is authenticated.

Is there an existing way to require a built-in state description instead,
or to authenticate that file? If not, would a Kconfig option to disable
the external load path be acceptable?

Happy to do the work on either if the direction is agreed.

Thanks,
Raymond Zwarts



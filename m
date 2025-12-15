Delivery-date: Mon, 15 Dec 2025 08:35:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV378-00Bf3r-1d
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:35:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV377-00030E-Vd
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:35:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aIcbuVCA4Rg+suLfQJRvBqmSlJTcD76tTNImjgQKXEk=; b=OfFbFcL7WWbgs7l6jaGFRuVmoF
	TEI3iqwYgOGeRK02Ez0tOSaZWrqR84p7jjCrZpTQAhN/1SmRaYtdEMOD2jzysEVhjHNewofhor3Rc
	Qdv3XUynFMrr3ZnmO0Hcq0fd5ivFKBfGVncvWsakl2qmEpDhF9JlQUxrxWUZbSdkilkWwGoOLDKoq
	svZUEBkGkFB1X3DH/15Ryy5H1HuSKnJiMH1t6wAygKsRvrz6UD75rCsN0+sDub8Sd170AwSf2s4iw
	dU4EobNIhiy22DEarmiAYwUV6RiCPqzBAIdNSN2q+fXttWibNL1pT3/KVFQw00J409r6cWzrHxErb
	pax0hQbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV36k-00000003D2w-227C;
	Mon, 15 Dec 2025 07:35:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV36i-00000003D25-1h6Y
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV36Y-0002qI-TX; Mon, 15 Dec 2025 08:34:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV36Y-005k8F-2L;
	Mon, 15 Dec 2025 08:34:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV36Y-000000012Hj-2nQ3;
	Mon, 15 Dec 2025 08:34:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
References: <20251211202435.1626910-1-a.fatoum@pengutronix.de>
Message-Id: <176578409066.247092.12657239434767983952.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:34:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_233500_450275_D897F504 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] fixup! efi: add option to generate vfat file
 for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:24:27 +0100, Ahmad Fatoum wrote:
> efi: fix generation for non !EFI_STUB configurations
> 
> The if currently always succeeded and trying to build the payload code
> on sandbox unearthes another issue, so fix both.
> 
> 

Applied, thanks!

[1/3] fixup! efi: add option to generate vfat file for barebox.efi
      (no commit info)
[2/3] malloc: define malloc_add_pool outside of TLSF
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a0cb4bac832 (link may not be stable)
[3/3] efi: payload: enable build for sandbox
      https://git.pengutronix.de/cgit/barebox/commit/?id=8177be1f9bcd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




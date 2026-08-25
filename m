Delivery-date: Tue, 25 Aug 2026 15:50:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyrXi-0075Vf-2q
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 15:50:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6B4C02024A2
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 15:50:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=bqCnvL42;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xb7lXYdsh8C8suf6Y9G0HdE+jTxGBKWr0zduKbBlGno=; b=bqCnvL42hmmdJZFUbOFMbcpZWu
	uMdARMIu8xLYYb6JTPWgxXMAmA16VgXl5zDT2DrqNdGcX4YEtdB9KSd2H2QLSTET57ZVzVFJRW2Yj
	O5jC5KTMy+NGkcM7L2fpDL/GtY88Bs6nzQqPdjKPaucAqD8gi/NsH/6Xa7oc/hJlQwvAE4m0oEqrk
	C49ivDg2eP5NgNlTLXihn9qChgp9z27l+I+toan6sngZUaED/n1LHAQEyhvCdL97nTEa19zuwqq1Z
	Ru36Ap35XetnfLffpdD26wDgYwLavrWUjV+2983v8Tx8mA+xQeZHJGboO5tNkuUidTVbMzSvQmxCQ
	YfdgMlqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrWr-00000000txw-1Ve0;
	Tue, 25 Aug 2026 13:49:29 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyrWl-00000000twc-1yJD
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 13:49:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9CAF1202495;
	Tue, 25 Aug 2026 15:49:17 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrWf-003HbX-1h;
	Tue, 25 Aug 2026 15:49:17 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyrWf-00000002qCo-1wje;
	Tue, 25 Aug 2026 15:49:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
References: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] ARM: lds: place EFI runtime code and data in
 separate PT_LOAD segments
Message-Id: <178766575746.677163.7029129123918534475.b4-ty@pengutronix.de>
Date: Tue, 25 Aug 2026 15:49:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_064923_659209_7B06A329 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 09:29:51 +0200, Ahmad Fatoum wrote: >
    EFI runtime services support was added before barebox proper was made an
   > ELF and back then it proved too cumbersome to have two non-adjacen [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Queue-Id: 6B4C02024A2
X-Spamd-Result: default: False [-57.71 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: obd9fqza1pifgq697mtdrk53m3dab3ce


On Mon, 24 Aug 2026 09:29:51 +0200, Ahmad Fatoum wrote:
> EFI runtime services support was added before barebox proper was made an
> ELF and back then it proved too cumbersome to have two non-adjacent text
> areas for each of the boot-time and run-time portions.
> 
> Now that barebox proper is an ELF, let's move the EFI runtime data and
> text each into its own segment with the appropriate segment flags, so
> pbl_mmu_setup_from_elf() can apply the correct protections.
> 
> [...]

Applied, thanks!

[1/4] ARM: lds: place EFI runtime code and data in separate PT_LOAD segments
      https://git.pengutronix.de/cgit/barebox/commit/?id=2aae71d068f6 (link may not be stable)
[2/4] efi: loader: map code-type page allocations executable
      https://git.pengutronix.de/cgit/barebox/commit/?id=52abcfa25ece (link may not be stable)
[3/4] ARM: allow CONFIG_ARM_MMU_PERMISSIONS together with EFI_RUNTIME
      https://git.pengutronix.de/cgit/barebox/commit/?id=9d492e9c03b4 (link may not be stable)
[4/4] test: py: efiloader: test EFI ResetSystem from booted Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=4eb882cebdc1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




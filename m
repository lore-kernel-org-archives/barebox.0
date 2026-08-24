Delivery-date: Mon, 24 Aug 2026 14:29:16 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTng-006hPI-0P
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 14:29:16 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AE4012010D6
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 14:29:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uMjTj7z9;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/LdNLZwf7IK2O0BDRRNU1W9T8zOFUgd8B73pkCEGBo=; b=uMjTj7z9l6+BLstgKenqLU9oGa
	UzIdPA4p10w/M3idEb7113n6s/oRc8ULm2bFv5FfNM98YbsTR9H3uChSvl6hOXn9ue1ZGLtk1XdU2
	NPUzgw7QwgKJdRXJmSH/H/VPcHIsiia2hjV+MvkNZHIK1sMfXCL4WDGauAJuNfm3Lg1ShWFO+wwqF
	eV3kw+TbvZDLrlY97mBy2xKJhYwf5H+YH9a64xelW3Y41OMpJL3wL1NA/PxuE9TQbAfxpg87kv04I
	XkOsme9irBroW8j+PY96icGL6cpq5xYJ35L//lI+YB70+kFzCUz/hBS2fuKe7wv7sg/r69Zi086VS
	wiNB7bjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTmY-0000000Gbbi-30n9;
	Mon, 24 Aug 2026 12:28:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTmU-0000000Gbaw-1IgO
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:28:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4EF54200444;
	Mon, 24 Aug 2026 14:28:00 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyTmS-0036SK-0l;
	Mon, 24 Aug 2026 14:28:00 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyTmS-0000000C7sR-0flj;
	Mon, 24 Aug 2026 14:28:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
References: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] ARM: lds: place EFI runtime code and data in
 separate PT_LOAD segments
Message-Id: <178757448015.2890192.18436459124228442691.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 14:28:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_052802_507510_4B78A020 
X-CRM114-Status: UNSURE (   7.05  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: jqib49zd8ufd1mfab48mu69513xr3chf
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AE4012010D6


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
      https://git.pengutronix.de/cgit/barebox/commit/?id=38e03bdde67f (link may not be stable)
[2/4] efi: loader: map code-type page allocations executable
      https://git.pengutronix.de/cgit/barebox/commit/?id=834b1ba72ede (link may not be stable)
[3/4] ARM: allow CONFIG_ARM_MMU_PERMISSIONS together with EFI_RUNTIME
      https://git.pengutronix.de/cgit/barebox/commit/?id=35c6febf6725 (link may not be stable)
[4/4] test: py: efiloader: test EFI ResetSystem from booted Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=10305208ccf8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




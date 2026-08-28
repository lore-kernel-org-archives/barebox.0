Delivery-date: Fri, 28 Aug 2026 14:01:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzvGY-00894r-2m
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 14:01:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 749DE202454
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 14:01:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=FaQ8zs4X;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+RiwZAE928WxFDYBKqccBVlR4+q4MHmZwWDDaP5kh8Q=; b=FaQ8zs4Xd7hz+/KX+HqkeUxC3k
	noXVamVUToCuRpBg2XNbO4svOwtoFRZBOmqD/tTZBRygJIU8e/72rFcGRH6y+22dbQIELWXE36Ybq
	ybkKeg1eMz2o8j3Sje0MN1IRJGv3IZ0gOuoH6H3N9I0/Xhm+tUgbt17jnuUmu2t7y9lUqrGajtOWZ
	A+l4OLfWahEovKSQ0Gs3pVI/2Szrg077rDGlP63CpXN+6V/QhOOePCc5JD1Tg2l+i2oXT1FpSae7g
	oNkqAsaY4uC5GeULG8z9wtlLHOnrMVxo1+dpn2uS9DYPiPgGpO22gov2qZRdlvyq49FRL8yX0y5Gu
	Q27flosQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvFX-00000005hFj-0yAL;
	Fri, 28 Aug 2026 11:59:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvFU-00000005hFO-1uaA
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 11:59:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5CE89200FE5;
	Fri, 28 Aug 2026 13:59:54 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzvFS-003lMQ-0t;
	Fri, 28 Aug 2026 13:59:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wzvFS-00000001idQ-0quU;
	Fri, 28 Aug 2026 13:59:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260826093701.2486248-1-a.fatoum@pengutronix.de>
References: <20260826093701.2486248-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/4] efi: loader: don't truncate the status in
 efi_init_runtime_variable_supported()
Message-Id: <178791839419.409797.4165077143922781185.b4-ty@pengutronix.de>
Date: Fri, 28 Aug 2026 13:59:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_045956_646131_CCB98344 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 26 Aug 2026 11:36:48 +0200, Ahmad Fatoum wrote: >
    The return values of efi_set_variable_int() are efi_status_t, i.e. 64-bit
    > on 64-bit targets with the error bit in the topmost bit. Collecti [...]
    
 
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
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 8e1c7fpjxmbmwqdj8gu395fccnkaydzx
X-Rspamd-Queue-Id: 749DE202454


On Wed, 26 Aug 2026 11:36:48 +0200, Ahmad Fatoum wrote:
> The return values of efi_set_variable_int() are efi_status_t, i.e. 64-bit
> on 64-bit targets with the error bit in the topmost bit. Collecting them
> in an int drops that bit, so the value returned to
> efi_init_runtime_supported() is a small positive number that no longer
> identifies an EFI error: EFI_OUT_OF_RESOURCES arrives as 9.
> 
> Callers only compared against EFI_SUCCESS so far, which happens to still
> work, but the status is worth printing and the next commit does so.
> 
> [...]

Applied, thanks!

[1/4] efi: loader: don't truncate the status in efi_init_runtime_variable_supported()
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d6c716a8028 (link may not be stable)
[2/4] efi: loader: fix sign of the error passed to ERR_PTR()
      https://git.pengutronix.de/cgit/barebox/commit/?id=da88be3df69e (link may not be stable)
[3/4] efi: loader: disk: don't require block-size aligned I/O buffers
      https://git.pengutronix.de/cgit/barebox/commit/?id=5fcc6e80e1c3 (link may not be stable)
[4/4] efi: loader: select PRINTF_WCHAR
      https://git.pengutronix.de/cgit/barebox/commit/?id=6904de3009df (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




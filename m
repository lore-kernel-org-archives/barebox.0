Delivery-date: Wed, 26 Aug 2026 14:12:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCUe-007Qc8-2O
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:12:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BE55C20203F
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:12:36 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SmWcBfCq;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=gN4+sbJE;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:To:From:Subject:Content-Transfer-Encoding:Content-Type
	:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GYTlS5pefVinguiDiQhB0OLXNw0HaqXFdZyfOfylYzU=; b=SmWcBfCqded6WinfjE171/b+w4
	qgabd4bRjxp6P+5knp7Ciu+e5EF0oxDt1HefKOq+Wf7zprN4Qc1Nnm2WMcftJLl8UkXiPKumlRFzI
	CkTgijG1XNh3i2nUbOT4JgtAFM5eh1ThXU4wLxNbrgxqiwM1IwqS4PPQ9S28c5VUcIQOUe64gYJz6
	NFAyTLKfyUdsWZ7JBvRjx/ZscJMsCHHUAcRDxajj1/z3k9UyrBNmkoXI66TTS9nNJr6hCMBV89IhR
	p8cv7iHt9702i9701+NcWBd+NX5DOzTcMkVklPk4orPgLqhePNmaKxpu2KonhhzbGiihbj7v3h9Wu
	Kz7WA4cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCUF-00000002Osh-2jwq;
	Wed, 26 Aug 2026 12:12:11 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCUB-00000002OrI-0Nij
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:12:09 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-49554ebb87dso7270725e9.3
        for <barebox@lists.infradead.org>; Wed, 26 Aug 2026 05:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787746325; x=1788351125; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=GYTlS5pefVinguiDiQhB0OLXNw0HaqXFdZyfOfylYzU=;
        b=gN4+sbJEGMBoxWi6X/wej8NjHOBJmhAWd6Tsgs0OUyWijHF4CXWwE4adi5Wd4zd1Ms
         sQDH2quCdUGTWqfg+In12FtlEpxBP+ZHIqt7D00uMtICN+vM0GPe2i4tIelb2AjHomAj
         REIsMMxOiyVxbIHncWZ4c7DLMUOTXDVPVWF6cSMqqSYlB0iRS89Ww7M1TVbCneNvZIkQ
         MCKG8eomXO1pM1SBrS83SEiIcUbsuTluy5qC3XOgEJUYrrYJL6h71U+K9YizSKZQZoaM
         3+PiAs4p+Yef3HjrILr09YUEUSxfdQlfwc/yAX1w4WL2rFQFSA94WcssR5F1cSEH1fmO
         ZTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787746325; x=1788351125;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GYTlS5pefVinguiDiQhB0OLXNw0HaqXFdZyfOfylYzU=;
        b=OBnMV7ko1l6ziAZfZyEQQvwGleCwP/m8TLU9dSZ1VJSleTkKNprb7hTzPzvTlp7B67
         BUhSmsPypzbnIIfIvZQP2rHQsKVA4xwMhOXyYvOm+qPB+nUYqgf4w2+6jFt6VXRk48+l
         HBxlQ7xVS8BLHhsSlYDQ1ZnTnxiKnsAQLYJXz0NI1rgyp6qhn1fO2G1zEggxvBW5jV+8
         iE8PLD2Vbv7Uq00n95DDPkLzTuZYZ/Knl83ubVyTHQY3ulzdJR3ieP7Ep5M6+GON92g6
         cijS4K/woeMM2Q1b5vuvAxF3jAlKvVDQtQ8Og0mDymW4/duGZeKl+dzqxuss6ZKZTIQH
         qP/A==
X-Forwarded-Encrypted: i=1; AHgh+RrqSk77Es+pw9mYpD3Ss1DN7CnfbZSa9bkA6ZIBIITajktt//XCwwy/fBOPLndBQOov933DcBWW@lists.infradead.org
X-Gm-Message-State: AFuF++k4nCOepi2e/auq9oNi+BfbijSx4NCRjD4m3LRdzWJzxrpNK1w6
	eObmXO79bhBs0V1iNI0jROH95r4EyzrVCmahiVM/odSB+pKwodJAaMg8uqxKBA==
X-Gm-Gg: AR+sD13rpO1kp1STr0m/grd6mYN4P+yHc2fULIGm3F8fuRIADR3EL1+XZjL7TnZtfyc
	JlHTU7RA181DV6Ag5C1yebXJIQICN4TjYN0mw9w5jdPygMpidpSyR5MTkfkspB1OwijM1mvCHf8
	3BxZk0L3ik7luhE2zSHzdXc/YkpA+ceIywZEdaLpD6zLDKzyrJm5eLQntxpaTopIYaf9PlRMfSY
	N3m/etimC2LHGauLeldvwfl7cWjo1NqArwqsWAI+YHDSKmMcN8dRs7EMCsEs+UyXoXcyykf2Bnr
	cHq1H0FeGnzpQTtI6ivl64t778VlIMjT32ikv5f4BP8rLlJp39qeFNSniTjuYGTwGGsCneCQ0xx
	3+GpZ+CZSjBexY8D+Ippf8ERoWgQhObL30PnRv293mqkzrtBQ1DrqsTcEOnV1lWQ9U6WQBGzuke
	6Z2l3kJzamr1GxbJF8RHThuGU4fO3M5z+3tKd84Xac1XgPv8uLjFq/ua3Xkrq9+xh6LTwoMoKfg
	tX1MuEy0xfeynZAFwlyZQ8JnnUvT6gWYN8ZPimPPr1EURkA4JxPLaxuc3wH+BHuTb0Gmi/Y9iLm
	6e3l5mpyFQ==
X-Received: by 2002:a05:600c:8b4c:b0:499:a5fc:207e with SMTP id 5b1f17b1804b1-499dc7044c5mr61171675e9.8.1787746325009;
        Wed, 26 Aug 2026 05:12:05 -0700 (PDT)
Received: from [192.168.1.133] ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e28dc0d6sm2615545f8f.18.2026.08.26.05.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 05:12:04 -0700 (PDT)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] usb: dwc2: skip polling for the soft reset clear bit
 and add after reset delay
From: chalianis1@gmail.com
To: chalianis1@gmail.com
In-Reply-To: <178774529085.956898.8142660027039059393.b4-reply@b4>
References: <E1we9fW-00000005ggu-3u1v@pty.whiteo.stw.pengutronix.de>
 <178774529085.956898.8142660027039059393.b4-reply@b4>
Date: Wed, 26 Aug 2026 14:12:02 +0200
Message-Id: <178774632284.975604.15850046894637246512.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787746323; l=3342;
 i=anis.chali@ro-main.com; s=20260826; h=from:subject:message-id;
 bh=mJJURMtv3veZAvnMxl4EhDGnVD/KhjinwVn38EiiaCw=;
 b=xfzfy2PhptXBxL3E3tszt0L1naHIM+QNQKtBimW7bj5eo0w5qInhRulxRvBApSiYLCV7xndT7
 eq+goySk/TTCX71jsFjHDS0HqjWtQTU1XxA8wPUwxmHcoj1Mnxj1ApL
X-Developer-Key: i=anis.chali@ro-main.com; a=ed25519;
 pk=TqnEtud6Lz6n/ejHxgJEbC95QoqQs4Xs4Wl2TbjIVTk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051207_206599_7DE995EF 
X-CRM114-Status: GOOD (  32.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-26 13:54 +0200, > On 2026-06-29 10:56 +0000, Sascha
    Hauer wrote: > > On 2026-06-23 10:23, chalianis1 wrote: > > > From: Chali
    Anis > > > > > > The RPi4 SoC do not deassert GRSTCTL_CSFTR [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:331 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.81 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:chalianis1@gmail.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::331:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ggbxinkp151bttypkk6xq1c4bzdotmok
X-Rspamd-Queue-Id: BE55C20203F

On 2026-08-26 13:54 +0200, chalianis1@gmail.com wrote:
> On 2026-06-29 10:56 +0000, Sascha Hauer wrote:
> > On 2026-06-23 10:23, chalianis1 wrote:
> > > From: Chali Anis <chalianis1@gmail.com>
> > > 
> > > The RPi4 SoC do not deassert GRSTCTL_CSFTRST within the expected
> > > window but continue to operate correctly, causing probe to fail
> > > with ETIMEDOUT.
> > 
> > Does "within the expected window" imply that there is a bigger window in
> > which it is de-asserted?
> >
> What I mean is within the expected window according to the SoC datasheet
> of RK3588 which I just realized that I wrongly thought that it has a DWC2.
> Rockchip RK3588 TRM V1.0-Part2 20220309 page 2221 
> > > 
> > > Per the datasheet, GRSTCTL_CSFTRST is self-clearing but requires at least
> > > 3 PHY clocks after reset before any PHY domain access. Add a 1us delay to
> > > satisfy this requirement.
> > 
> > Which datasheet, the SoC datasheet or a DWC2 datasheet?
> >
> the SOC one.
> > I'm just asking if there is a chance to not need a SoC check here.
> > 
> > Sascha
> > 
> > > 
> > > Signed-off-by: Chali Anis <chalianis1@gmail.com>
> > > ---
> > >  drivers/usb/dwc2/core.c | 13 +++++++++----
> > >  1 file changed, 9 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> > > index 60cc690fdbc0..6d4b7930da9e 100644
> > > --- a/drivers/usb/dwc2/core.c
> > > +++ b/drivers/usb/dwc2/core.c
> > > @@ -809,11 +809,16 @@ int dwc2_core_reset(struct dwc2 *dwc2)
> > >  	greset |= GRSTCTL_CSFTRST;
> > >  	dwc2_writel(dwc2, greset, GRSTCTL);
> > >  
> > > -	ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> > > -	if (ret) {
> > > -		dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
> > > +	/* Wait for at least 3 PHY Clocks */
> > > +	udelay(1);
> > > +
> > > +	if (!of_machine_is_compatible("brcm,bcm2711")) {
> > > +		ret = dwc2_wait_bit_clear(dwc2, GRSTCTL, GRSTCTL_CSFTRST, 10000);
> > > +		if (ret) {
> > > +			dwc2_warn(dwc2, "%s: Timeout! Waiting for Core Soft Reset\n",
> > >  				__func__);
> > > -		return ret;
> > > +			return ret;
> > > +		}
> > >  	}
> > >  
> > >  	if (wait_for_host_mode)
> > > 
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> > 
> > 
> > 
> 
> Best regards.
> Anis
> 
> 
> 
> 
I reply again on the thread because I tested something that works
by adding a delay on the the top of dwc2_core_reset the issue is
resolved and corresponds more for what the SoC even if it is not
the good datasheet stipulates see below.

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 60cc690fdb..1fb8e2c6ac 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -776,6 +776,7 @@ int dwc2_core_reset(struct dwc2 *dwc2)
 
        dwc2_dbg(dwc2, "%s(%p)\n", __func__, dwc2);
 
+       udelay(10);
        /* Wait for AHB master IDLE state. */
        ret = dwc2_wait_bit_set(dwc2, GRSTCTL, GRSTCTL_AHBIDLE, 10000);
        if (ret) {

Best regards,
Anis




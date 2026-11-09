Delivery-date: Mon, 09 Nov 2026 11:06:08 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQMGN-008zCT-2R
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 11:06:08 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B83032006AF
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 11:06:07 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uJMIZUe0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QQplG1zp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218767;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+IvYWzjWQSXFJ5d8X8bqE+GikM/64KED3z2/qpduYW0=;
	b=BdYUB5hHbRlS3mBbinR3fRdJGZD/WbRvqr32tm9aFX7ZZrNoWlScvrCft8WujEJ5sld86K
	FNG5vLbzLvn6TS5I+Vfw+TS4KuIZNF3Nmc90UE/2AH9nHs1th6PYEleL7fTj2Nt4a3esDD
	x9zaKfgrl71RFWClBDndUcZ2Q9FvQ8DZYMtHX1eiZk35ZhxJZ/6LLvpa2yhMX3dk/jAjJf
	WA7EQsMwgOFgEok+yQZgZSdYcakRI/MWf5AUzFoJUCtAhrsbsxkPZOG5Np0FIt70QJkNl7
	iuecRhWT+5LVDf+lEPk4VYHKYsRB/ODxAULS8ClXF32gD0nypSRPOigLjJS4eg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794218767; a=rsa-sha256;
	cv=pass;
	b=fPmn3rZtEPd3utqDvwGyyEnH7aHwki64hQG0rvdyEctSv1mIFGNEDG/1ZjPaRhzDzcok9s
	+KtPg5TXD8odav+/510Zt/snywLGj/RLrNBfsbErdncR5ylwF40vSodbd0sr0dW4EOzNmQ
	80DcgCfFsyOA7yjYpoWR1qn3NVM4IqX/6t7oVfEpAH4KkLEos3S1Ao2u7Ao2bZBoSrjsMP
	forhOjhbRVzWf74+C0B7K3BEXFfBuL7Z6zny2Tn1HJAVtOOcTqbSU2s5LvL+5PxLN8B3GS
	1Z5/w+PcRrMCEjbkbmL1IGV46AYow37jWM1DODm5EepHFGffUHDnJ10lp7P+0A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uJMIZUe0;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QQplG1zp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=+IvYWzjWQSXFJ5d8X8bqE+GikM/64KED3z2/qpduYW0=; b=uJMIZUe0eO+y9w
	9b1jSnIu1VIB2z/4KIRvXTYeHGLgG19/QhLBMe5pZwIXgwVaCxH41QSOCpF2DXo/ZhwLFebgvlnlY
	44zJE88GXUfyx5sp0jV2tjKKZ+CR60BG034FrvPbrWFUcc8u5HXMYGzraZTzLtW9xOpPSmC00f0W5
	7pw60oc0xLi9LjRuQi4VXTVz8Cxp/j+OmLKF86co/MSh3pM6TRiFNgr1qbT8LjcKrK03bdtC+HQPE
	v0zk0hd+rnW2JDtH0WoTCUSwTrANIKCqJQ7dg/nYOcJHlVzhuIUqFQDPzTwjm15MPEiPHcmFQaPtN
	amsZhkDDyKBoNVtIrEPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLEX-000000009rK-319F;
	Mon, 09 Nov 2026 09:00:09 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLEU-000000009qw-1auk
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:00:08 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7CB33200FB6;
	Mon, 09 Nov 2026 10:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+IvYWzjWQSXFJ5d8X8bqE+GikM/64KED3z2/qpduYW0=;
	b=QQplG1zpZrluvv4UUMYd5u8A6V3H1uhvh5ExyWsi+ixRex/fg2bJSrMkcJ6SU7pF2+PjWJ
	VErq19XputPAJMndqXvMTMKY+RJrP04U5gFr0aBc7LaKOOjRF0u2K0Ln8gOVqq35Fq+eVK
	5V7sWgApPLzQPAPFEkp6C5FCh+Ho5vV5tSopcYBZ+dWmBc/lkuhB5/zs1QtTHIpXpEePKB
	N/D2A1PNAq6+87PzgqP/snttEsx8sGbmYz+pluOyNfdSaR+3v3pWTiYvZXeYNWid6tvRMt
	Odg9ciHPFHvyxCv0DDxYY+ye3n2x513yvSJwVsImoI9BLLHdsTvkgQBBHeBoYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794214804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+IvYWzjWQSXFJ5d8X8bqE+GikM/64KED3z2/qpduYW0=;
	b=MtZDRIxPoYKFHZhOJeCqFIoY705JFHl8WVXA1aUBn1AXN3vI4Kq0/tWM2GWnksgy6sNeZ/
	BH0ZFKXmmwpmT6RPCaqqGhkeVkStPotekrwocTOdn1434I3/5SsfIO4R2bCCdLuS5ZblJq
	aXPljgYip0OghxUYNOtIX10wofO1rUPJEFHozTwW7xeDYoSe50/5wLNtl6LO7imH2SXJJh
	WUmY7BX2+8ZBl628vvi5HeWXAay+sI/UwQ91kM0lNa0BZAtwFNaF1QzcWUnRNApcS4hLFX
	K562KsXqIq/ZqwZ7JLn8OPDKq6s9M5e2i7QZSuHMpPJBNjiZlh6G4F1aX9htYQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794214804; a=rsa-sha256;
	cv=none;
	b=aA2UlA0Uqj1UhO5Snj0DdpjME6x234z9QaTqBzCJrBYBHqEv3zO4TswY3Dzew+9Y0RtH5y
	t5HX6EPDmNInratOdzAVNoFcmeoHZvXHCiuT/Vw1RiZJz3r6Iu0YPFZZW+LAsd6M0118+4
	ERIZzandEpA90JHKWJRFIudBa2md7QknZ02YzgUrDOO39ymw6rxVZZcNRkCI1dHfHGAwHW
	mBBbiIrtJGVJ01B813D+xNxd/1l+NaTFgChNxDP8H8d81AcgzkR/DvR3fPxA05vmqfLj65
	UXB1nFEMQ0/LE86qdiETqkSWRao+nt3iuPPrvhB48F/LgQjWxb+Yo1FBYeFFiA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 6788AFF898;
	Mon, 09 Nov 2026 10:00:04 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108201605.1401306-1-a.fatoum@barebox.org>
References: <20261108201605.1401306-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] commands: go: start files 4 KiB aligned
Message-Id: <179421480440.492723.16820878652952095553.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:00:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_010006_621286_33F35DF5 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 21:15:42 +0100, Ahmad Fatoum wrote: >
    go memmaps the file and jumps to wherever its data happens to be. For a >
    file in ramfs, that's a malloc'ed chunk, but barebox on ARM64 addre [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B83032006AF
X-Stat-Signature: kbhpknwi9m5pdhfhoakcsu7yedcoq9ye
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 21:15:42 +0100, Ahmad Fatoum wrote:
> go memmaps the file and jumps to wherever its data happens to be. For a
> file in ramfs, that's a malloc'ed chunk, but barebox on ARM64 addresses
> its data with adrp and needs to run 4 KiB aligned.
> 
> Let's read files that can't be memmapped 4 KiB aligned into an aligned
> buffer instead. This also makes go work with files that can't be
> memmapped at all, like those on TFTP.
> 
> [...]

Applied, thanks!

[1/1] commands: go: start files 4 KiB aligned
      https://git.pengutronix.de/cgit/barebox/commit/?id=7fa5fc73ccf4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




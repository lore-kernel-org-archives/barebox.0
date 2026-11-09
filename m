Delivery-date: Mon, 09 Nov 2026 10:54:34 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQM5B-008ysf-1u
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 10:54:34 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C9E6D2006AF
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 10:54:33 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zUi0kCXH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JyxUO7C3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218073;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=40ImgOXTA+fNwn6I9hBy/z/dxJSl2WGHklSopeHzDyM=;
	b=DZ/LbIFtqkncw1r7o4Kdj1G1HZVbl3U9XiUMbmeNVqDzR9D7FSkWAdZyorkSWpp8G8TTX4
	aOHh2EIJyck47pUSJ5GPmrS3ecT2ZN5TI+5W5AR11rQiX7cin4BiRhfen8EJrMrvqCTOs+
	vxCfBd+3/Y7PBvXkr8jqs5fqOsnYDqj96aanGEbHb/mk9Jgl2YftZMsYra4+RyIScGXPMi
	p+PFM/PsAEQOr51nWrxIHs9Da9k3xXXDEOxU4sXV3q+r9dMSdcYiPE8k432g/alyToXldW
	g4BIVX28/H3X2FAw7jO/CCVkFMDk4maNyjrn9v0feCVEc2qukhf/I/RHjjk0eg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794218073; a=rsa-sha256;
	cv=pass;
	b=VZq6z0296D0jhWmOJrO/99f8ClpQVrJCPlAgbxeRnXiu9OOGKx71Wn9oO7fFnjNhDP6D4K
	EqaQitU8ehxBBhLr+CHh9wE5U5cnCnEZgGAbD0rF4WTWEe+Q1YNQLJXMamyITSBN7SgDm+
	JLqSndF1ycC5/kBJZtp2PkBBuRN73dZnL3F77Ue/pr+16h2v5HIAPrehGCnkmLsmyxn1hj
	Hqi2UwgMSlDuinzVG1X20loK4qlU4m1KUudp/u0NtBRNCAKT5Iha7pRAdmINZ5N9Zt1sAA
	KSjGFgv1GZdm7nJOogF4dR2uzdj1BU29JblewBKRsYcheP6qQIARfMmUXdDvHA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zUi0kCXH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JyxUO7C3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=40ImgOXTA+fNwn6I9hBy/z/dxJSl2WGHklSopeHzDyM=; b=zUi0kCXHKJYoLZ
	2ffH2lqUhJ3k/Uy5M62UmnKVmlrB4x6rOGg4wM1bU7fqhwA4w409DizVwkikehfymzCqPnb0wavRa
	jF6JBmK8+9DjiHUt7Mglwdbihr6IPpss7h0vp/AmnMc5E/esCZklWDKNe3tBudHT8tWYbMb4ni/TI
	sENRobhOfkBOzhVMIKYD6ok9pyZiKvByGuQTzhqrnDnkSmmq/VBJFZqf3Ty8A+Ko775CPX0l2SDSm
	0u9qBQUinRSynLBwXJVH7wvrpC2MeMV3ZacJSCCYVbqlL9yWicWAf5PRsNKB7kikavFYQP7VEELMG
	vzhTcCfI7qtGo7si8lVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM4D-00000000JC5-1CYr;
	Mon, 09 Nov 2026 09:53:33 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQM4A-00000000JBO-2Yix
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:53:31 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C0EC320087B;
	Mon, 09 Nov 2026 10:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218008;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=40ImgOXTA+fNwn6I9hBy/z/dxJSl2WGHklSopeHzDyM=;
	b=JyxUO7C37E3Q1zavKxacWEwS+nH0x1R8miz9Qy1cqQB4khWcPd3A73kr0AJPQa3uVyqVy1
	2lKGCV6vheFZUWlnRi7G1fmlRyYcftq0MFBuwxVicsJ+Tptw/d8MMjQKQTXfDi0jqKzznQ
	lQq4qSVhMATv6TqLYj3uuRm3T/Mgg5w5iE0zzeWGSbX5SirXFSmLLDskWON6hGyCm55y8G
	oAgYblYbjvztLPtCoX5aEso8641njvruOddOZlkho+fJ6DsVY3OOdF0+dCKqOe13+FtKxs
	wNcCypFT4uKBupSbYEzqP72eb8WKoIUTJAJqtxiStincVsc78TOX5bWQ74CoFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794218008;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=40ImgOXTA+fNwn6I9hBy/z/dxJSl2WGHklSopeHzDyM=;
	b=bFkyKbn7dVpjNEV0xnGHH+dN0Geh9ReskTax8zeD6G7yPwu92tlJr3FIIHrlvxPtYxWI0/
	MQ8O3FgHYR42wbOG4W6enEE+5CYsXURYvvTIKXdcG3MRf1STbpEFF34eFr7snSBwxTVfkP
	BDFaREsshOAAR+CTcu0KIpYfP5euWCWAjRrBi58gzfZi2ZwdORzZcehTaQa8BQJI/SB+QV
	tO04PcCXZ3m8Vo5SJKWm+RXMKB8nShzwL4m/LSSbyEwgdPdmxlWHKZ2i09BnlptctScKxr
	0UY3Q9EpGc/gFYircuEXb0zc3gUAGUuTmwlu8M3n0rtjhrReBmZMXSTw9ACuOA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794218008; a=rsa-sha256;
	cv=none;
	b=LC9neh/U+KI3356n1PJewkajQrB8TPPF9L3RONqvqIyW0D+ByKpKaYvTXdi/rjnwxgVVob
	/pfWAJCQxNkgCI2Xglg57hRT0rRi5HoBfSDepKz6d2FnNh4h0La58+H7/98xQ5AJcqRI5k
	V5Pg94HvwLTVbqUDD3CbYb7A2Islwlg+1R5iiR8+4iL0LulDE+Cafl9SUuLqF0Orylf3qQ
	6LzfhqLsRVrhahINuinR5YBzD2d+aorP6jVYT1GWLXaBw2QvcauzaboLmfd7i6a4tTSwxt
	G+fJgM9mOQRfKZ7EY5dSAxODr0g9bSxU407z0msARtYHYw3/uAmmXymDOn36bA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id B1B93FF961;
	Mon, 09 Nov 2026 10:53:28 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108084652.1231859-1-a.fatoum@barebox.org>
References: <20261108084652.1231859-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] usb: xhci: keep the transaction count out of Max
 Packet Size
Message-Id: <179421800872.534904.6937325044409707147.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:53:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_015330_830475_E9A8A1BB 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 09:46:48 +0100, Ahmad Fatoum wrote: >
    Bits 12:11 of wMaxPacketSize hold the number of additional transactions >
    per microframe of high-speed isochronous and interrupt endpoints. > [...]
    
 
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
X-Spamd-Result: default: False [-60.35 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.94)[99.76%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
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
X-Rspamd-Queue-Id: C9E6D2006AF
X-Stat-Signature: q9zjrp4h5t8gher4b8byn7babxbezn9a
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 09:46:48 +0100, Ahmad Fatoum wrote:
> Bits 12:11 of wMaxPacketSize hold the number of additional transactions
> per microframe of high-speed isochronous and interrupt endpoints.
> xhci_get_endpoint_max_burst() already programs them as Max Burst Size,
> but xhci_set_configuration() copies them into Max Packet Size as well,
> so a high-bandwidth endpoint ends up with a Max Packet Size beyond the
> 1024 bytes a high-speed endpoint can have.
> 
> [...]

Applied, thanks!

[1/1] usb: xhci: keep the transaction count out of Max Packet Size
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c9589d5238c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




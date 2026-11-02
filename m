Delivery-date: Mon, 02 Nov 2026 14:27:13 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNs49-006OJt-0w
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 14:27:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 779B2201B73
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 14:27:13 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cscZED95;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dst+nrct;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793626033;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FQ5HDQX+j8CTydy4rwD+1k/aXsvp6eathkJd6HhwpfE=;
	b=DGDy6F7+aLxEydjt+K+Zxj5Wpa5N0zNGXX+fm6yQmDbED+jYJdv+SZvMOfB0IvlqVdSixg
	UKuZ7oJpWGBfFmfEfaZakTK3fxNERRnqbt+HZ3Ihw4ohTCwMD+1H6hOyMgnhAJHr5niV48
	uXIldXm9pdY9IuM9MLCxnTSBToBNJyJl8TaxF9iY1Txb9+DJcy60yV9e4YbN2Ej7wwmqtN
	wlef9Ii9+y4mwxUfQsFe2QP1yGZTqmqmqhFaeUKcgDloXbbQmGMEh+4DSfOfajNDG5d1H/
	cJyHAQvcux1eJpIaQ3P6lV+dHSiSZxRdoMlpcVsHuW5vSlk2b5Ui1ipyDp2pkw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=cscZED95;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dst+nrct;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793626033; a=rsa-sha256;
	cv=pass;
	b=fS0cFwWL9Mjz2XHj+ail9EE83rKx8CfX48BEqDIFu42kWpUkuFLh0VYxaNoAniMoy8SdW2
	nbQO4f/+bcEd+tJV3Mrhyh2hfi+AO2cSg4+vZRAPo90ybBuX8MSDqUfs2K8xflpvSomWG/
	4Rm6w7bbjZnZv+jPkKbno2WuSiZhloEQxsV7RB6FKems7I2RK0wF0Ujp2936StLqm9Bigu
	qWAFaAf8RTbCIPrZ1XTDPx72rXVubnvh8DtLH9FuFIStHUAmDa2KVsYqvhYgga6NSGoyvJ
	Ndzf7cVPEJVmwpgQBXAD5M68NLASJQcSTzRSKsUmjA9+x9ujGshgMpNsUfObqA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=FQ5HDQX+j8CTydy4rwD+1k/aXsvp6eathkJd6HhwpfE=; b=cscZED95xtQpIo
	S8Yp34evJS535m0WF1/nVh0ZJ5fB1ZqIHkbYESeaCf6ZqLTlo9PETw3EznmQO1n6BbxeFBxns6rCi
	F1eB59kRUi1EW2UiHxp9ZyPZXgRiiObAkbPXZqKWSJrqn4kqZUjSr6H95rTru+eLBBXpxe4a9/E+0
	5F20TL8vhmPEnU3451xGaVWsxyqr/tJkTHI1e05HalY7n87IsCsKSvqldZhGG1r1oFhBTo5Fx2/Os
	GCzc05lS0agpKZxFriLuOJfNpuKR8SwKnmNUAXWjELrWhxkBP7O/KwlQ2DATGMXO+gaod3zDQvM8V
	b6X2dZqCZaUxfYfuwB3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs31-0000000GbVw-2YZq;
	Mon, 02 Nov 2026 13:26:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNs2y-0000000GbUs-1OAJ
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 13:26:02 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D276B200938;
	Mon, 02 Nov 2026 14:25:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793625957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FQ5HDQX+j8CTydy4rwD+1k/aXsvp6eathkJd6HhwpfE=;
	b=dst+nrctAW0wh+QhXnrRPmKQu0cmP/1oJcvGrZ5lATxbS+O6usRkLfxWhAv53H6F0ryE5y
	Kn4nNXXfEnrevpxVBEDToAJJa8bFdArrcs9MEwMmH4ngV5k2NUpvhqvkHTRCffaIxvagZk
	otpw/O34AYyhK26WLl//oVcTm+1EKygEU+AxDtDR8Ny12yWv0o9i/vZmrg/Jb4XnciITCM
	M/P3iW9DfVWAFiYPqyxisq6Aiu4xOCGtneux+2Lm3KbQI82uoG4iX4PkMAnb7BBheQSRmJ
	ec0nc6+cSkWDDL4MFO/2eCCovTz/LGIWxMHmh5asFzTdmCv+2AsBDWLK+X81nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793625957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FQ5HDQX+j8CTydy4rwD+1k/aXsvp6eathkJd6HhwpfE=;
	b=FQYf6mKZhbFnqTe6WX3VaIlX8AqOmsJXZDpdaSi3d5OzWKDk+uSc7ET2kA2Q8sLxaenLq2
	w/y1VcNJWcLrcxpb/P/xeFD9WEz+xB7za0Tk7pAk81nYGNibgwV9A/qlXmDQR2mLZiCJ+b
	6/UF2YNRE2/yMfz0/RV9mak+o+IBl601lJSFWvj1BocEDu22ieNIyZO4emaSz9NXxuPTXn
	nkd2FwjLJeqsoW7xsUw+8XdOwiMctJBYThzoamv/xe22cPvoMXSzlBr6NcXukQaiLi/vdr
	1tDOLm1b236hMR2aftBT6VXqCmqFKirhbjPw4PN2vNOWmN0TURTl37p6nVoidQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793625957; a=rsa-sha256;
	cv=none;
	b=eyM3rJdJ++wW4d8oDh3pxMAZ5B1ameynUnrmeHS97hq51zCYmCmQxNAO0qA8PShXMqB0Tm
	KMbtqdGPGTNchqbIhGVT+zjCCfcN1IzEmMlMElxcM0Sf/TpVYQMU591BrRQLz8VE+uguXd
	b9wfTTpbwJjcnh2qR4XL6p0tpiEo+0ymaQfL8+a7R8IMKPKk8T5Qgc+MFS3kxNTcbagNV+
	8AcnN7GIewq0Fgd1W2hxbIVVrCdVkxO1o+iXld7yoCV8ApQ94CSppHu2TVO7uNUjN2XIvM
	6gZAba1HyfSGt8HMgewbzMAyzkpJjtbe5wQWityA43ttWbsUj0hs9lpUpzXiiQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id C3201FFA72;
	Mon, 02 Nov 2026 14:25:57 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
References: <20261102-fs-getlink-fixes-v2-0-37df92e4d0d3@pengutronix.de>
Subject: Re: [PATCH v2 0/4] fs: return error pointers from ->get_link() on
 failure
Message-Id: <179362595779.2747809.17246124292515949563.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 14:25:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_052600_530715_EFDF26AE 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 02 Nov 2026 10:31:19 +0100, Sascha Hauer wrote: >
    Like in Linux, the callers of ->get_link() expect an error pointer when >
    the link can't be read: readlinkat() checks the result only with > [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zh84hy9sxapo7oeg75peg77h1ruk9u15
X-Rspamd-Queue-Id: 779B2201B73


On Mon, 02 Nov 2026 10:31:19 +0100, Sascha Hauer wrote:
> Like in Linux, the callers of ->get_link() expect an error pointer when
> the link can't be read: readlinkat() checks the result only with
> IS_ERR() before copying from it, and path lookup takes NULL to mean that
> the link has already been followed and continues from the directory
> containing the link. barebox has no nd_jump_link(), so a NULL from
> ->get_link() is never legitimate there.
> 
> [...]

Applied, thanks!

[1/4] fs: cramfs: don't ignore decompression errors
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6a16c4da65a (link may not be stable)
[2/4] fs: cramfs: return an error pointer from cramfs_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec13edfe0bcb (link may not be stable)
[3/4] fs: ext4: return an error pointer from ext_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=abf4a2626aec (link may not be stable)
[4/4] fs: legacy: return an error pointer from legacy_get_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a8b1f474121 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




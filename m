Delivery-date: Tue, 29 Sep 2026 09:44:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSWA-007b6t-0k
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:44:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0D7B8201551
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:44:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RKOPsFfV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K73mr3sG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667890;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RymcphdOs8TRqzBQifA/b1vHNkcEkZjnMTXefPJal0M=;
	b=XNRNTJu0fQ/Zcrm9ZGY4Iz5hW2ghKoFsxNkr46jdfpxeXwSx5cbiwLyDOqIi0MjqkWO6TG
	HlUrra4kiaeDGvQvbSzeI20Kg+ydI79Nm4r1RnKS6eS3qipUQsFssu73TqqvwUjcXOOSCi
	bPNhPvG+E+TMpMek+h8t1huR/+69RrK2atf/EqGYUvpXVNotRxaLlySAg6fWDxxJ70eIv4
	nEEXB70lI6/qI5qvaxM5jjTKG3P7+7KaLLb/7gSj/UhbTRFLxdSiM2p5XXPbgkDj4Uv2QP
	6mqMR9EFUSx8JG4D8W7+SiISLP5OuyN/pOIoiAkCIzEJ4vVuoM024h+21yy7zA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790667890; a=rsa-sha256;
	cv=pass;
	b=HORkIifcYlo33e2Vs7va2BouyJlseMerek4L8W4Z5w/zAH3Pk39Q7pu13aHNmZf4beY35o
	OCMiQhAN5WMOCvwx7KKB7U+0AIJDD1oGb8tQRwBygXnydY27gjqrTbudQawHxKlU53zPIU
	TZLag6+fLEHaybmgRRpGBvyDpyDPtd82jrlTjGNyVVUYY6PTtOmDIgXO5NgVIxVMrDa/vc
	ofCxQiz/Q9QzG17X/KP0PmSq4SY0OfHWJt0QRsnj9oYaDVWqjpz+Wo89wSr8P/bRaiX1qA
	AaYEidqFgkciOenDk6GGwIXO5JIcj70R7TTEcYbOHyUH8abpxTfYnfuMlfryaQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RKOPsFfV;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K73mr3sG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RymcphdOs8TRqzBQifA/b1vHNkcEkZjnMTXefPJal0M=; b=RKOPsFfVmhCZhBeyXEXp0RJXN6
	XtHTG638A+97NbRxPouj6giz27uWSX9gi2H1TMTyRcbBfdTq565SrtCU4RIZaOk+Wayu6++kOjM0w
	KJvi1JEE71+BK4dQPNEeN2MQvJabS3rMRLCg7oPQdm+ypUnAtHYuqHq0HcW7ingEIXN6Lzt09u7h+
	OTzzk1aVLFDQLdByHQazX+sMfrhb8fnXcS5srjOq42EInCLWUzs65E3M0WY0L4e1I/VOuLt5KraTc
	ho0X3BM0qgQqhX1YNVTU8pgyANS7S8yp7/TXxMBLvEarwRFrERO883L3YCj9gdx8xgmQL8m/tQmeu
	oOyqFvAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSV5-00000002eDN-17Vr;
	Tue, 29 Sep 2026 07:43:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSV3-00000002eCQ-0c5X
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:43:42 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4300F200B6B;
	Tue, 29 Sep 2026 09:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RymcphdOs8TRqzBQifA/b1vHNkcEkZjnMTXefPJal0M=;
	b=K73mr3sGRU1umCctTC9A4zAlvf4upGAb+VdHlbO+zMDzW2wXd34KVoW525YDysf4gA0Y6G
	vNvfGEjbf1BjykcGOH4Jh2lhxHXZ1Q6+ZaVFWZUmwZ2tCJPxAJMrxPcgAEakovxkeWS+Xw
	4OKZMJUgVMAM7pjiZfMHm9se6ovVvzVKE4W6bpZcVDHuTKaeSpDY8S+PUEUycy4/Ny/+8V
	yspZpqVZTN6ljom8SeaKMlkW3amJJgUdMN+5LCQ9T98VAJw37tyJPEGXF9p4up46VExT+P
	m8nTafagOj/KB1yFqCrkbQRQ05NViCmbUsO2ctyEERVHKT1rOAd8k1EQCWq+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790667819;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RymcphdOs8TRqzBQifA/b1vHNkcEkZjnMTXefPJal0M=;
	b=RdLzcsnlaitxy2suN5KXssOlmZ7STN8HtTn33rJXG5DUyDTwQ6cbK9L4inEs639s3QyJCN
	roObrRaFhC6S6rH7QiPKU7751mp44U3s+pETcdhTaQH0d7JhUI4BeyzstKcUOE0nqudK7f
	AVz4UWDz5c2IHWYdfFZBJTfibs8LidX/f31KqGyW/8Vg+FeD8kO35ptqyZ3W8568C86r/o
	CHpIWy4VZGM6vJ9pax6zgVpTUnmX03Pnv8d9SdAswb3F5Kv8fMwHAVWQFlY/B/2732rF5V
	n3qp8HZ4Rv/SkecqhHEXR+kbZXhmbu+VyuaBP4cc3PuhBJeplifvId+QDBcVkw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790667819; a=rsa-sha256;
	cv=none;
	b=XYLC031H6V0GTB95NtMJ7QmjrQjOx8Xv2R5CaN4lHE/GmaCt1QBJJoKrzKQMwf1F8RpNLy
	LJHWLVJC+8MgymXxccTWXl41wky3qjUk0+llPM6z1v1dXiiHmGwDEyPE+5oLmZf9ixjaRl
	zbVE8jxjyxUDQq8Yz5SOEZdYQSUMWGXaJOzJ0jHY/6SIU04CzB6mP4iOeI2KgVULMJno0j
	nzaPBhYaVIcjo09P8ty1h00QM8O5GhXc+GVNbch6YKgBNJAPwTbeXYo/LJ3VnlsSOVuh32
	igHIKyxGF1aqgY2ktcugE03BXXg3sVMyvVaNAtBlPZLbeOQpK0GwhBHZM8Mw+g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 339FAFF954;
	Tue, 29 Sep 2026 09:43:39 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260928104149.1193875-1-a.fatoum@pengutronix.de>
References: <20260928104149.1193875-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] sandbox: power: register power device without a DT
 node
Message-Id: <179066781920.747023.7272479005033939632.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:43:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_004341_349960_5476E6F3 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 12:41:45 +0200, Ahmad Fatoum wrote: >
    Since the power driver probes from device tree, sandbox has no poweroff >
    or restart handler when started with a --dtb that lacks a > barebox [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.18 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.57)[98.08%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0D7B8201551
X-Stat-Signature: yzfa8b55afye8gmh4roybekb9zrsmxdf


On Mon, 28 Sep 2026 12:41:45 +0200, Ahmad Fatoum wrote:
> Since the power driver probes from device tree, sandbox has no poweroff
> or restart handler when started with a --dtb that lacks a
> barebox,sandbox-power node.
> The poweroff and reset commands will then end up in hang(), which spins
> at 100% CPU until the process is killed.
> 
> Let's register the device ourselves when the device tree has no such
> node.
> 
> [...]

Applied, thanks!

[1/1] sandbox: power: register power device without a DT node
      https://git.pengutronix.de/cgit/barebox/commit/?id=4919a59ad2ec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




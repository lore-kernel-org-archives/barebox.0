Delivery-date: Mon, 02 Nov 2026 10:39:55 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoWA-006K86-2B
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:39:55 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB48F2008BB
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:39:54 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tYcewPXj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gUqPg2Wu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612394;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IjEnssHaXN8Jf/boUmkhNnFs9tE+rD6rhh/v1Y0FPhM=;
	b=gYIIAfSNojISVssIJBJ51ndzjV714OjntqjcNBFCXH3fpmy4MoSxoOVPVuYFU6hgD605uU
	8A31GoukQvDFk1ULLCI6YkV/qTqy6tYaz5SFdA8mQ/SsvgOM22GwB8Yp5MdZYgLyYoVkKg
	OY9Q020kuEy31mGeY2ln3+BvN6AH+3mZ1k2ZzLuBpViYg5zYxlXukXeMvAFLEsP0uv6mJa
	YfWg/SLwJBFfw8uLdIiFRfgnrgj7YlvD+4QlojwcsLUTgoI3PzBCkNcEAfcETxTeKdb/n/
	zJSs7yBpfO/D/Qw+UQ8rEDlo8Lp0Cx/X+WCE3QzhqxQwFsE7Qo+tFp1O+IAoOA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tYcewPXj;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gUqPg2Wu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793612394; a=rsa-sha256;
	cv=pass;
	b=Kkq8SafetBs4a/vanWZGeo/q8Si0sfKQwKUg0oBVzZLRLlVrRvvflQAOwxOgaampdeCGMW
	YO9Cotf5Ux39lAljvaH0Wbj4c4q1CcVlch8mfqAMEtQGiyTVfej1IJOQk4p3dYXBETRfhf
	ePilxc2OWLeNOoa2SMF42WEawQFwh1ZtP8hr4OTFNIKdw2lgCI9DI3XpLX0s+NhQuOeSxN
	na5s6HchCwLOgbN0KXsz6UCWkTrlXwljy6J7xjpBA6BtGioVzYD+dwzCQBf17XWEylKelb
	wW5Xg8CA6lAF5YJ5yu1pXUlUbTLYxyGX0S9ntULFNfDgakA5swkGjHVrAOqYYw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=IjEnssHaXN8Jf/boUmkhNnFs9tE+rD6rhh/v1Y0FPhM=; b=tYcewPXj1ymd56
	4whxyJ4jEkNBSwSARRFIf+iiaQhhytDz/SljRbg8zyDKkQizwFgP1WI8V4xZqLYqup2ErRpDkiMvS
	49Kv529uKCKe/4BbL+bmOr2xPJgH4z+JWcyTMWsvyRg1OXhh8uRnKzscZWMUMmoDWb/eb1GeQnH/q
	hhaR6728GOiCsToHE6oiEId/T53Dv/BhaK8hAxE7fEjJGYTY5XMOX4VNr9h1NPqqAIAjOKvG0Z9q5
	sXEanwV/JEz1vy4pBaR3aTw4fm2Z+t7I5rRRXwnIXRk1409YqEmWTrN8As80KXs7J4HZe+i3zCutu
	TRDBffCk+mrHTng7QLlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoVH-0000000G2Vr-1Fbm;
	Mon, 02 Nov 2026 09:38:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoVE-0000000G2VN-0mgO
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:38:57 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5C51520046D;
	Mon, 02 Nov 2026 10:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IjEnssHaXN8Jf/boUmkhNnFs9tE+rD6rhh/v1Y0FPhM=;
	b=gUqPg2WuwRWzxCdBBBD9UBadackiuMTo6FaU1At7jDTxjBtnr8mlT/9AGE4/5o0Q6GhWEd
	TaD+ua28oP93UOl3AV37FDwZ4GKjOi0mgyTa8wXNwKKRELXYQ6AfYKDPFP8OO6zLcxQ6GC
	Myxf1HOzbeBllqmytnwMqtU1VN8vMPvubd8ugPBRIWl1WM/niJbgGMMfLo05XuhwNzMnNz
	EgPA9w75/WdqD01XiXQ79W4lyylJAo/BRpoYEs545wk5uojFtjzl6ixzJYQ71MQiw2OQaj
	gHir0zm0dfI6+wI2cJJhnf2l78wotHyyXjnrac9Xp/1ulaX7jtskTQeGMQAmOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612334;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IjEnssHaXN8Jf/boUmkhNnFs9tE+rD6rhh/v1Y0FPhM=;
	b=QnUo5ppVBDkV7G0X862CgJKZt/JxTfn6JQIafK165Vyao0Ab/Z1VM+x0yRWKp8ysJAY1Ag
	Xe2YWcujcLdjXfEZ6436QSu5iyulNGK+Uw1atNIeWyDxPZefpxxgz9rLdWg5a+U2f04tit
	kPBeuKWNkMw6ANVEDNNjTIQ6W2q8M7DDqKYrhFEqyoPv4WtFq89ODiwbh4d6soZCi9Li0T
	YuLrW4TxseTYut1n+3/IneRKRGZQGFSc1iP2h1cwacxt0RKsG6BGLgPmguDSkKEBcHNEih
	sIFzyLWlVmH+9A/fUJNsb9yMZnPsqk4353GlXFmIu8AG9JUlY6IBvPlO+N/h4g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612334; a=rsa-sha256;
	cv=none;
	b=aiQepPPPY3fmdblkiemgnostpMpUAXOtcm+fpW9leAjNxzf0ldhy3LQG9sZjJS9u5s+bf4
	mjAOdV3bzAgoPOuOJ8t32N+hXWK4Ks6p1z6lxEQYbfeNUvczueMt9Xymp9/Zhvbee/YWNv
	mVsHfWg3lPEMcHxfmRv5LkPhldlTigPBVDZId9F+pW20Z2c7VZ6h4MEc23C+5KMVvyKVIr
	GvyIpGMHXgVyLwZDjsMfdPa0nUAGatUkMJWDVdTEGdvnHZ6cGBvBX/NnR8o3MaeYl7Jo8N
	DCzQsF9xyUXB+dqbUWBVEo/rEFLZQ/Z+TWSDO6o+W4NqE6/9C0obOprv27I2Fg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 570CEFF89D;
	Mon, 02 Nov 2026 10:38:54 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
Subject: Re: [PATCH 0/4] boot: UAF and double free fixes
Message-Id: <179361233435.2636680.12042095812622099496.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 10:38:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_013856_401786_56EF50C5 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 30 Oct 2026 08:34:40 +0100, Sascha Hauer wrote: >
    This fixes some Use after free and double free cases. Also bring back the
    > information that the kernel image can be overriden to the boot he [...]
    
 
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
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Stat-Signature: oqoh3zdswsxaye3yeaax4wf66z5p9a3q
X-Rspamd-Queue-Id: DB48F2008BB


On Fri, 30 Oct 2026 08:34:40 +0100, Sascha Hauer wrote:
> This fixes some Use after free and double free cases. Also bring back the
> information that the kernel image can be overriden to the boot help text.
> 
> 

Applied, thanks!

[1/4] boot: fix use-after-free when restoring bootm variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d58afaae9de (link may not be stable)
[2/4] bootargs: fix double free in linux_bootargs_get()
      https://git.pengutronix.de/cgit/barebox/commit/?id=23e0333c5848 (link may not be stable)
[3/4] commands: boot: fix use-after-free of overrides taken from globalvars
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca76359293d0 (link may not be stable)
[4/4] commands: boot: list bootm.image in the -o help text again
      https://git.pengutronix.de/cgit/barebox/commit/?id=660f9e58c6e4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




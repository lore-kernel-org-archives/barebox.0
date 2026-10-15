Delivery-date: Thu, 15 Oct 2026 13:42:04 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJqV-00Du72-3A
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:42:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C8C5D202012
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:42:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WzcWwmBv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QXQg+r0I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792064523; a=rsa-sha256;
	cv=pass;
	b=gy7Q5VzxotyPGkYqNfy5+VIvpX1+qPEfsov3lmQz5FRdMifksTMMCIH0Jv6Ot+lxtpY9/m
	S0qdfWQG4wQY8Y6q7N+d4TKlL08aK/dPS0bqzt5KcVfWJnOctB/wNMFg+SfaKAMSz+zIXz
	zJRjlhJmvOR46yY3jpJ9kWMp76kY4P+M31Ql0a9pQP8ljgQwpRYmefASct9+hF5iKajd/5
	nUkWXofNSKwPEk9VngLiPSs0MBkj7iJdJXDmK2t3PzGTYsP/r+n7wfKC+n3bO5+Yqx88sT
	I17APf54r04lGZrgNnz2ytNGEG1IBrZjQ63q2qc02fiiyPjiDd8KBqG7OCWw8g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WzcWwmBv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QXQg+r0I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064523;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PUkfMPwMGtY2HitjgdyLG+bHb4ERZ119fexPEZVEz30=;
	b=D3bZeNg7hDDPXLtWrg6y7lA+oRKTB7g6MUU5fQZyKL+IAH8kK7y9jTQmV6yVHgJgbTlzxy
	so6rtxJ8dvUYnknQ08BWK6DGZ0DqUtFQf3LTHBQXX3+KYE7y1Lyb/yLHOnwxBXP6B4SYX4
	bhW/1OGP2gIjMGPbvIaqDIqayQ6IWA7ZxDtZUPbYsNaaiBzERjL7OINJmX+0srxpLopxH8
	/8FPkWvaLPUz9dE3RZPYGBcJGE98XTUL+o2ThtCVxpSdTL2iGBM2EpIgGnFpQPnJCTzL8o
	fuaN+PP+ZF94cUt4cugxmkuU9KmqyLoJk0K57k8cTUOKU8ZwJhCS7XhVv3b9VQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PUkfMPwMGtY2HitjgdyLG+bHb4ERZ119fexPEZVEz30=; b=WzcWwmBvDsbXpYVW5OSwWVpRDx
	W9u2yujLm/j2hUnrE1d3dfc4TpMbAwRVDot0NdNKNX0jpdXqbreFyGlAmdXzAfGod/gPOoozziYMv
	Gi+vmSdFpWz4/A2MKI1MoOOBG4Em6NCaq4GrPXr50nk6wFY6yRUrvDkud4u2xGT/ECCcxb8RPh5SF
	Cu257wRElDMl8spWcnZfCGcXph3lRMSk6H4Vhe/Whsy0iHDLUPsz7ZNmeTEbrz/zqh0Jkq+FrrYG/
	Iiv8qVk4RdjFhqYcMu7HxwqV7ZtRwTUIWUCTkbsD7uneXnO9Q8BQCA5V68DUj80X+DEUUstCcxV5O
	9rrp3k1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJpN-000000000Bo-2sZI;
	Thu, 15 Oct 2026 11:40:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJpK-000000000AG-25LK
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:40:52 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D6A16202012;
	Thu, 15 Oct 2026 13:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PUkfMPwMGtY2HitjgdyLG+bHb4ERZ119fexPEZVEz30=;
	b=QXQg+r0I/8pwwSJxQLEx44a+79c3cHiol4jaP4bOmPaA/2nQmM17lzGzFtrscgi+6II35Q
	9IW6yFwywWVKnr0Mq/TnE9UBwArDFaGDEp8U3frjMRUuK+LcKkWUt3uBG0tjEa9ANhJe4V
	ugr4AIcb/Ptadf6+Gy602UMIJh5ufV5oiM/OgC97jc4cyQwIr+oDPtUy+GA5YDfGUypEIJ
	4KWISDLvUiY306O7J0MO/kW/SNt5nV6VkbQJ+0RXzKxSfG+PaHtLlMAPT4SBG9zsjEopRz
	tS9okAY6DfyIeIyQgD0jf6vEEY1DY+IQUFDg0pKqS8XiAPY6Qo/9S+M7dx/e6w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792064448; a=rsa-sha256;
	cv=none;
	b=LS945KjMIF6TVZzPHDe3ZvzGmBLnSWLRSOVajYAB9bWz57VeAndpJAX2PC10GX2dhACGOQ
	WWK5JVVE08ZoZ2qZTGXnVyDKM1vMc9CxEPEkzFn5Dn/LU155vpdMW+Ksfpdpp8m2+VFrVi
	B6dlNHpVCNVcR5juvWt4zc4AoS5HkJxq9j5frgOReMZk/gJcLGKLFygTkJJYDlo63uarTU
	OKiSmGgzN/GestIvyIf5tSHJdRPFBZn4kV5C1npGG8dCVg2g5Q7tf7IPsJgYgejKniYn+S
	MOWdijJTe8pg4edI4VeRbeYbwrsOE6jcZFwsJGiAJjCzXnfPPqzQyxdJCJc6VA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064448;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PUkfMPwMGtY2HitjgdyLG+bHb4ERZ119fexPEZVEz30=;
	b=AUMcaVetC0gADHSo9dzSrYtAeTg4m39dvbq0S1D4RgmT+coD+jdCECZtTxJBE1/u3XaJff
	jtMRDlddMuQxC37KD5UlBR/wlbOgiSigQBkLZ/H4voItbvYvn3311rcrXps2I2UKWuIpVV
	ayMyy1plzv3VdLqQBTPcsddq/b55yQNKok5mg/SnSkpk4dTbux5OEDtSQEnLlJs7UGC6NH
	Ltjy3f6XTCVVS5wJGsDGVgpDKKaRM7nHs5Hcufd+npzbPwx9AOK/jCKFB86d5BZFFAgC5s
	Au8/zIKCz4CepUUMgG98yn5VBswlSjJzGyN3dXqUq/Wh6mSEvHPmdg8dWU/5PA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id BB277FFC49;
	Thu, 15 Oct 2026 13:40:48 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015110703.2378569-1-a.fatoum@pengutronix.de>
References: <20261015110703.2378569-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/2] defaultenv: bin/devboot: fix typo in final
 exit
Message-Id: <179206444876.154876.8090734956178089226.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 13:40:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_044050_692714_6DC08259 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 13:07:00 +0200, Ahmad Fatoum wrote: >
    The script now ends with "ecit $ret" instead of "exit $ret", so every > devboot
    whose boot command returns prints "ecit: Command not found" > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C8C5D202012
X-Stat-Signature: ehyg3iy7q8uquf9t3af689n7h44j3cqz


On Thu, 15 Oct 2026 13:07:00 +0200, Ahmad Fatoum wrote:
> The script now ends with "ecit $ret" instead of "exit $ret", so every
> devboot whose boot command returns prints "ecit: Command not found"
> and exits with 127 instead of the status of the boot command.
> 
> Fix the typo and add the missing newline at the end of the file.
> 
> 
> [...]

Applied, thanks!

[1/2] defaultenv: bin/devboot: fix typo in final exit
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e55c427892d (link may not be stable)
[2/2] defaultenv: devboot: use rsinit.bind_modules to bind mount modules
      https://git.pengutronix.de/cgit/barebox/commit/?id=7c9d54c707b4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 20 Oct 2026 15:58:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAMQ-0013Fg-3C
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:58:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3685B202013
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:58:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3Ua7zGWB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RWqRyfEZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504719; a=rsa-sha256;
	cv=pass;
	b=Ev7vCRvwP2o0UDWJr2fcfYtnSHm3/xFgAnByEoLY6ZpN6a+7SW9m9UHqwo0nJ8YCt0cxEF
	EB94N1LOQN4IZCx2aHapzLU732VNKIEtsLwuT8U2hw+fPseOXxA0nnC6O2VSiVohStX1HA
	gS/Kpr18e0BeF8dA1lET3f3IgcCF+9pd/L+bs3XgNPU7r4/0WIuMeIaiff94ww0Ey+iWuF
	skpNQ3XkQQ1Yx5HUC0hprbrT2O3t9vc+Dy3SSWbUmmYIB6lJsTaPUoLISJ9MWcv1457QI2
	UgZGAHf3fP8uQigh6qGu/4qWsmIUAk1AIKpRpEzoJO7c/2wY629XgQrRParRIQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3Ua7zGWB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RWqRyfEZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504719;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Mh5a/FDbUbymB1XhUZKuN8HFFEHJ5z9iXkc7lDmMQw4=;
	b=CggYhiq290Mq2KXA4L28UY8xXnfjP52Z5OBcFv6ZxQZXrLWIa4vnTtsQgJ0Jr482vpIqK4
	8gDSmsnSbPxei16tan2ZYGROZOWVNLRU27jzXjrT+F1KgFNLZXbFwWcQKBIHZeHxEDA2Y5
	cVx8GFSh/8pEx3EXl/DEl6ooVqKmgqsaP+Nt/HDOMWoqoxTdxJHC4ozPG/P9O0h+cHYZRE
	fRhuLqaKMhhlkK0q9CNYtVw6puCUECzZbyykU1WOGjVyXHS1mcOrUNNrSw9QgM2YVtMGg9
	bMvZ/xYNtEEMpZu8IcBK+eD+62KS3nGHM7J8JGvyWQvY7qtQTfJzYcrrUrh95Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mh5a/FDbUbymB1XhUZKuN8HFFEHJ5z9iXkc7lDmMQw4=; b=3Ua7zGWBN9yoErQxbosFiBSCwa
	qpI0Evvynidlyx5frPwJ8Y7GV0f2fG72l/0HJkviGfR5DqWQ9c85owI2BwCU6LFOWDmp/5687fWJC
	3FSMm24M1NVGodVOLRo2abQG8BDl11Q8c+RfXES3LONdDoSJDfVUqShykKeETaB8C8EauJHYdyyg4
	kBzjbi5Zi3Dcn9ycdffKAV1XIPV6l8aokYQbI69KMP41szx2PUlqn7JHtlF7JMxgKqONNjCocPefi
	FskjWAocZaAgxqDSX/lX3s5CmzgWw8ei1epjXVUiH1OEEcVf39yGOWDYFFYrCg5sTzDztJnLC/QrG
	GOYS6fGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJALO-00000009qgU-0XTn;
	Tue, 20 Oct 2026 13:57:34 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJALL-00000009qfX-2Rqp
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:57:33 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BBB05201B9F;
	Tue, 20 Oct 2026 15:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504649;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mh5a/FDbUbymB1XhUZKuN8HFFEHJ5z9iXkc7lDmMQw4=;
	b=RWqRyfEZw7V9M3osFhv7zKvhau71mKIGmPMLXkWJcTBKp028FhkMl6liLODD12stHxCNVV
	oj7CIZ0jZNeR0azQO21FnY8G+0GoMQEjI8d/760TtlZqc0yMHMfeBYoCw7jb5FWhe/am5W
	K2CSvEGecGibj4LCOIZ7S1TADbdARPOqR0qy86aNxrgIB0+lLrA5oXtlAAThWA3LzRk+49
	iC8fc8oztMLUA4KL9vMlu010FMedMfccUxEz/WvW9PitCJZq6TlUU6He2jcSzUYUcUQLeJ
	1npVaacCRTLKbHj6D9s1QaTzbfa2hEJ09JFyvq8LqaLzxWqtHlrB0Bv3pC2sJg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504649; a=rsa-sha256;
	cv=none;
	b=YOsyYa2qUOWpC+H44xv2UC+Jnp29EGJMrt5U3/g6R+9lcO33/i5oXmxYL8VD7u3+U+SCci
	EqL+haFS4Ei6yZYYwbaRYxwB1xVG42hIBw0p1VVbbsWhLqpappi0XkbMUhV4cVXLE28bAC
	J+Hn7J2lZXROKztYpEoJGyudzJeXmdBxGmGTytNFjZypj7CY05JvH7/KG35oA2HDmOMk+i
	LGdHHMXJ7+NXqexuXoPto+9yMNRAq91oIlmtRu0OprmKqDpPWyfZhsNhWX0H1Q1hB2eNgM
	HBa3JS5bx5AhQKgTnUHu614vSnwbohYfCTp7e3trMSPX5SWzkwT3diNFWukzzg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504649;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mh5a/FDbUbymB1XhUZKuN8HFFEHJ5z9iXkc7lDmMQw4=;
	b=SISWSWlJL6FgVIM9TYrPdEfriUobjdxf65d2fVrq9VChHwCqsfzbVCwuJwGgRryY3hiqAX
	N2ENSoIhfaUW4zrmjVGC8gPWjTazU5J8SHLjn8XTkMxIDNVKOEVavLyToU5xol/M2Z/dG7
	eEQgK+RPmP99yujZYTwyuTfHCvoeHb7s1O8eOSnsiT+ZjDrjxRdzOEri9MFUQIaudF8swD
	3Cx4pEUzszZpYtZgYPlxvIhKgF5rrMwIOa+o4/sle70STy5z4olwZvzxJ27/SM/6msJ2Xl
	fUuW34kwe76sgZ2H4FnM1kyuC3m6t21Oe3JMgyomNMYX3kDx1jB1qkzPQAerMg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id AC02BFFA47;
	Tue, 20 Oct 2026 15:57:29 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015140812.1229929-1-a.fatoum@pengutronix.de>
References: <20261015140812.1229929-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] commands: truncate: report errors from ftruncate()
Message-Id: <179250464969.2719180.14477115254679718961.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:57:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065731_867313_A3B5179C 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:08:11 +0200, Ahmad Fatoum wrote: >
    ftruncate() and fstat() return a negative error code, not -1, so the > command
    only noticed an -EPERM and otherwise exited with 0 even when t [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 3685B202013
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
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
X-Stat-Signature: fy5itann34cwyg81mh3k5grgjmbxemnj


On Thu, 15 Oct 2026 16:08:11 +0200, Ahmad Fatoum wrote:
> ftruncate() and fstat() return a negative error code, not -1, so the
> command only noticed an -EPERM and otherwise exited with 0 even when the
> file wasn't resized, e.g. on a size ubootvarfs has no room for.
> 
> Let's check for any negative return value instead.
> 
> 
> [...]

Applied, thanks!

[1/1] commands: truncate: report errors from ftruncate()
      https://git.pengutronix.de/cgit/barebox/commit/?id=d9ba097d957d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




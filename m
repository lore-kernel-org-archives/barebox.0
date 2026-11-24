Delivery-date: Tue, 24 Nov 2026 08:27:59 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkwY-002inv-1U
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:27:59 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0783F205A20
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:27:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BLj1erfY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZE87QQ8D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795505279;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=YZklkNk2wU+DkfRJ3QhPW1Fn4GAhOyir03SbRBJk6yk=;
	b=C5Dc4X6/aotJKzwPkFdzvQmmDPuBh9+zG+1oXTnXJvhv7Ul4QUt4/NIvJ5bu4IbHzRmxsG
	iMa6NJF4lupD2IdnJ439Htmtt9mwgIIP0IRJn+dsstVg5slyYY9bMSNzxVPSsgWiZeG8MJ
	Dwo5Nuhz29N2U/vtiATnl91VGtIAmBfvsfArNXnVflUgRiwRQ0+LLdRT9IKjG7v4Jtwjfr
	fLMBxy60p2wxFhECDt6tc+JFgRqajJqyI0EkNp+hFFP+RZmVE1xcstn89GYQ8Dow/d+UJq
	1ptM/Pq6+/cA7CcwgzQEMQgv7vZwOJw1zRrVyd1iSBkd3mol4QmTpEdL/7N6Uw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BLj1erfY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZE87QQ8D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795505279; a=rsa-sha256;
	cv=pass;
	b=ITHlfd0Q1Af/rGFq4/iHTIhqrPClV9Ej21BrG7dSKc0XqluwUIgbLGF8SAV6QwnGLv2xlB
	pygnC0J6LDnrKsqaCAa+OZkWYjyhg7psNaYmg+RG5HrW5GYUSkFzizuxWX9bJbBPAtusD4
	8cJTbNq+DAN/2wkaH8VN4CLuELviSbX1HaA95ybiKn5yxW+I4l0wSzAh5YgZ/dgZin/swN
	/vHyFVWTXuxN8Mul+c+zouuCpWWZLuIqXnyLak7e4bmEIba1NTeTz84xrIoOmkkTnDYV0k
	NoihCnklax/rsYpVqbwZgdy8UeucHabbLDr/nFGhPIQpefzdqOQOzK4lShHq1A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YZklkNk2wU+DkfRJ3QhPW1Fn4GAhOyir03SbRBJk6yk=; b=BLj1erfYlINoJiBaCdQ6ICdb06
	512n1IAbLO/sUJSVOZGJAxWX9QIvqGo614IUhGoImza0pH11XEnD1QqAo53DsUPn2WvS0jlcjH0Ci
	CD5Es8IQFyztn7xZs2ivCdgRc2KVF4zTwg7puubr8ZNY/0fiUv+qn1VtpWb7kp/m2Ru22d7MSxYpR
	tbAMNCEI89/xgtOiUkxRPBz2NfGwDUb1SW89n26o1cNVFEkwDOPUzXjCmFpqtmPGUUcDH53dbMpR5
	PY37VipGsc2ks/X/FetxfgdxLY63T5B/Rb0WePHb949Fd0bVAaqpJNJnl4avdPYVVJbNMUpDnhpBW
	WfAWwjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkvY-00000005jS6-1VRM;
	Tue, 24 Nov 2026 07:26:56 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkun-00000005jEu-071A
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:26:51 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c0a:3200:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 006D1205A1F;
	Tue, 24 Nov 2026 08:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795505167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YZklkNk2wU+DkfRJ3QhPW1Fn4GAhOyir03SbRBJk6yk=;
	b=ZE87QQ8DoadrLpI8pvMJv4FuDR+9dABcr7mmzWkBmC/Vk9wNiY82pq/SZk4uVHCZfZIZoQ
	cZWJw+O30Nf5gaIO1C8qtOGgNmWgPKoCip+EQ/TcwxdxBtd0SLW1yrWBOxTTvHgPNvsEqE
	p4Q1xFpUrbLLNVOGs0MTTV7P1SXkLR+MtOOQG6/9OWYS4SBdpfXRcNtJp4zq5PYG34M32F
	cel2Ki0Er76zB5CZ5XiNe1jwBCiOpTUqsaMCNNO6aZaU2oTsfU17m9ghe+idZbfdOpA4lq
	5GYVTfH3NbEaJ2ytp7cLq0UAyiW2nJosqEvSARs9Wu/cgmAQJdZWMHkbqJMaEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795505167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YZklkNk2wU+DkfRJ3QhPW1Fn4GAhOyir03SbRBJk6yk=;
	b=XROJVPz4gzre4xvyYOi1gagwgz5VSdmYJBrEH8EoeLru4faKCkWh/IHX/Vlyz2xH2jeDNk
	dTbmpvC1ntSs6e1QzE4MLi2rbDDYPvgbsgu9gfunTETXlyf+9go8BiCr+5u1PJ5H3qoojM
	dUbJDeKV5xuXp0bFQsSYSbVMInR/IsCfIxta6Ieoz4N6toxw+w4fvRTE+pAJVCREqmouMB
	li+fj66ixGbyM+3YpnpG4xLG2uOXYNtR5XSLiRMmarWAQN7XQ0AgpunoUobOLU0j2Zr7X9
	NhVlcuY4pZS1cXtp5oAsKtoo4imcF3np74YKWdCySJ/A+YUO45VOzVnHxswkOg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795505167; a=rsa-sha256;
	cv=none;
	b=YOg/LjR5wj9+jjgON6QOdcSt1eyMeMWUnZU1lMSw0imFKja3s+he6nd+X/qj2NpTTVAWjw
	pTeMf3ydR0JXyMUD8vpUocOv4y52sL+ymXBiwhLUu4Bhl/Qc5f0KNUYYbHo8Yhy5Uqf8ib
	7w+3jS7HzAwHuMmlwjDgBG+VLd4LpkkAnpEFtdHWRzKY+W6sKKCaquwzsAo6VNgCeEU0S+
	T5X6g2H5+evrGmPCEBl6VfYRdMGU0SQuH1R44lQID7718nziM/CuBOGdqlNCOf9VbwYUSV
	1uRVtzACQidJ0nRfz105hqkeD18JPcFOdZxlFWuIQTfyPwUx7q7OZw5fM+OCwg==
Message-ID: <69652d70-0caa-45af-a222-067aff689e27@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] fs: fat: fix build of the fuzz test without FS_FAT_LFN
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
Cc: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
In-Reply-To: <c518cc05-24d0-4bff-969b-9caad22c3060@barebox.org>
References: <20261119084042.2161333-1-a.fatoum@pengutronix.de>
 <c518cc05-24d0-4bff-969b-9caad22c3060@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Nov 2026 07:26:06 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_232609_255041_2DD38DB7 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-24 08:05, Ahmad Fatoum wrote: > On 11/19/26 09:40,
    Ahmad Fatoum wrote: > > From: Ahmad Fatoum <a.fatoum@barebox.org> > > > >
    The lfname and lfsize members of FILINFO only exist with long fi [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: obwpwjnggzo8yg1hm6qnz1r5nao74unf
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0783F205A20

On 2026-11-24 08:05, Ahmad Fatoum wrote:
> On 11/19/26 09:40, Ahmad Fatoum wrote:
> > From: Ahmad Fatoum <a.fatoum@barebox.org>
> >=20
> > The lfname and lfsize members of FILINFO only exist with long file name
> > support, so guarding their use with IS_ENABLED() isn't enough and the
> > build fails with CONFIG_FS_FAT_LFN disabled.
> >=20
> > Declare the buffer and assign the members in a single #ifdef block, and
> > zero-initialize the FILINFO per directory entry rather than memset() it.
> >=20
> > Fixes: f585092b1737 ("fs: fat: add fuzz test for FAT filesystem")
> > Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>=20
> Sascha's file system conformance series fixes the same issue with the dif=
ference
> that this patch here gets away with a single #ifdef instead of two.
>=20
> Both are fine by me, but I thought this to be a bit less of an eye sore.

Indeed. I added a follow up updating to your version.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




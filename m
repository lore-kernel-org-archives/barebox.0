Delivery-date: Fri, 02 Oct 2026 13:28:09 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbQv-008p48-0g
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:28:09 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 182382022EA
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:28:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JSp8Igfg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Hunp68QG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790940489; a=rsa-sha256;
	cv=pass;
	b=dSU8BXRJ3V0dS9pqq35rRzuL2IJBEO/5WMdZd22Skmybx/9/T0SMLA8ErT4IkOEMde4bHd
	v7SOJVoukBw/dVwv74ZnUmCjV2JukZACn58dqomVfGIWSVnEanQZ0J7rngOJkyhdo8eq0M
	1lqhhROg0lTG/TyypOMr99r5d2JaqUBbEDbm/Xz5oRz3It0qN93efuVEpEsAu6rzNMqtuf
	8m1pSKMV/6UgWgVU2ndTDOzrUDVpmXlKepSUk5oXWMylK20UaklM40ZmeFY0VtXduoZXoX
	3zvgCUBV82raF3Z7mDePWZsMku/g5kLn8DLgUjM+xyGB1fsYgIEVylD9fVhoAQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JSp8Igfg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Hunp68QG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940489;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=KnETKCChY016STTAHA7hVYsAXncB5wc2jlEmG+7M8z4=;
	b=bQsOwC3wMXyL4WwQWwXa7Ximwy5WjQrtHoV9xwW1lnjbeSwfoJ5duX0+MWWV7DEYo2Wpvh
	9SavO5pOR/JFkWJFMHqZe5mwj8ZVG7GSJiS89MK9Kh52S6xaebZirZgiTyEeid/hImiKnB
	j+F+pC70S6rjrZGjou+wIKOwyyNPJMvwY/d/8IRHkqUuh4ketfO3ix/MGe9AulybjVvUlV
	BsGdRAKHCrhTeR2h6DNqAplgqSN52ax/6JCrmuQ4SusZq6PH8y4b0UYciwKaJix1b8nqZu
	R38HSqaZK8G09Rmnam5b/StauxR8WJ9K41fp8Zi4yF+FtV+6zw6mIVfd/tusqQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KnETKCChY016STTAHA7hVYsAXncB5wc2jlEmG+7M8z4=; b=JSp8IgfgAEH/O8MVVirUhGgkdO
	iESA+JKtxSBVAq1F58pkAnPeY7AsocNoLhyrI6U/EXUfonEuzmpkA+CGawivVHpHq9/hFmqVEAdX6
	lE9mpuZq4yl93Qe2C1SjCl1hzDLqParC+N75KbxVC0ShIEuj2ocYdA370xSDqE8BugIhJs34R94zO
	Qj8uidvRrCTfPvPX8aAoeJk8tWRO0Lq+j+OJc46BdCOQmufRObGlDZCdV4R496gaXtWqQ4lMi8Wmm
	RQ3T5RBax2I/PXvydHgdheZy283Y6ZJCYLnBt2eOQLYkXX9Z1wTN69xF2AUs9ENzIVs4+Br+NYr2U
	UiH910kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPm-0000000BTIk-3E7C;
	Fri, 02 Oct 2026 11:26:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPj-0000000BTH3-1XXP
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:26:57 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7ACA7201F0C;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KnETKCChY016STTAHA7hVYsAXncB5wc2jlEmG+7M8z4=;
	b=Hunp68QGU9Zw+nFEdt3nBaz0CjLAbgzcijhRgXqExMI00MRnCU4XgU3Jk2unqsFntXzrCj
	5ZJcn5h25RvChTW4X13XN5/0ghO/O1gy38NNFkjnXV0HskVwSHRy4bikN/JnCzW9yGvZ+t
	Tvpe+Sy693B2FgcvRrpP1k3QG5sMpdcxxqp8sLO4/cLqrpR+ZdhpKNli9y1iGs6Ad4JwOd
	zVmc1MzT1xdU19yTM7eT4quTHZpblwIG9ZT17O9QoB5PavErjnegiGzg/LuXj6kjQfOvCO
	nDNjBN3UufejBu9OLK2T2wylZWW/t4lrQBizTyAxpP8DD0JblCBUS2T7KeOfUg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940413; a=rsa-sha256;
	cv=none;
	b=Sd8V6cadqvYeVsv0TqF2M/klZhs8kErHk1gUgoHjEQ+8OPepRNaLYZi3n0mAseflBZ7Q7r
	bJZFBrUnsGvhUOa9WLpnoEb0NADTSQHzjdPhcIaeV0un5Ty86y84Ki3O5EIIy89ms4QcE6
	G9WQBNfWw26tqpUmjJ+GtqsftumXuoZiqoDDOhn5oTbgUsE4h4VfBhBuQpCL3VYvgGeD46
	fsVC+vwoOf7n+2t4llfRaGfnZU6flEH7bjtdXQq/TXu+6dQT3ckXaAhJnqlkbD/KCgR9rS
	QzJSx1McJLM7MlB6JVJCVsAQsERqP6p97g+PYmS++ckn6viQ43XjqNJu9UXpww==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KnETKCChY016STTAHA7hVYsAXncB5wc2jlEmG+7M8z4=;
	b=Ep/2dg0I/KoNy9NOb/JcvDWQJVSFxmFLQq/86binK8lt8Acu7WrTAzlVnhlM6g/NrvN02x
	NOHLn4OyU9M3ldadiCg0wk4KKicpiLDi4MVDRW/8KS7OlFXQjHPirBIxiSjhU5EOrucYGH
	MM1gbHt1ozgXyMpwanYWvkuSGNbQwBBYSCYFQcrNyKWLq+UOJXKxxUBScPV8g6Zc+wQGQe
	5y8Y/Iu8Bs9M6jj9VX8gLEMh5TM0cGt5exVuVjrH4ag8AyUD4cvg4pDtaIuTMPJSuVKDk6
	w07WLbBQ1CtEoGOWYm66Q9HRE706RgXO9+Sj6c8sz+ZN5bVLgSaITwwMkskdCA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 58178740A5B;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/4] amend! FIT: add cmdline to whitelist of non-hashed properties
Date: Fri,  2 Oct 2026 13:26:32 +0200
Message-ID: <20261002112648.2899729-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
References: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_042655_558300_BAF0D377 
X-CRM114-Status: UNSURE (   5.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  FIT: add cmdline to whitelist of non-hashed properties The
    cmdline parameter of the fitimage is an additional optional property in a
    configuration node that is used to transmit information to the next bootstage.
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-58.89 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.98)[99.90%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 182382022EA
X-Stat-Signature: 9sx5x1be7ukc6jfr7e1g1c51g13chp43

FIT: add cmdline to whitelist of non-hashed properties

The cmdline parameter of the fitimage is an additional optional property
in a configuration node that is used to transmit information to the next
bootstage.

Just like description, compatible and default, this property doesn't
reference an image (e.g. a kernel, a ramdisk or an fdt) and so it is
hashed as property within the node and not as part of the list of hashed
images.

Add `cmdline` to the whitelist of property in a configuration node that
aren't images.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Link: https://lore.barebox.org/20260924-add-cmdline-fitimage-v2-3-4a665e165002@bootlin.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[ahmad: point out that the property is hashed, just not as an image]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
-- 
2.47.3




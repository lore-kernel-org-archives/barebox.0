Delivery-date: Thu, 17 Sep 2026 12:20:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x79Dw-0038vq-29
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 12:20:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 76372201A8D
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 12:20:12 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Hf4FFNDQ;
	dkim=fail ("headers rsa verify failed") header.d=amazonses.com header.s=ejx2vwln25gytu6sovwgn6br34bly4ut header.b=DQT+zY58;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=ensiteservices.com (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Date:Content-Transfer-Encoding:Subject:To:From:Message-ID:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HIltiAJC7kkwwxwhvakbwgClr5VHq446rty5I1GgZoU=; b=Hf4FFNDQEMRCbzgTWzcjogDy/0
	lKCqPhhug0M3Re3ISVnx9atwvW1aM45FMazRyX5jsCM47HdQwSWXnnRShiaeo7unfE+rJBoWg7wRZ
	PRWgbgdj1cJLsffirq9p6UFLrYLRT76I+D9eU+v5dx227gBqiMcUraFc0oEOxNhtaHHh8q5a+GZzO
	JcHVYsgLRkqBZeKE12wv+eXX0rNW1v+CCyll0nL8PhvJ410/XEm5qttY+7WSzcuhz9BJBaCYP4RQD
	B2WgP4gmvD7JrP6Uzg1/Tc4lYEy7oXwflZUaJecxSQOYVs0Le7SFjZTnL34LaPrIQkqYw9h+xvsSe
	+6doBtjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79CZ-0000000B5Im-0ckN;
	Thu, 17 Sep 2026 10:18:47 +0000
Received: from e240-4.smtp-out.eu-north-1.amazonses.com ([23.251.240.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x79CW-0000000B5IN-2oFc
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 10:18:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ejx2vwln25gytu6sovwgn6br34bly4ut; d=amazonses.com; t=1789640320;
	h=Message-ID:List-Unsubscribe:List-Unsubscribe-Post:From:To:Reply-To:Subject:Content-Transfer-Encoding:Date:MIME-Version:Content-Type:Feedback-ID;
	bh=HIltiAJC7kkwwxwhvakbwgClr5VHq446rty5I1GgZoU=;
	b=DQT+zY58Beq5H1ic+/Mka7G4tXUHkOH8XlhtM7gI7BZAdAr66BTwdpEg/Ey7mJTg
	2A1jrRJtdi426b3X5j4EzSQCPGgwU1/yvSB8IstRZCNjVgvb49Q/SSJW627EYjn66z4
	rYtFVIYDw7aUmrHW5Wbd00fB6nQByyKX3eQaiY6g=
Message-ID: <011001a0aee024ec-a021702c-14cc-48b0-9e42-9d1aae53147b-000000@eu-north-1.amazonses.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: NorthVale Insurance <admin@ensiteservices.com>
To: barebox@lists.infradead.org
Subject: Reference Request regarding a Former Co-Employee
Content-Transfer-Encoding: quoted-printable
Date: Thu, 17 Sep 2026 10:18:40 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Feedback-ID: ::1.eu-north-1.uvPzbc7KzhvvvbHvVOloAC4vOZuEk/DlMtHW9IaHcDk=:AmazonSES
X-SES-Outgoing: 2026.09.17-23.251.240.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_031844_903615_42DF091F 
X-CRM114-Status: UNSURE (   1.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  I’m reaching out regarding a professional reference for
   an applicant who has identified you as someone familiar with their previous
    work and professional contributions. We would appreciate the opportunity
   to speak with you briefly for approximately five minutes to gather your professional
    feedback. To make this as convenient as possible, please let us know when
    you a [...] 
 
 Content analysis details:   (1.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [23.251.240.4 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.0 BAYES_20               BODY: Bayes spam probability is 5 to 20%
                             [score: 0.1462]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.9 DMARC_NONE             DMARC none policy
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [23.251.240.4 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: humanresources@northvaleinsurance.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 76372201A8D
X-Spam-Level: *
X-Stat-Signature: ie9aipsmgdjpcbm6g7aahrd554xn8e7r
X-Spamd-Result: default: False [1.05 / 15.00];
	BAYES_SPAM(5.06)[99.91%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[ensiteservices.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[admin@ensiteservices.com,barebox-bounces@lists.infradead.org];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[23.251.240.4:received];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[amazonses.com:s=ejx2vwln25gytu6sovwgn6br34bly4ut];
	R_SPF_ALLOW(0.00)[+mx:c];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	HAS_REPLYTO(0.00)[humanresources@northvaleinsurance.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,amazonses.com:-]
X-Rspamd-Action: no action

I=E2=80=99m reaching out regarding a professional reference for an =
applicant who has identified you as someone familiar with their previous =
work and professional contributions.

We would appreciate the opportunity =
to speak with you briefly for approximately five minutes to gather your =
professional feedback. To make this as convenient as possible, please let =
us know when you are available, and we will provide you with a scheduling =
link.

For confidentiality purposes, the applicant=E2=80=99s details will =
be shared at the beginning of the conversation. Any information you provide=
 will be treated with discretion and used solely for the purpose of =
completing the applicant=E2=80=99s reference requirements.

Thank you for your time and assistance. We truly appreciate your =
cooperation and look forward to speaking with you.

Warm regards,
Carmen Dudley



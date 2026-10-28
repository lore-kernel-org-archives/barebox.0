Delivery-date: Wed, 28 Oct 2026 10:26:01 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzuy-004H06-3B
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3ACEC20294F
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o06+lEpE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HFT1+ZN8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179561; a=rsa-sha256;
	cv=pass;
	b=Gd+jLursdylkPIHi9r6EGpzzsymD27077Mx4pZ0ysC0cJDIDpEzSggOFpFPx7RdOTuQKTe
	Bf0zmVJv1wQ2zjzkT+2U5FzfTdlfVSn/QfoIj3L6AJoeHect6WsEBeR7Nbwd4HSVX4G6T9
	EC/DFnzpYtB9cBQkLVyj/F4yMwZT1DrVJAvpiL4dJmNuvegWl1uEVBb8iGjANQ6U6sJwUS
	5Jjr3eKhI6KiT8+EO+1W5UsW7+VvhjfJSwFilSTWTLQlsTqII9d1tduUb9CiCH7gFl8uTU
	iNHPKwRwi0lQftNCtLrMVo8L0BEMcW4a9CGwQ6zyqlsV3txUzHz6OUSKqI1Y/w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o06+lEpE;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=HFT1+ZN8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179561;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=awbt6uI1JBkfFFB8Tfi56IlJ5WezwR0a+Hqj/9bPbzs=;
	b=Uch9S3iQ9ZDi/fS5qxU0DKHvpgIlq0Bnk0eWJhW6AGdHSltPjTctx6751421y59gZRq3G8
	FV+/2vT1u4RG9znB3pHG1AVYvqyd1oLOkc5ZuKAbOUcuOph6vkJOb9H0lickRdP9Vx7nLV
	Pa1F9I8IQeW1eFf4srWqmmTUfEDzJVGbA/g1xr2UL/Ehi7Mg7G+vi733fE/SsYnk74YsuK
	TxUARVNqC3uWIvlAgXhKeoBApOJTIqLxo3DfhKaqhqwLwHr7CW2iFVF/geH3dzgYJAY8IX
	BwgudG4Wfgrnf4I4Pjwb+nHIiiAox9KG411eNMe/Cpdp6HQxizkTR8S4y1FJsw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=awbt6uI1JBkfFFB8Tfi56IlJ5WezwR0a+Hqj/9bPbzs=; b=o06+lEpE3Oi6Zr
	2/iNYoDg6sb9dcHdsaFlMqLlk1DkIk/jFvSzunZnB4mp+XXXP+WECIES6krjBsy+gSCKpTfyi9smg
	4zEhNnTXwMND0hQJzP5R27ijLKyvUdCbOjgEYZrvAxQ5IOBVv1I0/Q7olt1n03JNkjVMcGMUB3PhR
	hLSkD4/2Ez+2jhQutZ9KxNedYKtd3fgvyd09J3dF/dnzE9kb3nC57Zp2J43TWN7m9SGtV3v/TbOOv
	LRbjUD3qlEeyi9CoYkr9ZmDXD0BQz4ITaDrQ0tFVxDSjl8EBGFL8aCxx9gZ+eRGepgDhEAFXhBy8X
	Mr6MztOIPw719bd5G+Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFf-0ozm;
	Wed, 28 Oct 2026 09:24:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztp-00000006eE0-3cxV
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:51 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 71C42201E0D;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=awbt6uI1JBkfFFB8Tfi56IlJ5WezwR0a+Hqj/9bPbzs=;
	b=HFT1+ZN8wakST/vcos8RY8Bj57v+kImP1KQLNXaa/aXHeWqqCKy5Dk7gNtUmqH4uNcbpxb
	Gt2tiX0y9C2w0pjVa4NC+naqCwdK4ctvTLsFLUkCURCktnTiaeBUU79gjz0T5IqGRShKf/
	8ZbfYuR+UClOYJq16czAbRcX3nHhhLs+7if+DRDWpSqgStQx/NK7vjQDw2iuxFyjGkBelk
	8fOxholRDhZQMn0iDq3dvgQ9kFVRI1hWGGNujSfEh4x1NKGJ+xJm1NKW4IfI5rI2QPK+DK
	M+5cM466SLs4dG6fcdu0KJdk0tmZVdI6yPnz4y0Q2O9QaIExyM7zdbuxRi0rYA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=OrFbjIsptfis9fSliy5x9G/Ix4k6+TP9mwQNIgMoxIpPfcLdqH2i+QjjFFeTQnXGpwmyEH
	KSr8Tnj74M2NhtVIgKEui+f0mLqbFU2ynF/75WrR78VCyHFCkJdvU73zH8sE5M0AUJVG12
	TMmi8EwKO3V3KHAXf0xpwn8fkDV4TTI5y+UqEuttSQo2+5Cy44VbNexxOi4cwRhuh1jv+V
	Cz0ySlCdicFHqbMALphM9rrsAlj+tWPYiK9c418LRimVsYMNnvvtZxT9lm9VcnnRxER+57
	65VneuzBHHKQfeLG4k51JCs5nnbrD3+ojWUAscvwivTCgdEc4+ca6p2/Sg1GZA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=awbt6uI1JBkfFFB8Tfi56IlJ5WezwR0a+Hqj/9bPbzs=;
	b=FeezbbUFDzrx1GqCiHfBStYztFpsHXAxknPR5o3xQ0vZMx06os8OpsiDi/vdVfn/JKRvcj
	dwbGdxTf0ZJ7aWK24c4QXN/dWCVjDj8wybyhUx7csn6TAtB6Of4FwqLtuWIJccfzdf5/yc
	sLY4aRMG65edZL6c4ncEZC7g4n8lwG9obnL9HhiRl3GOJwUriIAZrwv6R9lCFNCZG0B6kn
	PSr6o2RBGXRTY12qfR0yzYY5mxu/k0SSZOuRBwjQB90Ny2BEznq0pBXBotFzswslpkoZUX
	VeDq6+IVgrQAnV2aptvMLP5YaZ1UxLAf5GqTOCEGfXra0+xZSP7ZliSqfAEoow==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 5F5F47427BC;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 02/19] commands: devunbind: don't poison the active list entry
Date: Wed, 28 Oct 2026 10:14:36 +0100
Message-ID: <20261028092442.3300753-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022450_379541_3CC40AC5 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> devunbind removes
    the device from the active list with list_del(), which poisons the entry,
    so a later devunbind -f crashes when unregister_device() removes it a second
    time. Use list_del_init() inste [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 3ACEC20294F
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	RCPT_COUNT_TWO(0.00)[2];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: qctoyqr455j4b3etkad87d87riu3mw8n

From: Ahmad Fatoum <a.fatoum@barebox.org>

devunbind removes the device from the active list with list_del(),
which poisons the entry, so a later devunbind -f crashes when
unregister_device() removes it a second time. Use list_del_init()
instead.

Fixes: 90244aef7299 ("commands: add new devunbind debugging command")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devunbind.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/devunbind.c b/commands/devunbind.c
index 76dd0b715e6e..9fd7483210f3 100644
--- a/commands/devunbind.c
+++ b/commands/devunbind.c
@@ -65,7 +65,7 @@ static int do_devunbind(int argc, char *argv[])
 		}
 
 		dev->driver = NULL;
-		list_del(&dev->active);
+		list_del_init(&dev->active);
 	}
 
 	return ret;
-- 
2.47.3




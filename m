Delivery-date: Mon, 24 Aug 2026 14:31:46 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTq5-006hRM-1R
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 14:31:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0A9962010D6
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 14:31:46 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OEgvk6wS;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SuFT4O4maUrR0Ca1WSt3l8H0ofbZFz/NWWqkpB6taBs=; b=OEgvk6wSYNnvKSjM6AVdqoevG2
	Qqk66bqzOjAF3jTnXD4GNBAHwOkz8CVMACAt/ctiZGIqvR/eRtkpP9re5m4bEuT/wC+Zb0c3zz8kd
	sbR1waAIhskd5KpBiA/syODnJ9fVtP78hQLBFFiwa0m2hGwXhGI5U5kW235Kz2scGkzsuUD2WfvPk
	zcdqffEqH8xXHUW7UPeb+d5Gt0gVoZQdxembd/3Cii/Ewb009n8XiitGdV5xFZ/xWC1XYUc7zRwiH
	7std6zUQ5+YB1Efxzds84aIcjTnSBPKlgcLWKqrJivVe/E/+PqbDmlP1bhzhdLXiEZdjFr2AoAhh5
	Fi3dyeTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyToz-0000000Gbr4-2wnX;
	Mon, 24 Aug 2026 12:30:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTos-0000000GbqU-0z4S
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 12:30:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6B8C0200444;
	Mon, 24 Aug 2026 14:30:28 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyToq-0036Sf-16;
	Mon, 24 Aug 2026 14:30:28 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wyToq-0000000C7vT-17n0;
	Mon, 24 Aug 2026 14:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
References: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] commands: fix typos and punctuation in help texts
Message-Id: <178757462826.2890372.2096867423127765513.b4-ty@pengutronix.de>
Date: Mon, 24 Aug 2026 14:30:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_053030_430093_BD05D75D 
X-CRM114-Status: UNSURE (   4.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 24 Aug 2026 13:55:31 +0200, Ahmad Fatoum wrote: >
    Fix various spelling and typos found by LLM. > > Applied, thanks! [1/4] commands:
    fix typos and punctuation in help texts https://git.pengutronix.de/cgit/barebox/commit/?id=bd532b68fb1a
    (link may not be stable) [2/4] commands: fix stale option strings in usage
    lines [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: eh617wrwaxbej1t96bxziiubm8pqtwaw
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0A9962010D6


On Mon, 24 Aug 2026 13:55:31 +0200, Ahmad Fatoum wrote:
> Fix various spelling and typos found by LLM.
> 
> 

Applied, thanks!

[1/4] commands: fix typos and punctuation in help texts
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd532b68fb1a (link may not be stable)
[2/4] commands: fix stale option strings in usage lines
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7e9b7bc9668 (link may not be stable)
[3/4] commands: fix wrong and incomplete help texts
      https://git.pengutronix.de/cgit/barebox/commit/?id=374565eaf7e5 (link may not be stable)
[4/4] Documentation: gen_commands: deduplicate entries from multiple definitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a0247818804 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




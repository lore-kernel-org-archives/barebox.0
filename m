Delivery-date: Mon, 17 Feb 2025 13:30:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GF-003Tpz-0t
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GD-0000F5-Ql
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41u9VVkXGgF72Gutajfg+NyDNfJ3N0Tgi0t22b7gDZQ=; b=0lpGQgBYPWWrQAjPM+nDvTijg0
	sCSyyzWIXMYv0szOc9DvukIsAiSGjDjMt0mumDxTGTcBa2X8RisRDEi31ablNIfUmHGN6XTYuFLwt
	Hb7kGe04ROpeFj8mfy+gI1vtXgAFIhSDI8iwzUDeGQCaoSKKHw3sG7TomAszufk87xdornDloyGih
	QlSk1jVZt8dv9T5HLFs2ZPgq0fBqXK98TA5FW2pLFS/ILkYwGnb0DgHORE+Pe/fNNS14YiTi36RdP
	NlzcWaoTRcGGS1eyo+OBrkO3UMx+X79i5LtSPGEatSNLnWzoAT4LahAhM4pnq60gKrU2L7+wBri+n
	gUCm7PVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0G0-00000004SIk-44DZ;
	Mon, 17 Feb 2025 12:29:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz19-00000004GfY-1nYd
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 11:10:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=41u9VVkXGgF72Gutajfg+NyDNfJ3N0Tgi0t22b7gDZQ=; b=oIExpYNg6GIB4ZBvx0moD+fwC0
	4GqRf9Pcny/hbutvFhD3KODxx99hTL3qM4OWmByyGQBD3Tu8/J54uXXHy57d1kQCrmyHso66iJfL9
	sD+JoGhOINGzriGJOOHL5SFp7FV1b8tem5H3EAvC0ujHeF2g3dfwENo2OTq4s4jvzfr+LSFHYK6Fu
	XrGTb1J9Edz/OIin6m/eD2Y8t7oChXr2y5G5n0gOHfXF0hHj+uhzNx0A9Z72ED4o9gQqN+UGvX6eV
	Rtuo5YO+prBfNM1GRYTt0uLrKZais4rbh6UryKfx9B/bWcL/XMLgHHwsjBhpq+aLqFCQka4Q4u/K3
	qF3YE6fw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjz16-00000001nGz-1jRp
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz16-0003uV-1X; Mon, 17 Feb 2025 12:10:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz15-001OiC-2n;
	Mon, 17 Feb 2025 12:10:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjz15-007Zmr-2Z;
	Mon, 17 Feb 2025 12:10:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250205094832.3576556-1-s.hauer@pengutronix.de>
References: <20250205094832.3576556-1-s.hauer@pengutronix.de>
Message-Id: <173979062379.1805746.12085164732940759491.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 12:10:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_111024_656866_C85DD778 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: fix free() of unitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Feb 2025 10:48:32 +0100, Sascha Hauer wrote:
> of_find_path() doesn't initialize the outpath on error. In order to
> free() it in the error path we have to initialize devpath.
> 
> 

Applied, thanks!

[1/1] environment: fix free() of unitialized variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=7221acb2f030 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




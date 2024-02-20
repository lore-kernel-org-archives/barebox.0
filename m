Delivery-date: Tue, 20 Feb 2024 11:51:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNiz-00Fvya-1g
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 11:51:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcNiy-00011z-W6
	for lore@pengutronix.de; Tue, 20 Feb 2024 11:51:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V07HOlqggJpsGfV0/EVXqk0Z6XJ4TvePC8pIx7WmxjI=; b=GoyzZsxFIetC9XX0N8ovgy3Ia9
	qUeynOPVlLw00DqbrrHrsYpSSu0LJk77xTvGiXRGQluqApZYHqaLesb5KZkoYzzN78WxywIpTwLEe
	x7tqSJ6Vu64dBo4YMIpEzEdiiiQXffQyS8fPjC4GinNY7x9Y6Hbb8gSz6fSZDM2MNW39dEAae2cnp
	Euxos76J9oVVbevgVVKiIruVPVHEk/VQtt3MdzckUKeKISMW6UhtkCD9YhAA14MRZQwGssl6gZE4C
	foFE+3F3M4M82O/VRwKwzYG2uhDFsiJtLR7Porlf027vWw62zJZsDLh0En8STF4oYFNSrJheszUQm
	WY9MTcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNiV-0000000EKkv-3wEQ;
	Tue, 20 Feb 2024 10:51:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcNiS-0000000EKim-2G6f
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 10:51:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNiQ-0000tV-Nh; Tue, 20 Feb 2024 11:51:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNiQ-001pJX-BB; Tue, 20 Feb 2024 11:51:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcNiQ-00Ax3N-0v;
	Tue, 20 Feb 2024 11:51:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240219105507.1618465-1-s.hauer@pengutronix.de>
References: <20240219105507.1618465-1-s.hauer@pengutronix.de>
Message-Id: <170842627028.2610130.14570400991766012366.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 11:51:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_025112_677479_13348631 
X-CRM114-Status: UNSURE (   9.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] default environment: make string arguments const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 11:55:07 +0100, Sascha Hauer wrote:
> Change default_environment_path_set() to take a const char * and let
> default_environment_path_get() return a const char *.
> Also, do not keep a copy of the string passed to
> default_environment_path_set() rather than the original string to make
> it more clear where the path is allocated. This allows us to free the
> string passed to default_environment_path_set() after usage by some
> callers.
> 
> [...]

Applied, thanks!

[1/1] default environment: make string arguments const
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4b4c2821454 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




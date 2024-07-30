Delivery-date: Tue, 30 Jul 2024 10:16:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi2G-004P2e-1J
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 10:16:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYi2F-0004xW-RF
	for lore@pengutronix.de; Tue, 30 Jul 2024 10:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ks2nA1MM1UWXzcy8z7WFpRAM+ydUQjUvktmbVLNVN/4=; b=e9T+5QL3FdZUHmPAke2Nl9Kdfa
	UghxWrfefG5gw0sPxQVdKmSIF+2/ZSZYCRkWzvsVgCCaRZTqVZCcan4PMdDMiQD36/aVX/4SgYUYT
	RN0QHQNDkyuAePAv6RjotuVw4yGMTdeld0nJ6l8rlYmVeNuR+JV5fheFCcW11w2KsMZKmwEJdz0+V
	Qyw8iTUW+ek/NUkZHso31TCsuz0jZYsXqG1PoeViPenQmap+3czq+NLgwFxOh1aKLfynHT+0cGZWj
	DiVq44coeWX0aMv5/bA997GVWIiXdwQ4RCWFxbCqGnSJB8n+EdkwfvXpNhDfZ8/4iin9PqGTYt+PW
	Lly3m3Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi1p-0000000ECq5-3ngC;
	Tue, 30 Jul 2024 08:16:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYi1l-0000000ECnx-2Tmd
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 08:16:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi1k-0004q7-3h; Tue, 30 Jul 2024 10:16:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi1j-003Exn-MU; Tue, 30 Jul 2024 10:16:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYi1j-004kyi-21;
	Tue, 30 Jul 2024 10:16:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
References: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
Message-Id: <172232737162.1133751.14657065369672452976.b4-ty@pengutronix.de>
Date: Tue, 30 Jul 2024 10:16:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_011613_659953_5E2920A3 
X-CRM114-Status: UNSURE (   8.41  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: fdt: fix overflows when parsing sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jul 2024 19:24:10 +0200, Ahmad Fatoum wrote:
> The function dt_struct_advance() is used to advance a pointer to the next
> offset within the structure block, while checking that the result is in
> bounds.
> 
> Unfortunately, the function used a signed size argument. This had the
> effect that a too-large size in the FDT wrapped around and caused the
> pointer to move backwards.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix overflows when parsing sizes
      https://git.pengutronix.de/cgit/barebox/commit/?id=26683ab9f27f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




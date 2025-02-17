Delivery-date: Mon, 17 Feb 2025 11:53:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjykj-003Rvr-26
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 11:53:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjyki-0007Wk-Di
	for lore@pengutronix.de; Mon, 17 Feb 2025 11:53:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzPKxeN+2D8UyG1lgKimazjO1jqMHbptWXsB3hDK2p0=; b=AYkGyxSDRL5zL+nAChNvHuQwSB
	x/WFHcBxrPKAmiwQOopy21++YtTSnWi+nDTnnITsgxPRIk6lJHWZu8KOjVoeMS/p/5YbirXx2dm7Q
	ikE2hLDZzjlapNgYIpxy6Us+1o9iYvOJvxA87gb/PTCYx929WhhFYXC37oPwe4SuaLzBChAytD+1I
	uG80SewfKnwntcEw2/PoBhDNtBLmud2TZFCHMr7yBmfzm3Wz6KTNtOMSyyAdsrEHCfy7MVRXSRg8T
	8MaDS03oOoOwp90qvPsUGQ1cgh4dLcU3QSakkRpi7EzuGp/gWrJe5Xu1M1HV4M1oUNxUTitGzBbrx
	31cgN/yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjykP-00000004AOZ-2S1U;
	Mon, 17 Feb 2025 10:53:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjwzE-00000003q7E-0a1x
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 09:00:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjwzC-0004pF-NZ; Mon, 17 Feb 2025 10:00:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjwzC-001NSJ-1h;
	Mon, 17 Feb 2025 10:00:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjwzC-00G4d4-1T;
	Mon, 17 Feb 2025 10:00:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250214112343.3076535-1-a.fatoum@pengutronix.de>
References: <20250214112343.3076535-1-a.fatoum@pengutronix.de>
Message-Id: <173978281845.3830924.6474920489633581807.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 10:00:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_010020_178769_CCA5C6C0 
X-CRM114-Status: UNSURE (   5.92  )
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
Subject: Re: [PATCH master 1/2] FIT: factor out fit_fdt_is_compatible for
 readability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Feb 2025 12:23:42 +0100, Ahmad Fatoum wrote:
> This introduces no functional change, but makes the code inside
> fit_find_compatible_unit() more readable.
> 
> 

Applied, thanks!

[1/2] FIT: factor out fit_fdt_is_compatible for readability
      https://git.pengutronix.de/cgit/barebox/commit/?id=272c1900d073 (link may not be stable)
[2/2] FIT: do not decompress device trees to find compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d7d60c4961c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




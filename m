Delivery-date: Mon, 10 Nov 2025 14:47:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vISEs-00HOoQ-01
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 14:47:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vISEr-0000eN-G3
	for lore@pengutronix.de; Mon, 10 Nov 2025 14:47:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+o337TxBX0fqtghx+gGYnLwFfvfj8jiHwzqnqEp3o8A=; b=FvvIvbC3kge/JPBIXuPcTIWHSp
	5MfTG3/K7sPPX3n16n7YiikshZedIomlHaTSu8DGKebqRjgXZZJXoDdFpzdMJsF+5YGB4yMMlKe4C
	4wuhwgapFg/e85Z4qMlAXAPL7kqGjyHf3k1DbsAEuEl/kBFB5sBjTv/y2w6dmhS7RZeVKDqQyZt5e
	rAaYPDhXRntHMFrbjYLqk+NESnGqMMlZo3TpcpNk/7fPMNqnzbIMKSRIsZoNao59fS9kn95UMs6NF
	+NSxiD9okPEFK9IqzXFUoV9JHrGoDwkiLZzNm6uEA03OsG+oxihDpQdOBw3LD6MXfsnpkRXeW8uwy
	gdJwejog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISER-00000005WmS-1tCS;
	Mon, 10 Nov 2025 13:46:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISEO-00000005WkH-1iAr
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 13:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vISEM-0000aV-Qq; Mon, 10 Nov 2025 14:46:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vISEM-0082I7-25;
	Mon, 10 Nov 2025 14:46:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vISEN-0000000H79b-07bv;
	Mon, 10 Nov 2025 14:46:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
Message-Id: <176278241058.4078874.10183737444403841048.b4-ty@pengutronix.de>
Date: Mon, 10 Nov 2025 14:46:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_054652_934045_8522E42D 
X-CRM114-Status: UNSURE (   6.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] fix some memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 13:00:50 +0100, Sascha Hauer wrote:
> This series fixes some memory leaks I stumbled upon
> 
> 

Applied, thanks!

[1/4] tlv: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=adedf3ccc4c0 (link may not be stable)
[2/4] of: free of_fixup in of_unregister_fixup()
      https://git.pengutronix.de/cgit/barebox/commit/?id=57562a3ad89d (link may not be stable)
[3/4] bobject: free object name in bobject_del()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e91e857bf1b (link may not be stable)
[4/4] bfetch: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=30626671d567 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




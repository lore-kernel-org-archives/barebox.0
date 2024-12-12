Delivery-date: Thu, 12 Dec 2024 09:20:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeQa-00777Q-1I
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 09:20:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLeQa-0001XI-CO
	for lore@pengutronix.de; Thu, 12 Dec 2024 09:20:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=STrwjPhrbv64thoBe+fEIJKGWaeh9z9lxwlgGj3UxzU=; b=X5PcJCyFi5zyXdbBhCHlRXKx7W
	8PsVJtuO29gLla/ILKYlEKWiBa06L9w0wdrRtuGqK+INKJjUfiG699flQ3Lnv+vygKTU5rUvgs7eJ
	pNtt4oVjVq2RA0ZWyAve55mCDaHDYS6zS/qqxsNO/BQUWwYHPwwQ8C8bjiQnujIgKImog1bhhT8xS
	XDa/L3tDlx5KxO/h6Ls+oVCTALBgApe77ICm3yfQ8HhaqNICog76bv8Q5HiX28G9KRnlyxa084ZR7
	4P5+L3soloH5xW/uIK/ZZETBEgXBALGwnYeOvddKTkC0wmnoYKDnYOGSjOGs/fuqw3mqrEp9jut7q
	up8V6C+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLeQC-0000000HGw2-0AXd;
	Thu, 12 Dec 2024 08:19:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLePN-0000000HGf6-16mP
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 08:18:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLePM-0001Jl-0i; Thu, 12 Dec 2024 09:18:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLePL-0030DF-0D;
	Thu, 12 Dec 2024 09:18:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLePL-00CTPE-2U;
	Thu, 12 Dec 2024 09:18:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241212072228.2468741-1-a.fatoum@pengutronix.de>
References: <20241212072228.2468741-1-a.fatoum@pengutronix.de>
Message-Id: <173399153177.2972543.14297781876849779354.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 09:18:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_001853_303148_14753910 
X-CRM114-Status: UNSURE (   9.48  )
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
Subject: Re: [PATCH master] net: tap: return -ENODEV when TAP permission is
 denied
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Dec 2024 08:22:28 +0100, Ahmad Fatoum wrote:
> tap_alloc will return -EPERM, when not running with CAP_NET_ADMIN.
> For most users, this is the default case and thus barebox printing:
> 
>   could not get tap device: Operation not permitted
>   ERROR: tap tap0: probe failed: Operation not permitted
> 
> is just confusing. Improve this by returning -ENODEV in that situation
> instead, which driver core already understands to be an acceptable
> return code that warrants no error message.
> 
> [...]

Applied, thanks!

[1/1] net: tap: return -ENODEV when TAP permission is denied
      https://git.pengutronix.de/cgit/barebox/commit/?id=7ddffa986081 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




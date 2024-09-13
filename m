Delivery-date: Fri, 13 Sep 2024 08:33:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sozrf-0041t7-2p
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 08:33:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sozre-0003vW-NK
	for lore@pengutronix.de; Fri, 13 Sep 2024 08:33:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HSsE2koSU5eZxGI5KWrcZgcGABuR8yfuGFQ+mvd6GDs=; b=fC9iKRt426s9eK9E8JNpSOAqhu
	RO9TNi0DFiSdOiAGuvcIPy7IdmANTsjaoPQ0TQ8PW+ArrdZJpG3ZxS7HujFCfPQ+eoXfTaxHtq1rj
	6vXr2W7FYVl4hgqBmXITXP4aBP9QOIHME5WaK0GuCkDO2AMHog1IksnoGm3/cLjPWSXGEOPY5Eeov
	6Mn0qM4sUZXzhLqYRQLbYFOpt8ePzfQG++qv30Yd5pxudq1zoZqgW7LsV53ovS+lgSEE3lQrwkLTs
	vIeX9q3uu4J/m/aCe8V2miN05NQE3dIZ+PxLdkH8Ry+ZZKieXsrxOFY25udBDIOcWvKcCacAfJEUV
	mr2Dpjjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sozqw-0000000F3kY-2wUP;
	Fri, 13 Sep 2024 06:32:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sozqt-0000000F3kA-2mXT
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 06:32:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sozqq-0003fa-AP; Fri, 13 Sep 2024 08:32:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sozqp-007Yii-U3; Fri, 13 Sep 2024 08:32:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sozqp-006Y5y-2o;
	Fri, 13 Sep 2024 08:32:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240911111318.2963525-1-a.fatoum@pengutronix.de>
References: <20240911111318.2963525-1-a.fatoum@pengutronix.de>
Message-Id: <172620913586.1561017.7293571837747822630.b4-ty@pengutronix.de>
Date: Fri, 13 Sep 2024 08:32:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_233219_731673_B81C6255 
X-CRM114-Status: UNSURE (   6.61  )
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
Subject: Re: [PATCH master 1/2] lib: jsmn: fix compilation error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Sep 2024 13:13:17 +0200, Ahmad Fatoum wrote:
> With recent restructuring of the headers, kmalloc_array was no longer
> indirectly included, which broke the build.
> 
> Add the missing headers and while at it switch over to normal malloc,
> because kmalloc_array() uses a bigger alignment than necessary.
> 
> 
> [...]

Applied, thanks!

[1/2] lib: jsmn: fix compilation error
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f29d811991a (link may not be stable)
[2/2] include: stdlib.h: define prototypes for malloc/free
      https://git.pengutronix.de/cgit/barebox/commit/?id=fa2b2b0be7ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Fri, 19 Jan 2024 09:10:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjxU-006icV-1b
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 09:10:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQjxV-00037c-6p
	for lore@pengutronix.de; Fri, 19 Jan 2024 09:10:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fzQJ98UWrF2kCZDuK78zi4xPQFmJaBE5eYxiBdCk3rE=; b=D+Q43HQGVL6qhQQHAF+L1Z7wDf
	p6nzYnnavOpJRKTjJzlKwlDlELaQvYRujGZrg8cKB6JAzgn4WPbHjHDML3NtOGCfVweJd/D48yuRd
	7Yio0bNeLqHdQzed7+y17kykCPY06CeR/FIgT9B0NDiia7xYBPasBRKzG3QJ7w+9HX5/AuMlFO9X0
	ntnp4FAamISEuHiOeFFv5u8J+qKFwRkMtek1d51Lt6ZI3ZkuhFCT66kRfpvKpOxO3SkwRGBPS5un3
	ncLoMfjQLH+fF8NemnBW3aqKWdBDyAoM3JR4bS/1ttphau3Erc/wCVV1fAv8DCV3HFeWgkQeqJctW
	xEZPFCmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjwT-004nQn-2B;
	Fri, 19 Jan 2024 08:09:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQjwQ-004nPH-1h
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 08:09:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQjwP-000336-5q; Fri, 19 Jan 2024 09:09:29 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rQjwO-000sMA-PQ; Fri, 19 Jan 2024 09:09:28 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQjwO-000gsn-Mp; Fri, 19 Jan 2024 09:09:28 +0100
Date: Fri, 19 Jan 2024 09:09:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20240119080928.GP4700@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <170565133573.2284020.3962598950595077783.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170565133573.2284020.3962598950595077783.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_000930_561958_112CEB3A 
X-CRM114-Status: GOOD (  17.80  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/18] Dynamic OP-TEE Loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 19, 2024 at 09:02:15AM +0100, Sascha Hauer wrote:
> 
> On Tue, 16 Jan 2024 18:07:20 +0100, Marco Felsch wrote:
> > by this series it is supported to load OP-TEE to random DRAM locations.
> > The location is parsed and configured if the builtin OP-TEE contains a
> > header-v1. For this to work we needed to cleanup the imx-scratch code
> > (patches1-4).
> > 
> > I've tested this series on i.MX8MM and i.MX8MP SoCs using the eMMC and
> > QSPI boot mode. The USB boot mode was tested on i.MX8MM only.
> > 
> > [...]
> 
> Applied, thanks!

I Applied it with the changes as discussed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 02 Sep 2026 09:09:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1f6Z-009vMR-2j
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 09:09:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 51E9C200F45
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 09:09:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RvlthKxF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yPWcO33OVPKiKe7UDAGem6kpmOKU9sTWAIYNAf50qZo=; b=RvlthKxFdDqXnDyP4FRU6aIEhh
	R/h7yO0L2Fcs7UcKE9rVaJH7lGkM4imruSkCdwHle6OXBXmT9NFqPYbf7PSg34WtTheV+jnQSap+0
	UrRe3JYgps24QKyoRaok5jiBVDY7kt8ERE1iPRANwMZf4JNnEFS+EZdCMJMhXIGa4liQZkSHPY43a
	4YwDuBtEbRkwTft2yzWsNSZqLWAMxBDTs95XSmHx/VnC5rvITqMvwiI5BVamMXNEz0xtEpWu8OmUu
	xdPbhF6Rn600wNhah5DYLKHa9JWQcSp4Jxxa3tJ7VVMNG9SYremu5wqFnb/shoFb/8OaIT7WzUPrW
	F4cn2woA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f62-0000000DuI1-308k;
	Wed, 02 Sep 2026 07:09:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f5y-0000000DuHY-1zpu
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 07:09:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 84D29201AAE;
	Wed, 02 Sep 2026 09:09:14 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1f5u-004YLU-1U;
	Wed, 02 Sep 2026 09:09:14 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1f5u-00000001742-1hGu;
	Wed, 02 Sep 2026 09:09:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
References: <20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de>
Subject: Re: [PATCH 0/4] extend cdev alias support
Message-Id: <178833295440.265443.10959203658725744844.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 09:09:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_000918_905652_E8D8963C 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 11:48:24 +0200, Sascha Hauer wrote: >
    We recently introduced creating a "usbdisk" alias for USB storage > devices.
    This so far was incomplete: The alias was only created for the > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Queue-Id: 51E9C200F45
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: nub4inpsst1nbp6y59bini3b3kph4dux
X-Rspamd-Server: mx1


On Mon, 31 Aug 2026 11:48:24 +0200, Sascha Hauer wrote:
> We recently introduced creating a "usbdisk" alias for USB storage
> devices. This so far was incomplete: The alias was only created for the
> whole raw device, but not for the partitions. As it's usually the
> partitions one is interested in the alias was rather useless. Also
> block devices automatically get an automount point registered under
> /mnt/, and here the aliases were not added.
> 
> [...]

Applied, thanks!

[1/4] fs: devfs: remove aliases from the list when freeing them
      https://git.pengutronix.de/cgit/barebox/commit/?id=c4ee37dddcce (link may not be stable)
[2/4] fs: remove the default automount when a cdev is removed
      https://git.pengutronix.de/cgit/barebox/commit/?id=e9036f424d6d (link may not be stable)
[3/4] fs: devfs: propagate cdev aliases to the partitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=ad874d0d5ea4 (link may not be stable)
[4/4] fs: devfs: make the default automount reachable under cdev aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c590f99b38c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




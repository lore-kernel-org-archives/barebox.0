Delivery-date: Fri, 11 Sep 2026 16:05:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x51sn-000y60-2G
	for lore@lore.pengutronix.de;
	Fri, 11 Sep 2026 16:05:37 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wmD4Dqly;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 87D1E205A1B
	for <lore@pengutronix.de>; Fri, 11 Sep 2026 16:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=USzd+2ybZONGUzrTbFftRshEAIs6+3iHEZaOCv5W6+4=; b=wmD4Dqlyg2K5wr9BzY5lziom2k
	VqYqrTJml2f+MgAskUIiZxGnNJJgIRazc3MFsZFDfeRQRWzgS/tATWBxaITE6A5JEV6feLEG+3SbL
	oZiG5/FTQV7reE7YYhlu/wFdHHw0/G2ByCQQY8CSohJiJ35atxmCjTEAX0uzIhAzSqeb0Hjrw9AO/
	gmg2HhuRiIQ9Hh1WdTiJ4TRBA9NkHBlawUtGWeB5MicaaDPHalESL14CuE+HeQ0YUWxWDqgD5yu9s
	KIW4G61y4Hpd+O6FuihfJ87l853GFpz++xsK1TOGoY5q/86KX84m6UqZ2F03frAokSbi69l9XZCG8
	W43BWFSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51re-0000000GqgI-1NFc;
	Fri, 11 Sep 2026 14:04:26 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51ra-0000000Gqfs-1G2h
	for barebox@lists.infradead.org;
	Fri, 11 Sep 2026 14:04:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 675DC20268F;
	Fri, 11 Sep 2026 16:04:20 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51rY-000Qf0-15;
	Fri, 11 Sep 2026 16:04:20 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x51rY-0000000A9hQ-18CR;
	Fri, 11 Sep 2026 16:04:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
References: <20260908-fs-filesize-fixes-v1-0-8cf3e781a4d0@pengutronix.de>
Subject: Re: [PATCH 0/2] fs: reject inodes whose size the superblock cannot
 address
Message-Id: <178913546026.2420551.13685534641272061556.b4-ty@pengutronix.de>
Date: Fri, 11 Sep 2026 16:04:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_070422_494308_FAFFCD4F 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 08 Sep 2026 10:32:08 +0200, Sascha Hauer wrote: >
    This is a continuation of the patch previously sent as a single patch. >
   > Additionally I added a patch cleaning up the FILE_SIZE_STREAM disa [...]
    
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: wmnos416xpr7yq1majxs7ao6t6cnz8x1
X-Rspamd-Queue-Id: 87D1E205A1B
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Tue, 08 Sep 2026 10:32:08 +0200, Sascha Hauer wrote:
> This is a continuation of the patch previously sent as a single patch.
> 
> Additionally I added a patch cleaning up the FILE_SIZE_STREAM disambiguity.
> The problem is that we overloaded the inode size with a flag indicating
> that the inode belongs to a stream with undefined file size. The new
> patch solves this by adding extra flags to struct inode.
> 
> [...]

Applied, thanks!

[1/2] fs: track streaming and unknown-size files in dedicated inode fields
      https://git.pengutronix.de/cgit/barebox/commit/?id=260a4c6af4e3 (link may not be stable)
[2/2] fs: reject inodes whose size the superblock cannot address
      https://git.pengutronix.de/cgit/barebox/commit/?id=b37ad309e6ca (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




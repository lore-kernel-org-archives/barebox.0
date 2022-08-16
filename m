Delivery-date: Tue, 16 Aug 2022 11:21:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNslB-000X1A-US
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 11:21:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsl9-0000tl-In
	for lore@pengutronix.de; Tue, 16 Aug 2022 11:21:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wj5LSqnzJfBWW1qvjwmpJKTb0zFbMrwl5bkEz1Q/Ow4=; b=g2vn5u7gYhRyQwLTskvmOHi5Ri
	YGmgklaL1g49KjsPBVYUMfPgMOz6i0oklMuVo4zTNt0tcSknEEs8rkC7+ug7Bl1tZfYbV/nXQ6Ukz
	hzY56nAEsp185EOyCxoz8SG/so55s6s6BjVps4PeyggUgh5sL6qItSt3Yt1baaLMli1CMp7v8TNDG
	cBh5kJTFr6oerY5PpekMe7pA/mLQyJNweCKNmtt3HgLELSlylpchG1P/pOc7r8IHZuDXrG37jwGU/
	OuHkIVgR2mi+lbt8dh8k5qTMp8KVTH5gRw4wfidkBjL+eChx2xu9v9QP/snj+3tUXqYbTsiwfg/gr
	qP4SlKzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsjc-0008H2-2Z; Tue, 16 Aug 2022 09:19:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsjJ-0007qC-I9
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 09:19:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsjH-0000RB-IH; Tue, 16 Aug 2022 11:19:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsjG-0001Hn-P3; Tue, 16 Aug 2022 11:19:18 +0200
Date: Tue, 16 Aug 2022 11:19:18 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816091918.GO17485@pengutronix.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_021921_644306_0D405045 
X-CRM114-Status: GOOD (  17.65  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/18] add "windowsize" (RFC 7440) support for tftp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Enrico,

On Mon, Aug 15, 2022 at 10:42:04AM +0200, Enrico Scholz wrote:
> The tftp "windowsize" greatly improves the performance of tftp
> transfers.  This patchset adds support for it.

There's a variant of the tftp-hpa package with RFC7440 support here:
https://github.com/ClausKlein/tftp-hpa.git

I tried to test your series with that one. So far I wasn't successful
with running that tftpd, mostly because I am on a machine that already
has a different tftpd running at port 69 and I don't have root access
(or rather I didn't want to use it) on that machine. I'll have a second
look at it later. I just wanted to notice that at least theoretically
you could test your series against another server then your own one.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



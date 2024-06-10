Delivery-date: Mon, 10 Jun 2024 14:29:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe94-003gjp-0B
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:29:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe93-00007d-DV
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:29:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F3UVtiL6EWBU8ngS5ZhCDzRqEP6TKAjESz8dQg427LI=; b=Hk19NnuK0bDhy1bvh2I5TCsbP9
	AAAOGbTalfIFeX3CuV/3nbomY4hurn4xuRBkooZ3NH12wf7g+ITQ/fvGPm518TM3GFdR94D0/1czd
	zH3O5hUfizVzL0Hwju5LE/+qLf/R9Yg735prj+XKr89LU76ihmKuPFSM6F/q6gQoudhv9L9xoUCFl
	olQ99PWDTKT42U549pZzMD+ujK6+UlCBXDd0vrFv3DpIMfpHQ//j/fBJodbegiLXjTumpeqtd8rk5
	SGJbOavuZI5wLDMhSjx02rgeOjx4tbVpVHv82Wrea/1NLsW5hmYpL1iwAu9A0CCcK0oRyt5QAPA0f
	cZ9Cs4Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe8b-000000050eY-2Jkk;
	Mon, 10 Jun 2024 12:28:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe8W-000000050di-3E5k
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:28:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sGe8V-0008Vh-9c; Mon, 10 Jun 2024 14:28:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sGe8U-001Ioe-TP; Mon, 10 Jun 2024 14:28:30 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sGe8U-002nM2-2f;
	Mon, 10 Jun 2024 14:28:30 +0200
Date: Mon, 10 Jun 2024 14:28:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ZmbxbsRu-nP4NENr@pengutronix.de>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
 <20240607001259.107805-5-antonynpavlov@gmail.com>
 <20240607092409.b50e80b617ae5c6fb182d854@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240607092409.b50e80b617ae5c6fb182d854@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_052833_822570_0AFD91F8 
X-CRM114-Status: GOOD (  14.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] ARM: vexpress: make debug_ll work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jun 07, 2024 at 09:24:09AM +0300, Antony Pavlov wrote:
> On Fri,  7 Jun 2024 03:12:59 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi All!
> 
> Please fix misspelling in the subject of the original patch message. I
> have missed final "s" in the word "works".
> 
> The subject should be "ARM: vexpress: make debug_ll works".

No, it shouldn't. The original spelling is fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



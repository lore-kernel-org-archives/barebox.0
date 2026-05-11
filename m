Delivery-date: Mon, 11 May 2026 09:25:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML1a-000Toi-22
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:25:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML1V-00063D-Vu
	for lore@pengutronix.de; Mon, 11 May 2026 09:25:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTKQu0C5jxxzynyJcPucGOLfQAbDtmmR9YHQr4dFqrc=; b=dUJjSY9aC9c2PgNJ8qdbQiNNjt
	TGCjRfBfXGYYr414s4MpItVyZGCyx/7xshLBqOJn+MsjKepOC2n7xpFqQHBwiZyzfeSOIqqzG4gsO
	VPXWDWLaKqHwUJUcSYeH+k72fbmfWpVCo+xMFrhGXOp3nhqHHoBE3SjeowuzhX8wL00Ai+QIx/s7v
	Z2vhQ2FU5XBip5TmLUGjtM5DTsxr3ATS504+d9Ab6JI1Rw76TGSQ85LM2NZIVGbltEde7iO1Vuuoc
	qmX2+tn0Hi3OhfByVRjlt1LBYoag1gXjiR19vj+qDEOJGR46ggCbf6kI7Zy/qKzCvef+0z3AHipmb
	ov+tYy5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML09-0000000Cb22-497b;
	Mon, 11 May 2026 07:24:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML07-0000000Cb1Z-3hfS
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 07:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=JTKQu0C5jxxzynyJcPucGOLfQAbDtmmR9YHQr4dFqrc=; b=lya8ktgmGnSYjaXGO10+inIpvw
	gYQxYhaJ6eNcrNS/d1GriunhRsRxyLjH9h0hzqNGpm5aHcO2BASlsXpxn41YCkp3ofkN/9BzNhpga
	KIyxxE2Frb3TnQaIGhmXZc9HtG0NtnQw8HVr9cYsy2SIyOBLRZzgj1Qw1ua/9Q/Jt62Sh8MCTvHSh
	RfZ+J+wFP+ush0hB6taYoY6gIaYomBvCOPQZbUXuCBruUFaNT5AKUimb7G944A6+qV3KtkZEVxegg
	PnQF1jMTmriFaGJk54S9nX4jUpaEPyqVDqD1Vx+rF7d+DMWRvnQgDsGIphff+XlEi12y+MP9mImHV
	L8u9vMcg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML02-0000000Aqyf-0O3g
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:24:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML01-0005dp-T2; Mon, 11 May 2026 09:24:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML00-000DIt-38;
	Mon, 11 May 2026 09:24:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML01-0000000DEpZ-2j6W;
	Mon, 11 May 2026 09:24:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260507115408.1370019-1-a.fatoum@barebox.org>
References: <20260507115408.1370019-1-a.fatoum@barebox.org>
Message-Id: <177848426164.3155264.2807512887269105731.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:24:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_082424_493235_71D90F5A 
X-CRM114-Status: UNSURE (   5.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: fix memory leak in automount_add()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 May 2026 13:54:07 +0200, Ahmad Fatoum wrote:
> The struct automount is allocated before validating the path, but both
> error paths (filename_lookup failure and !d_is_dir check) skip freeing
> it. Move the allocation after validation succeeds.
> 
> 

Applied, thanks!

[1/1] fs: fix memory leak in automount_add()
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf25c4a93cdf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




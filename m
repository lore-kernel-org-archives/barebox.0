Delivery-date: Mon, 20 Oct 2025 14:59:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTe-009toh-0U
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTW-0000nS-MG
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SWB9Rh7BrK/6LfykqyM96BCx/NaBmhNxgweucpfTygQ=; b=CtojuUogNn0QxQ4/vVbJFIbTjf
	ZHjdP62IDRJzx2KXQzqTQ57RwG6h/aR5r08FXJWui1b7NKfsphv9/1luwE+HJxAMpE9+h4kBokbxt
	0nAGpW7F/yvh48Y2yeit9bqHFrdZ28pVaysBvd15sfG5yPl20ypQPvRoNJLbL/IWCVyDOZ9I7wvou
	dH1L/SwheKlHIUbeBKhWUI0XVxXq/CWOCaa2+QS5ml50Pw3oF65F103fq4wK1qMUO5W/LZVF+8VNd
	SJpiOksPDylUCsDp/kUDv9qsKpC48bLzrFp0mfkmZMAqxTPN3k+5Yr8tnUd970rDzzcg8LogLqpHo
	wydNlA1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSo-0000000DfNb-1ow3;
	Mon, 20 Oct 2025 12:58:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSj-0000000DfCl-2QjT
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=SWB9Rh7BrK/6LfykqyM96BCx/NaBmhNxgweucpfTygQ=; b=Jgu31GohFBcCtL6eic/5HNZEql
	TWQpNLzB81SaSSR9ZeH4IThQeLGRnHDmE7oixXcIsCJt+JvJDHwK3kQw8vEYdXHf4BVTUROk8DKUd
	B5cVMjc85APdDf5UcS0JoWXppqqIKJl50r4s14sfR2N26s1N62QMzffryXywF/0aFR9okFmDH+Mjo
	ULF2meMxyRy/QzZTK9fa5lojjeQaqFI/xsJZj/BwaD+7XOTwi3CkQPoOaFSSv+qyjHXHS5j+P+UCT
	ndlyMMCfML6U0057FidG3X7wCEGSvxYITgFVpm7iW8ImMXSz5wj9SibKRmM1mdA9R8FUMvDAKOjbW
	wUFnTVUg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSe-00000007hVa-3EKK
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSb-0008C4-AE
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAny1-004XSb-2A;
	Mon, 20 Oct 2025 13:22:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAny1-0000000A5Rm-2XBn;
	Mon, 20 Oct 2025 13:22:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251014-virtiospam-v1-1-138c7a8dd3de@pengutronix.de>
References: <20251014-virtiospam-v1-1-138c7a8dd3de@pengutronix.de>
Message-Id: <176095934159.2404209.10946518890211714021.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 13:22:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135806_073917_4959F116 
X-CRM114-Status: UNSURE (   3.71  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] virtio: Stop spamming debug buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Oct 2025 11:37:34 +0200, Jonas Rebmann wrote:
> At log level 7, this permanently prints over a hundred times per second,
> probably unneeded debug print, drop it.
> 
> 

Applied, thanks!

[1/1] virtio: Stop spamming debug buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=d4131710d095 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




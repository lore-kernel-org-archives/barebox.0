Delivery-date: Fri, 27 Sep 2024 12:43:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RP-003N2l-14
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RD-0005gU-Tr
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aF9jHsFnYbfnZy1k7N3YRu41cMfg9Ba6OHZXJLsEY/Y=; b=OsztJhFRMOCC1/bBaB1EgXTodZ
	haZfHLjboXiBSigWwFmZHduCAxM+S9M1y2H84YofhK4E464naEkBWeCBwG++TmFCYXdAGMbY5+Zvx
	uw5bncIjXotl0fcYrIExr2i4cgvAJ6ZSTWMblh4PlQJ3yo1QNXQR8sdefv0cG9NjKstlkQTxzH5kN
	qAuHnsM5jMyl4PEZRAR1T5mskBkdXdvfnF687sh8sLCcsZfu/5vhSnrVfFMi34LZqqijOJsQqYZ0X
	dk+Rzb+9WLhBn+vG0zERG8fZGxShWwNEPltOX7kNelLLgE3SGO2HPisDcInbH89+SX1f/vBOC41CO
	cqotI7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QJ-0000000Aqnm-0HXQ;
	Fri, 27 Sep 2024 10:42:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ny-0000000AqG5-2JWq
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=aF9jHsFnYbfnZy1k7N3YRu41cMfg9Ba6OHZXJLsEY/Y=; b=Wp7+gzUTN5lkAj6k7uMLjmpI1a
	pDoSgcb84fW59a+YQI2/JBNuuKTSy3Tejije3AJXNrq2ChaPTZdpy3Lmjo34WmUphm+4jHPXZlw1W
	MvPMhmASfPwr8v00mXsqDdU9Qvg/lrVpcHcvba8oIJo1Ug1V3Wnsx9l7EdV0kIHa+ntzAxbg9LFrg
	vUhy2QJzp84iHeRRFZjdaj41MpjAxH5E0jvTfW9XXipoGCjAw27QWY6w2DvxCnD3FR/X7beWImvd4
	SuiDwSM/+y36FnUl0JUzl56c8wn5InmOvM9bidr41xTklszfTVo+zSS0IK000xVMfdImAL2O+SzBc
	hNQQqDRA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Nv-00000002KbH-0KIi
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:39:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Nu-0003c3-NZ; Fri, 27 Sep 2024 12:39:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Nu-001u3u-B3; Fri, 27 Sep 2024 12:39:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Nu-000Q1r-2M;
	Fri, 27 Sep 2024 12:39:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
References: <20240925-of-graph-fixes-v1-0-c0a3ac989b0c@pengutronix.de>
Message-Id: <172743357829.100030.17523147630973718997.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 12:39:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_113939_387397_4C6D9691 
X-CRM114-Status: UNSURE (   6.80  )
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
Subject: Re: [PATCH 0/5] of-graph fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Sep 2024 16:01:10 +0200, Sascha Hauer wrote:
> Upcoming Rockchip VOP2 support makes use of of-graph which uncovered
> some bugs in the existing code. This series contains fixes for it and
> adds some missing functions.
> 
> 

Applied, thanks!

[1/5] of: fix of_get_next_child() for prev->parent != node
      https://git.pengutronix.de/cgit/barebox/commit/?id=c07ce9b0678c (link may not be stable)
[2/5] of: fix of_graph_get_next_endpoint()
      https://git.pengutronix.de/cgit/barebox/commit/?id=c8c506a779dd (link may not be stable)
[3/5] of: of_graph: honour ports subnode
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a5d0ab7dc64 (link may not be stable)
[4/5] of: of_graph: fix of_graph_get_next_endpoint()
      https://git.pengutronix.de/cgit/barebox/commit/?id=09fb886aa387 (link may not be stable)
[5/5] of: of_graph: add missing functions
      https://git.pengutronix.de/cgit/barebox/commit/?id=52dd0d4c8a75 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




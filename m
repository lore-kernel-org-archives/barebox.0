Delivery-date: Wed, 04 Mar 2026 08:37:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgnI-007u9l-1v
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:37:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgnI-0004BA-V2
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:37:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LeuHRRxSGc5ctkLmmrXIMqht8IQTRFbINtP++ZTGWWY=; b=IhtpIxo7JKSB2t7Wndp584Fx6R
	wrDVQbrOi6bSOzT+4kvzJu9QgM/Oodk/ffsD68DMR4AiF9yGrB+oAnSOSOuaVSECnaGOnGluVP5Yu
	NTOcfk25Dlw/Lw5+bfInkMVworlN4paxbrRpKKIwNLn7a9x5ajuT6zoY/xo75SMNubzAMtksI/jOd
	6btdd1SvYYfW2GXjiYzySeSoGt9XztDq+mZd9Lgrm6PRxDBuc9ftKu0vyqzF+oi4cW5LmzoAUfEP2
	IHW2C6PgJAfpj7vVS6jMtE107Rs64xq9S+LqM27VraIDDY/cMxiP+nNaYb7qI/zeMhAg7TqOz1rr+
	wqmOE1OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgmv-0000000GcFG-1Sn3;
	Wed, 04 Mar 2026 07:36:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgmt-0000000GcES-12Nk
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:36:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgmr-00045f-Ri; Wed, 04 Mar 2026 08:36:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgmq-003g2J-13;
	Wed, 04 Mar 2026 08:36:53 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgmr-0000000GL63-2aAj;
	Wed, 04 Mar 2026 08:36:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260226110758.505072-1-s.hauer@pengutronix.de>
References: <20260226110758.505072-1-s.hauer@pengutronix.de>
Message-Id: <177260981361.3894166.4930186749245249014.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:36:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_233655_288996_C9A5CC7D 
X-CRM114-Status: UNSURE (   7.34  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pbl: console: implement vprintf()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Feb 2026 12:07:57 +0100, Sascha Hauer wrote:
> vprintf() can be used to implement printf() which is done in this patch,
> but will also be usable for panic() in the next patch.
> 
> 

Applied, thanks!

[1/2] pbl: console: implement vprintf()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f626f1a9e049 (link may not be stable)
[2/2] pbl: fix panic() message printing
      https://git.pengutronix.de/cgit/barebox/commit/?id=33e3bc478232 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




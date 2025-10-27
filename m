Delivery-date: Mon, 27 Oct 2025 11:16:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKGx-00CItj-1r
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:16:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKGw-00033H-Un
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:16:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kRAjDD5ktkDW0JHMAEAp52QsZdVReAXrCkDP9rQgq3M=; b=Ypm25S7+cerC9Q61113CfvkTxp
	qxLDdp4mDDApMEY6n3m3KngYuItMUPgHidjdVBgp6YV7uRn2oNaWi/8b6aAaEU+5o594ilDqIkQZQ
	SdFO29+Sj3lHKm5GM3DPnrqMpBSh/hjklkAF304iYlIflPufGFnsp2xn4end2tHaz4rbdVTPiBe9Y
	83Cjg13h3+1kNBKTHgqwp17AwBmdQ+lIDzExeQin3dJFc3ik4UUQ3Ervsfx9sKQahRHgvcxV3Zob/
	I2W7mxFeBbHyqK4z324xOjGUYJj+I1QttltqWuCbrcDe+y5cPcbYLje+7+VHFDZXqkVjqoe2khPbJ
	O5J2zQHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKGa-0000000DdXi-2P98;
	Mon, 27 Oct 2025 10:15:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKGX-0000000DdXN-47G6
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:15:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKGW-0002zF-Bn; Mon, 27 Oct 2025 11:15:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKGW-005gh6-0Y;
	Mon, 27 Oct 2025 11:15:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKGW-000000012nA-2LFE;
	Mon, 27 Oct 2025 11:15:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251023123325.1129675-1-a.fatoum@pengutronix.de>
References: <20251023123325.1129675-1-a.fatoum@pengutronix.de>
Message-Id: <176156015210.249019.5928009363321385691.b4-ty@pengutronix.de>
Date: Mon, 27 Oct 2025 11:15:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_031554_025154_FC4E391E 
X-CRM114-Status: UNSURE (   5.93  )
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
Subject: Re: [PATCH master] Documentation: boards: k3: fix wrong
 indentation in ReST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Oct 2025 14:33:21 +0200, Ahmad Fatoum wrote:
> Building the docs warns about the lack of indentation.
> 
> 

Applied, thanks!

[1/1] Documentation: boards: k3: fix wrong indentation in ReST
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a7fb515e255 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Mon, 01 Jul 2024 15:26:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOH3G-000W29-2X
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 15:26:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOH3G-0007oJ-8D
	for lore@pengutronix.de; Mon, 01 Jul 2024 15:26:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGIPxyrXugHjswVl8S/N7+onyPNMoUXPtdz+ISL2knI=; b=wHodNeavFdpEQDo3AIPa4X+qYp
	Fw+RcshfOZBOrGun27LUXxM6rQOKVMPsXgh/pnMbvqoXDnDj1J/9jtuWrejfLNUS+wmTJ75n+ntG9
	J5J4ofmUfUqmMRNNNOrJUEutMsLzVupJtJ6n2zaayNaU2vUWjrpDyBeylgNxVejpqs0iqEdPkQ400
	1w6c76SpgkyFghBjQGUjPrFfbIdogColKe70hEVpuVLNDgd4wCaLJFyJ3uWIrhvtQt9XLmDWlH8Iq
	UiQb3o2lK+8UiBbhiXVqGUfBe5Ma9ZvoiTBEcVuDRod42iUH+Do87Z2P60mHpLw4QT0m5fpnbVcpQ
	zXmwhkDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOH2p-00000003Teh-3hpB;
	Mon, 01 Jul 2024 13:26:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOH2l-00000003Tct-3XUv
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 13:26:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOH2j-0007hO-US; Mon, 01 Jul 2024 15:26:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOH2j-006Nmj-Hi; Mon, 01 Jul 2024 15:26:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOH2j-00DcOp-1Y;
	Mon, 01 Jul 2024 15:26:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701103514.3924345-1-a.fatoum@pengutronix.de>
References: <20240701103514.3924345-1-a.fatoum@pengutronix.de>
Message-Id: <171984036548.3245516.8275371840560843233.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 15:26:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_062607_915848_C35622C1 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] commands: edit: factor out getwinsize and
 export it for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 12:35:12 +0200, Ahmad Fatoum wrote:
> This function is currently only used by the sedit command, but can be
> useful for other "full-screen" commands as well.
> 
> 

Applied, thanks!

[1/3] commands: edit: factor out getwinsize and export it for reuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=7daa9f29a85c (link may not be stable)
[2/3] lib: strtox: implement new simple_strtofract
      https://git.pengutronix.de/cgit/barebox/commit/?id=8482a230cd6c (link may not be stable)
[3/3] commands: watch: add new command
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2598a140c00 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




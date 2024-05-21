Delivery-date: Tue, 21 May 2024 13:01:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NFf-00C8g5-0H
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 13:01:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NFb-0000zS-Aq
	for lore@pengutronix.de; Tue, 21 May 2024 13:01:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGYZFbR5+UDwe4iadLlVFL25sQJhwVYBVwT0FFArxio=; b=hXyW/XPB0INw+gPf+8gqsMnXzE
	SEV/4V06LTJIh9lwiHB5pILU4f2EVY2lZOQ21hlORTMxuokp/rrhU1B3njLP8WxBQU3OHWX+oMRZ1
	MW+2077JY9bN3Jm5FJjX2sTRdEjJxjNw96CQ8vxsxcGXrMkSLctjv3hUiRL+oaNT1vNgSc/CQRMJv
	i64vahEnix4iUp+Q9pGFMuqkvTKDLDUaNKg/fXd34CyavaGnHgtg7jQipa+2bESXojERRK+aMfYBW
	t0JGAt0JhYpclP9JmtqN9Xnd3QN4H/Lzj1DYl0Po4gxwtSlXwLFESbao78Z0g9Ugt7jzerC0UMYM+
	29bqZFkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NEz-0000000HDUv-2CSm;
	Tue, 21 May 2024 11:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NEo-0000000HDQH-37we
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 11:01:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NEn-0000iZ-5r; Tue, 21 May 2024 13:00:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NEm-002NVu-PH; Tue, 21 May 2024 13:00:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NEm-008LeW-2J;
	Tue, 21 May 2024 13:00:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517055751.2016310-1-a.fatoum@pengutronix.de>
References: <20240517055751.2016310-1-a.fatoum@pengutronix.de>
Message-Id: <171628925671.1989705.17651594083905022989.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 13:00:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_040058_966294_A6CEF977 
X-CRM114-Status: UNSURE (   7.69  )
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
Subject: Re: [PATCH] driver: move some inline getters for struct device
 into device.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 07:57:51 +0200, Ahmad Fatoum wrote:
> The purpose of device.h is to contain only the device related
> definitions and have as few header dependencies as possible.
> 
> dev_of_node() and dev_is_dma_coherent() are accessors for struct device
> and have no other dependencies, so move them into this header as well.
> 
> 
> [...]

Applied, thanks!

[1/1] driver: move some inline getters for struct device into device.h
      https://git.pengutronix.de/cgit/barebox/commit/?id=16a636613978 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Mon, 26 May 2025 15:45:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJY9C-000XJO-16
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:45:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJY9B-0006Ij-Qx
	for lore@pengutronix.de; Mon, 26 May 2025 15:45:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=asDxo6izkMmmYkK0HGsR/mA3L1TbCDrXRc0V2TY28eI=; b=ZxxPfek/T0Larlq+IKNUKA7dVt
	FiK6MZKg6fDk9lnd4U8MS1pPTwJPustgPsBsbGH2HVSIoBYT2KzjuEl5DOdmyYJzU1R4PKfqLDZLB
	wUUfsVptAOHhoRNLIeXMMkuWJsJSyYBrHMoQgu84O3tK1Fa1a12SemSG77JpnrBIDn75mr8NBrPL9
	K1XSg/LLU21CJ/4Kxi0JqnFrJSbhOyl9G9YWm7VGtrMlP04FjvHFnRlxO4Q/y9t+05K4eQvzMHlpv
	KifSaE8XQJyXYwsVeT8V/LDH9hnbUULUfRs7b3m8KXp2XF+0y8SnChLiAJHvUtNY12hLFc5NyTsWX
	DtzaHweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJY8j-00000008vI3-05vg;
	Mon, 26 May 2025 13:45:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJY8g-00000008vHe-0g8t
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:45:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY8e-00067q-Ou; Mon, 26 May 2025 15:45:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY8e-000G7L-1J;
	Mon, 26 May 2025 15:45:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJY8e-0030BP-15;
	Mon, 26 May 2025 15:45:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: barebox@lists.infradead.org, michael.graichen@hotmail.com, 
 a.fatoum@barebox.org
In-Reply-To: <20250523162119.3430-1-johannes@gnu-linux.rocks>
References: <20250523162119.3430-1-johannes@gnu-linux.rocks>
Message-Id: <174826711233.715646.3787688890033239019.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:45:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_064514_209316_786ACC9A 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] added zynq 7000 usb support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 23 May 2025 18:21:19 +0200, Johannes Roith wrote:
> This adds support to use the USB interface on Zynq-7000 SoC.
> 
> 

Applied, thanks!

[1/1] added zynq 7000 usb support
      https://git.pengutronix.de/cgit/barebox/commit/?id=c69d280f3137 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




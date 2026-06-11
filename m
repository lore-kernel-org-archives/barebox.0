Delivery-date: Thu, 11 Jun 2026 12:12:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXcOf-004fEa-1A
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 12:12:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXcOa-0003lA-Va
	for lore@pengutronix.de; Thu, 11 Jun 2026 12:12:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z8tB+alVpRl9vbjrmEIJMarwpKxKBgpbtiNglwLC+6M=; b=3g/rPX9tTnPNQUapWm5lT8kNdw
	VkLETDfkXYPALfVIA+cK14xHMZSqu4neu9n5g+QO0r5hV74aHHgH4B4fb8uirTvJYgMui83QKMi+S
	4EWikj5Zovop2X1w1RTz+VIBTk3wyr3sTfIdfKg8aaOhXJMeVHSnYO5rdJPpyqeUgbbPYwi+P5TnW
	hj03MBkjpDJXKbxUVn92UAsumGBLsusE1v7T4q6i1+l6FF4TpoUBWQ+u6Q43/paLSQwrdlXQJGCl1
	EmnNMjW/67xwEaLqd46P5eYdQ/Kb7/Lr2SfYfJd7g2dsYggSj9i0ZDoHUN7Hk6QEyjtuN0uGqpviL
	X6scwL6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNH-00000009CI0-1aOx;
	Thu, 11 Jun 2026 10:10:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcNE-00000009CFh-2poi
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 10:10:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-0003QO-HM; Thu, 11 Jun 2026 12:10:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-002CU6-1X;
	Thu, 11 Jun 2026 12:10:53 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXcNB-00000002lQH-1kCk;
	Thu, 11 Jun 2026 12:10:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
References: <20260511-v2025-11-0-topic-riotboard-v2-0-788bf85842bd@pengutronix.de>
Message-Id: <178117265340.658909.5712788329464811156.b4-ty@pengutronix.de>
Date: Thu, 11 Jun 2026 12:10:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_031056_718343_E5531E1F 
X-CRM114-Status: UNSURE (   4.80  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] ARM: i.MX: riotboard: Add OP-TEE integration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 May 2026 15:32:47 +0200, Fabian Pflug wrote:
> Configure the riotboard to use the default OP-TEE implementation
> provided by the generic i.MX6 OP-TEE firmware target.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX: riotboard: add tzasc.h to flashheader
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b8c2377063b (link may not be stable)
[2/2] ARM: i.MX: riotboard: switch to imx6q_barebox_entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c70fb327d48 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




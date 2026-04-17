Delivery-date: Fri, 17 Apr 2026 10:15:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeMN-00D7Mr-0S
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 10:15:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDeMM-0003ZE-Fi
	for lore@pengutronix.de; Fri, 17 Apr 2026 10:15:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/7O+w8cq6JxSxXA0jPWYF+x6a23WhTTsAVvLzYgGsA=; b=WeXR0hc/IhGTM7qatyEzQev+4j
	m5dmgzEi+WLu5Ats5/5GYt0XKX0vCHnrnp6CaCATgg+2SCeMFlxTLljDQr9Y7q0KGrH/rIUUjnubm
	/c3WuenEj1JAPsJQTx3jIYXQaAOd5C6PxVcarTBhZXg5UZV6Y9QIxjtHspWK8qIIyes7U+bpO2yTp
	jTHgWOP6Pr3XRye8GG/XRBb6o3McKIOkEfmN0YvivRaqmBbTfjjkBcZR/e6iY1BFeDa+NnYs9gnRq
	KnjpsCKcluGre6nU8/I6QyqAFlfVLqccr1k40RA+dU5FQKzaw7eP6XbftLWYdMP8hxDDfGY17M2YU
	GA/d2mbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeLt-00000003evc-49ut;
	Fri, 17 Apr 2026 08:15:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDeLs-00000003ev2-0WYf
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 08:15:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeLp-0003KC-Ui; Fri, 17 Apr 2026 10:14:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeLp-005okJ-2U;
	Fri, 17 Apr 2026 10:14:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wDeLp-00000000S6a-2yky;
	Fri, 17 Apr 2026 10:14:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
References: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
Message-Id: <177641369770.107999.16989897311346405831.b4-ty@pengutronix.de>
Date: Fri, 17 Apr 2026 10:14:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_011500_171657_3F5C2535 
X-CRM114-Status: UNSURE (   6.72  )
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
Subject: Re: [PATCH 0/6] arm: socfpga: iossm: code cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Apr 2026 17:25:45 +0200, Michael Tretter wrote:
> There are a few surprises in the iossm_mailbox code that seem
> unnecessary or even confusing. Cleanup the code in an attempt to make it
> less convoluted and easier to read and understand.
> 
> 

Applied, thanks!

[1/6] arm: socfpga: iossm: make io96b_cal_status static
      https://git.pengutronix.de/cgit/barebox/commit/?id=f896be6a4859 (link may not be stable)
[2/6] arm: socfpga: iossm: use readl_poll_timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=b71ef5c0b7ef (link may not be stable)
[3/6] arm: socfpga: iossm: remove duplicate read of response status
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef36325ed132 (link may not be stable)
[4/6] arm: socfpga: iossm: remove multiple read of status_addr
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd08579f3815 (link may not be stable)
[5/6] arm: socfpga: iossm: change io96b_csr_addr to void *
      https://git.pengutronix.de/cgit/barebox/commit/?id=040df1af08b3 (link may not be stable)
[6/6] arm: socfpga: iossm: extract io96b_mb_init_instance
      https://git.pengutronix.de/cgit/barebox/commit/?id=7199a53aa06a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 22 Apr 2025 12:28:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arw-0040xR-1X
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 12:28:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7Arv-00024j-Rc
	for lore@pengutronix.de; Tue, 22 Apr 2025 12:28:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O5SL+Iaqh+NqBjqZt3byfpU6rLaeZtVpHRKlgIE7Lb4=; b=OEwCSYAi/ZvFqyrKMpUmTpi0jc
	Xf8Mcjr81BxTM0sXgBSTPNQFUvb/6Vm7F6w1KLJLdyyOaLhwQ+h2ZFDu6Lwci2GCdyIU78iV7WY4k
	qc4i5pcO+2AxAKrdqT9/4Dqadgn84Su+SkFp9hW4wiJ1jj0WQEo1F67f6CBvwwzjqe9SFRNWhzBCU
	Od3XinCP0a60rOWshdGUTJ24bqwvubKmk7ULaKY0dRH6zYnn/OahD5qU2gnZdFZbLw14/DDnP5YUQ
	X0NJo2WwN710t67fRPyIafpXpBAKaTFZSvQr//owDUUu5k2Blwd8ySwARN6dnETuZQZCGVUKyHtVo
	TNRyGbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ArZ-00000006lGI-130F;
	Tue, 22 Apr 2025 10:28:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7A1o-00000006a2I-3iT8
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:34:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A1n-0007NA-9d; Tue, 22 Apr 2025 11:34:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A1n-001WtH-0L;
	Tue, 22 Apr 2025 11:34:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7A1n-00Ceg3-08;
	Tue, 22 Apr 2025 11:34:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ejo@pengutronix.de
In-Reply-To: <20250416101355.214289-1-a.fatoum@pengutronix.de>
References: <20250416101355.214289-1-a.fatoum@pengutronix.de>
Message-Id: <174531449503.3016268.5764885370921151120.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 11:34:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_023456_932923_6837698C 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Documentation: document querying of barebox
 version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 16 Apr 2025 12:13:54 +0200, Ahmad Fatoum wrote:
> We have a short reference to barebox-version fixup in the device tree section
> of the manual. Expand on this by adding a proper documentation section.
> 
> 

Applied, thanks!

[1/2] Documentation: document querying of barebox version
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc5e0a83e64f (link may not be stable)
[2/2] Documentation: devicetree: add of_diff hint for visualizing fixups
      https://git.pengutronix.de/cgit/barebox/commit/?id=183523f07dde (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




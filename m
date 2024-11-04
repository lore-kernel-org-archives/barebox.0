Delivery-date: Mon, 04 Nov 2024 12:39:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vQo-004j7o-1W
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 12:39:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7vQp-0006FM-4z
	for lore@pengutronix.de; Mon, 04 Nov 2024 12:39:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Eiymm2lyv80uxN70icR0I1FrRMXNYk7WVZTNlGj1vL4=; b=DOjOCJC8Fm7Euh/4FNLQMPKcjp
	siSqJOvFAAncii8/3nU/GaX0q0EzC2/JO5izW498rIpF4PgFU3NC1H07QDzBfv0xuHaTdnGS3azpB
	oW/htAC79QrMooaGKUI3hWcf6QriVn4qROLsvc4qXCc2QqWAwMWgrQyIQg+TNuRYbx1bw3RohHSWr
	dJLFvk8Mzw74vC6sV7yL5NQ+9b28krfljihNljt4L7y+yxgp1xTlWN03MmFrSp34Me2xKxWfWag0r
	HLY6+BvBraFa4+SHaC+GUPczWIjSgi4EGOM7eBQE62UC76EELwViz7Bv8Jiz2hgzW1e2I5VePHaVY
	09M5I12Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vQM-0000000DZ7A-0Uds;
	Mon, 04 Nov 2024 11:39:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vEh-0000000DVwi-2H9d
	for barebox@bombadil.infradead.org;
	Mon, 04 Nov 2024 11:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Eiymm2lyv80uxN70icR0I1FrRMXNYk7WVZTNlGj1vL4=; b=YTlDRm6p/yPHPKALHlHnBN/ksb
	Ncht+La1xQ/TqA75dOWlwi9amvpjBTE16f6pKYKEGi9ahMQAK0fGzHNQfzK2Y5EF9uw76IDKeniIu
	iEcoct53ACed3wthvMnwKmLPGo5ninGd29DwN48W5u6eVJJ75Bt8j9hIswC+4LxiygG4znL/EQtWN
	fOs/XGIUD4aZUcHVPKPWx2XkgxztMp46rbvgHeidQT8q9zQSQYsTXEufKHk94bQmMwY5X2ufUPp6T
	hNxEfy0t2sYIlpOAwgtN69QewH95MRqRYl9Z5rkdLn1wLDxjyKPafO+zBYWVxg1BYatMGF6SjJtAX
	soDVTDog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7vEe-0000000BJGt-1iFX
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 11:27:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vEe-0003DZ-2M; Mon, 04 Nov 2024 12:27:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vEd-001yDD-2p;
	Mon, 04 Nov 2024 12:27:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7vEd-00GO58-2f;
	Mon, 04 Nov 2024 12:27:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241029-feature-dryrun-global-v2-1-49671d7cc62c@pengutronix.de>
References: <20241029-feature-dryrun-global-v2-1-49671d7cc62c@pengutronix.de>
Message-Id: <173071962382.3905785.12698518672385892551.b4-ty@pengutronix.de>
Date: Mon, 04 Nov 2024 12:27:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_112704_691608_4BCD0373 
X-CRM114-Status: UNSURE (   8.57  )
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
Subject: Re: [PATCH v2] bootm: make dryrun controllable via global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 29 Oct 2024 09:24:52 +0100, Stefan Kerkmann wrote:
> When the bootm code is not called directly by the bootm command it is
> useful to control the dryrun with a globalvar. This introduces
> global.bootm.dryrun for this purpose.
> 
> 

Applied, thanks!

[1/1] bootm: make dryrun controllable via global variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=491a885e721e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




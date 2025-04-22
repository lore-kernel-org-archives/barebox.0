Delivery-date: Tue, 22 Apr 2025 11:02:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79W2-003z1X-2h
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 11:02:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79W2-0000al-A8
	for lore@pengutronix.de; Tue, 22 Apr 2025 11:02:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uLws4Kt8X9Ql4qE/MkjGJFrba4BgPTuTsrolI1/Zw60=; b=TnJ+wgXer/TnCzK7P6zoynZyZq
	927dcSMT86H/JkhjUkQO0OW5+gwPRhbCdcraDZNrtcx00GdRx8q9ZOOzEelUMQrbLRF9WkCb1XF74
	mCmvRI9E2ZmEE4ojO+3oX9ezyyGwNGx13rAmdcgl9Xt1OwayzY0Uh5VvWr7WRcjzeg0iCJGeZ+xv8
	Spy9GRt16nMnOZ1s5Ga1SP13A5lQyoPOzq6CdfNYION5ChoQMsKn+ZBE0JZC0sUW4Ivt1Q/q/vNBK
	pqS5pkNMryVFXyiOni9R03kn+OnBtspZ8eohBovEvv1jBzq8sEXy+j5h3iCcTi2WePd4pqItWJv/k
	tvUlqivQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u79VQ-00000006TB5-2o0W;
	Tue, 22 Apr 2025 09:01:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78wE-00000006IX5-3JTN
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 08:25:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78wD-0006MS-EX; Tue, 22 Apr 2025 10:25:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78wD-001WHL-0q;
	Tue, 22 Apr 2025 10:25:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u78wD-00CbDo-0c;
	Tue, 22 Apr 2025 10:25:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250417062152.3425911-1-a.fatoum@pengutronix.de>
References: <20250417062152.3425911-1-a.fatoum@pengutronix.de>
Message-Id: <174531030518.3002997.17543028074698864341.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 10:25:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_012506_863918_630B75C2 
X-CRM114-Status: UNSURE (   7.88  )
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
Subject: Re: [PATCH master 1/2] crypto: ecc: use HWRNG for random numbers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 17 Apr 2025 08:21:51 +0200, Ahmad Fatoum wrote:
> The kernel's get_random_bytes provides random numbers suitable for crypto
> purposes, while in barebox, we need to use get_crypto_bytes for that.
> 
> This footgun needs to be fixed, but until we do, let's make sure crypto
> code doesn't use a badly seeded PRNG.
> 
> Fortunately crypto_ecdh_shared_secret is currently unused and this
> doesn't affect any upstream users.
> 
> [...]

Applied, thanks!

[1/2] crypto: ecc: use HWRNG for random numbers
      https://git.pengutronix.de/cgit/barebox/commit/?id=4532f50b8a8a (link may not be stable)
[2/2] crypto: imx-scc: blobgen: use HWRNG for random numbers
      https://git.pengutronix.de/cgit/barebox/commit/?id=cc8b962b1dca (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




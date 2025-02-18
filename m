Delivery-date: Tue, 18 Feb 2025 10:18:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkJkc-003qjP-0D
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 10:18:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkJka-0008VK-UO
	for lore@pengutronix.de; Tue, 18 Feb 2025 10:18:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lvVt0znGDiDxN8qoLYUidK2KD9Ditm2YJsHSOxrrtNE=; b=jZhXOZOCqCVWRhflUmbvZZOVCy
	qQcw7dJkSkC4/kONZXnsBl15yNqE4Eh5UuPsePPXC+Bt0JEpSkNQlRMmFtw0XY8IK16F+OplH3dyC
	vSHV/B5E4Jpph7ZOe7ZZ4IY5tB+xH9q24vMCV6t41g37a2gohmkcwHDNrhI4cbzUa8ZSgUXhIggEb
	/9MFGD7nFtVqjjHb6ZALmvMfA3rV/B0akLNWwnLHgj1dsm3FhUtx5Y13YFzj1PfG6KiyuyPSzKYMo
	Zr7yP8uAA8vK+m8pjpmvc0ahl7E8yPrQPmsOopl6i7QHCDmoTgzj3ln0QsA/mVgETfUwsqyht44cD
	JD4l6RoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkJjv-00000007THc-0OBM;
	Tue, 18 Feb 2025 09:18:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkJXm-00000007Psr-2QG2
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 09:05:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkJXj-00063Z-Td; Tue, 18 Feb 2025 10:05:27 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkJXj-001Yc3-2M;
	Tue, 18 Feb 2025 10:05:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkJXj-00BPRC-25;
	Tue, 18 Feb 2025 10:05:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
References: <20250217180949.3961860-1-a.fatoum@pengutronix.de>
Message-Id: <173986952764.2719121.10220055863778577335.b4-ty@pengutronix.de>
Date: Tue, 18 Feb 2025 10:05:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_010530_623710_B7ACB086 
X-CRM114-Status: UNSURE (   8.54  )
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
Subject: Re: [PATCH v2 1/3] common: introduce CONFIG_HAS_INSECURE_DEFAULTS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 19:09:47 +0100, Ahmad Fatoum wrote:
> Unlike the functionality controlled by CONFIG_INSECURE, most
> functionality in barebox is not as clear-cut: In secure systems, it's
> better to turn off the option, but with enough care, board code may
> disable the option later on.
> 
> To help with securing barebox, let's identify these options that need a
> more thorough look by having them select HAS_INSECURE_DEFAULTS.
> 
> [...]

Applied, thanks!

[1/3] common: introduce CONFIG_HAS_INSECURE_DEFAULTS
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ceb8fadf957 (link may not be stable)
[2/3] Documentation: user: optee: bring up-to-date
      https://git.pengutronix.de/cgit/barebox/commit/?id=1db2bef631dd (link may not be stable)
[3/3] Documentation: user: add security consideration for using barebox
      https://git.pengutronix.de/cgit/barebox/commit/?id=9fb315ae4bc5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Tue, 10 Jun 2025 08:25:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsQT-005hh3-3B
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 08:25:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsQT-0002Wi-ER
	for lore@pengutronix.de; Tue, 10 Jun 2025 08:25:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bWiGmcwShGmKdW8qp3eoH0j7HqjsYsJGz2wT6+aDr2k=; b=bFFWSbtsmaOh95UX8lue2VfRxq
	IwjSlBRNHbXy2zornKd9tlQRkQ+PnsZj0/7qtA7tmHwVIoiB4qu1YsrahZh5hkv1vs04HghCiUhWf
	carDr/t7YgMHRhfgvmb2t9coe5hZEo1m1/q6hgxGJ/BviLKXlyATt2OCdEu8AI6A/n0XBvgqshJ0J
	SuhLlrnNEo7REI7/+xb7p8KlQFgCJCBrDUYB7KcZsWvgZiRveKhDG8oek686qakTjcR1yWYzmKzwn
	00fjUPeYQjipOs2vq6ahBDrTRSo/ptnDrEV0ba5/fZD/8yQfEHP5MAmM0k3nbtN5foGJHdg1dZNIz
	1seX7IxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsPk-00000005vRu-3CO8;
	Tue, 10 Jun 2025 06:24:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsOH-00000005vI0-0Pys
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 06:23:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsOD-0001fS-Kn; Tue, 10 Jun 2025 08:23:17 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsOD-002j4J-1T;
	Tue, 10 Jun 2025 08:23:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsOD-007I79-1G;
	Tue, 10 Jun 2025 08:23:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250609063459.3167639-1-a.fatoum@barebox.org>
References: <20250609063459.3167639-1-a.fatoum@barebox.org>
Message-Id: <174953659738.1737820.12859408046520350048.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 08:23:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_232321_139388_E4E83CC9 
X-CRM114-Status: UNSURE (   6.37  )
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
Subject: Re: [PATCH] commands: dmesg: add -p option for setting maximum log
 level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Jun 2025 08:34:59 +0200, Ahmad Fatoum wrote:
> The existing -l option requires the user to specify all log levels they
> are interested in, e.g. dmesg -l warn,err,crit,alert,emerg, which is
> cumbersome.
> 
> Add a new -p option that automatically includes more severe log levels,
> so the above can be realized by just dmesg -p warn
> 
> [...]

Applied, thanks!

[1/1] commands: dmesg: add -p option for setting maximum log level
      https://git.pengutronix.de/cgit/barebox/commit/?id=70506d022e3b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




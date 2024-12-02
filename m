Delivery-date: Mon, 02 Dec 2024 13:45:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o3-0035TM-14
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:45:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5o3-0006Zu-7n
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:45:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZQnrQILoB0qQ+4WMZvUzQN6imCHlC5a6ENKQzxwwtQk=; b=yZWyyL+rW6IVQ0wI7MlljdVUWe
	42OkBanV/vwdstzKAhcTYtS8c3Awo0HoBZO5GknlyZ7gRDfGbtpNvWPhnvfkrvsCuhIDxvbB+zRfI
	e945Q/wpZjU54+f1v44Kd8hZJIO/VVgDep2EcsBKMdxrIAHxp0unxMfBL05rqY6vlfjDWVbbW/V+h
	+GPaHItC9xjg2kANVgYoqNILmZUe5xk6mwpePbmrtFjdcTwlL1RmEEKWKh6tPpYXSSpdeDy3g5oFw
	OZ4JxG1mm6h1KpesdD8Qqp89saAm3+Mru9GQ0NC4D/5cK6fgYt4BRkAAvWWdp9dsZOlGHCideRN6N
	N2hmfmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5nW-000000067Sp-4AKc;
	Mon, 02 Dec 2024 12:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5hz-000000066ZH-2vkz
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:39:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI5hy-0005SQ-As; Mon, 02 Dec 2024 13:39:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI5hx-001IbA-1F;
	Mon, 02 Dec 2024 13:39:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI5hy-00AGR1-0D;
	Mon, 02 Dec 2024 13:39:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241202112437.535013-1-a.fatoum@pengutronix.de>
References: <20241202112437.535013-1-a.fatoum@pengutronix.de>
Message-Id: <173314316206.2446292.16463030617579712928.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 13:39:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_043923_744322_23B5EA37 
X-CRM114-Status: UNSURE (   7.66  )
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
Subject: Re: [PATCH v3 1/4] of: add helpers to get alias from device node
 path + property name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Dec 2024 12:24:34 +0100, Ahmad Fatoum wrote:
> The existing of_find_device and of_find_path helpers require that
> barebox has already probed devices. For use in code where this
> assumption doesn't always hold true, let's add helpers that return
> the alias if it exists.
> 
> 

Applied, thanks!

[1/4] of: add helpers to get alias from device node path + property name
      https://git.pengutronix.de/cgit/barebox/commit/?id=7e3422ba67db (link may not be stable)
[2/4] environment: implement of_env_get_device_alias_by_path helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=f3f702756f64 (link may not be stable)
[3/4] bootsource: have bootsource_get_alias_name return const char *
      https://git.pengutronix.de/cgit/barebox/commit/?id=f19b40932b58 (link may not be stable)
[4/4] ARM: i.MX8MP: tqma8mpxl: fix bbu registration for other boards using SoM
      https://git.pengutronix.de/cgit/barebox/commit/?id=9f17407d1a5b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




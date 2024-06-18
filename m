Delivery-date: Tue, 18 Jun 2024 08:21:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSDe-007zhU-1M
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:21:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSDd-0000PT-SH
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:21:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=my2k5CVkrDVgD3klre08Vtp+46+7nPYPZpVLLKZx7QI=; b=Xlo41IH77VULmPxhVEfx2Hf4jd
	DqTB0ZD1pSlxMBfvYaYQ3iXFtANeGbq1ZUuCzJZPd/bVG0DAQ8bu04/p8OxvHjAed9l2R6R4IE0Ie
	L81dgquzOYV3CaW0QqZACOwnahbsO8gARJCgR9s91SSsyFzaEax3Ju+8QJ3oN3oZEVNsFUcBJoAo2
	LB/NbqSNBoTHwo0SjE78ycbATVTfQCo4PD3Xlbs7vfn6i+Jxk72R21fUZUakHVdL6zqPuuR+TLOW1
	X05MQhcoBudCIBXjnVdmncwozihGnO28Q86ZtP9FdD+WmwDmD86GDBcELAmg0+UOtbQ9OvpJZU6Jr
	kVztoGmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSDH-0000000DmZw-22kp;
	Tue, 18 Jun 2024 06:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSDC-0000000DmWC-2Qjj
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSDA-0000MG-Q7; Tue, 18 Jun 2024 08:20:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSDA-0039sv-DB; Tue, 18 Jun 2024 08:20:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSDA-00G3X8-17;
	Tue, 18 Jun 2024 08:20:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de
In-Reply-To: <20240617114142.1546941-1-a.fatoum@pengutronix.de>
References: <20240617114142.1546941-1-a.fatoum@pengutronix.de>
Message-Id: <171869165634.3826815.10482360395146562643.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:20:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_232058_905940_7DB17E87 
X-CRM114-Status: UNSURE (   8.67  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND 1/2] mci: core: remove dev_add_param_bool error
 paths
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 13:41:41 +0200, Ahmad Fatoum wrote:
> dev_add_param_bool fails when the device already has a parameter with
> the same name or if there's no memory. The first error can't happen here
> and the second won't go unnoticed anyway as something critical is bound
> to panic.
> 
> Remove thus the error paths, which are never triggered.
> 
> [...]

Applied, thanks!

[1/2] mci: core: remove dev_add_param_bool error paths
      https://git.pengutronix.de/cgit/barebox/commit/?id=9783270f84c4 (link may not be stable)
[2/2] mci: core: don't add broken_cd parameter for eMMCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=ac46530a035c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Mon, 01 Jul 2024 12:11:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOE08-000SwD-3C
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 12:11:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOE08-0006p2-DK
	for lore@pengutronix.de; Mon, 01 Jul 2024 12:11:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2x398SGb+IsTCevqvZ6TkDU8EyH3l2qirMYp/+Z+p0=; b=mS5Uj3BRO9XSSGsT4bEhUo+Upb
	9jBoy0cVXJ6YFU8LDjRhcvGlsdy+C1TC7nTO2llRirA58TskjptTeonCj46ll07zCETAP/AOgeKqN
	+hW+Zn1EaJGjHTEqnG0jHi1E/7tFHcn0tOG86Vn6nzHIiVezjVylKidMT116L0tufTBLWR1pCLn1h
	ycma4ZbELcVYQJwa4OvxQLvWfui0wJNFK3B71bi3qb2/JHzHMKL2EYZXUDQE+mBXxkmwRyLFobSHw
	TjQ1iwJz0a7xUJAm5Hfo8o6w0a728ddp+tNat6imVvI54yxMeMqSACAAlimsTuBBHe+HaN+wANeFB
	MzWAbzvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODzj-00000002aE2-2rdz;
	Mon, 01 Jul 2024 10:10:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sODzg-00000002aCo-1zec
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 10:10:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODzf-0006l1-2o; Mon, 01 Jul 2024 12:10:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODze-006LUM-MR; Mon, 01 Jul 2024 12:10:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sODze-00Cp4y-23;
	Mon, 01 Jul 2024 12:10:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701070547.131908-1-a.fatoum@pengutronix.de>
References: <20240701070547.131908-1-a.fatoum@pengutronix.de>
Message-Id: <171982864263.3056160.11551895674681918494.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 12:10:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_031044_545115_BF8EFF37 
X-CRM114-Status: UNSURE (   6.26  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: pstore: ram_core: use pr_err, not pr_info, for
 errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 09:05:47 +0200, Ahmad Fatoum wrote:
> A failure in persistent_ram_init_ecc() ultimately results in
> ramoops_probe() failing, so an error message is more appropriate than
> the current info log level.
> 
> 

Applied, thanks!

[1/1] fs: pstore: ram_core: use pr_err, not pr_info, for errors
      https://git.pengutronix.de/cgit/barebox/commit/?id=55cfd01e4b40 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




Delivery-date: Fri, 19 Jul 2024 08:22:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh0M-000keH-1Z
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:22:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh0L-0006gl-V9
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:22:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DvbVUWpoiWdVGFWqUHzvF6Hj1QaKce0N0/a5OPNKppM=; b=MAgxx3Fyma6Rz/yBpPAgTIrYtG
	Yu5Jknvsu3Spt6VpCpCOipbrdQQErU6xTQQ9IqiVl/x+XQe+FxvTcBRVS8eMCr2iRe0ifdrm8RxjC
	Pgul0tVEXX7Y0u3JQrSrekhQNSCl7Z5eKPhMxzPWwEgBTJg+SVeEFjQgpaopD8Akvt1Z5jn/JXZzG
	4tg/Qlttw0MJjn3O30DX0AkLUTbkVnrtgW2ERtDj6bSu4tP9i2oUJ09qmh29qJLvxaJECkQHPtCf+
	xvQrX8TTI9QcIHVECQ2AvklmCYOk71gagMyo+OUxaIiPNpKJe+VHpsV3ZUiqE5kVpolhHFVHxSKdF
	KP3Me++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUgzw-00000001nPv-3qJK;
	Fri, 19 Jul 2024 06:21:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUgzt-00000001nP3-3DZ1
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzs-0006YO-FH; Fri, 19 Jul 2024 08:21:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzs-000cYA-2J; Fri, 19 Jul 2024 08:21:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUgzs-002PZV-01;
	Fri, 19 Jul 2024 08:21:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115631.1953903-1-a.fatoum@pengutronix.de>
References: <20240716115631.1953903-1-a.fatoum@pengutronix.de>
Message-Id: <172137010000.574930.12157691444151864910.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:21:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_232141_840173_6E349A3A 
X-CRM114-Status: UNSURE (   7.96  )
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
Subject: Re: [PATCH] lib: term: add missing headers, license and copyright
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:56:31 +0200, Ahmad Fatoum wrote:
> The file was split off from commands/edit.c, so it should carry same
> copyright and license.
> 
> Also it depended so far on linux/kernel.h being transitively included,
> so let's include the parts that we need directly.
> 
> 
> [...]

Applied, thanks!

[1/1] lib: term: add missing headers, license and copyright
      https://git.pengutronix.de/cgit/barebox/commit/?id=77f5f3f7ee53 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




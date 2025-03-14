Delivery-date: Fri, 14 Mar 2025 17:17:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7io-00E4dC-04
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:17:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7im-000617-Km
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:17:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BuW+MZ90r6QG/W4w35jigby6TyZP6LAFre5qwF7n3p4=; b=zIrY1WSYlPBrPBfgsEMr7kFCl4
	pyZE2YZkaFUqX0iqNwESzvJ5Q3K1yZ8lMuas9JpkZh8Qj7CpcEmcw8s9HvK2LcQ2vcD2X7/LPJAcD
	3TuG3t169sU4nbOqFqsjmK2VgGq8e6EQCfsn/up+LgX9wTBxol/c3lZYGSJ9Bb+6G7q1QCim/FjNs
	sncqNrxBN62YT1NlEywj48sth7yxUlhg4iM+7+5hjyDqo1lk7I7+KcRYVzaNrOe13lT81Rz8hXF7P
	61E9T3imYks7E+196ZYEZXnCwz9RaNbpRw6JDGetRZtCZGC73XfA/gBf12TnoDFKXjkNvvStY5MYI
	QnqczMSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7iN-0000000EilU-3iE2;
	Fri, 14 Mar 2025 16:16:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7e3-0000000EhYD-3GiP
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:12:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7e2-00050o-LQ; Fri, 14 Mar 2025 17:12:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7e2-005jFb-1U;
	Fri, 14 Mar 2025 17:12:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7e2-00HIMT-1H;
	Fri, 14 Mar 2025 17:12:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250313-pca9450-wdog-v2-0-28e97e7da480@pengutronix.de>
References: <20250313-pca9450-wdog-v2-0-28e97e7da480@pengutronix.de>
Message-Id: <174196874239.4122146.6496417535820786556.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:12:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_091223_819942_2110C521 
X-CRM114-Status: UNSURE (   8.27  )
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
Subject: Re: [PATCH v2 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 10:21:17 +0100, Jonas Rebmann wrote:
> Configure the RESET_CTRL register of the pca9450 pmic in the driver,
> like u-boot and kernel do. Subsequently, remove the setup of this
> register from the pca9450_register_init_callback of the two imx93 boards
> we currently have.
> 
> Configuration of this register in lowlevel.c of the imx8 boards remains
> untouched for now.
> 
> [...]

Applied, thanks!

[1/2] mfd: pca9450: configure pmic reset behavior
      https://git.pengutronix.de/cgit/barebox/commit/?id=36fc07dcd418 (link may not be stable)
[2/2] ARM: boards: remove obsolete PCA9450_RESET_CTRL setup
      https://git.pengutronix.de/cgit/barebox/commit/?id=86612dd9568d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




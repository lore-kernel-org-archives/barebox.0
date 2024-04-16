Delivery-date: Tue, 16 Apr 2024 15:37:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj0E-003QlO-2i
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 15:37:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwj0A-0002LM-MU
	for lore@pengutronix.de; Tue, 16 Apr 2024 15:37:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SeUNOqVTnlpV+ZYgx+O0htGR8pC3dAypup6hKBP9kzI=; b=LyDDSv0YFirKopv6dBAjE0oOv9
	1V7KDHIMQrHQPJtLuyjgCtcQDlr2WPd3dfL7UlUdKfYmePLpwtpgulIqS+GVO21SraKoX0BWOLUIp
	IVhAtmFGYHErxkRCXUU0ExEX2gZ7uSzXalQaKlYf9m+heWE9/O4vabVB1VxRklNbWuELaEPK4hEOF
	bCCaYivTaUPDi5xkynxz2BftMUpoNG2L9FkqsXUDZ2ywRhKscCC/B7hjy/3fn6d0NxRF20sCPnZQj
	Kho+asqmsevVP7rWNOEQlC3FKBUx6/pc876m/rcKk7MZW7nJAVq2blqbUbV9Jfa7nGMxb/49IyK2P
	DAvu/yEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwizb-0000000CLsB-3pqs;
	Tue, 16 Apr 2024 13:36:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwizU-0000000CLqt-48fL
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 13:36:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizT-0001Dq-PJ; Tue, 16 Apr 2024 15:36:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizT-00CcTs-Cg; Tue, 16 Apr 2024 15:36:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwizT-008QAL-14;
	Tue, 16 Apr 2024 15:36:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240410122645.3701482-1-a.fatoum@pengutronix.de>
References: <20240410122645.3701482-1-a.fatoum@pengutronix.de>
Message-Id: <171327461133.2007098.11760555427348087195.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 15:36:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_063653_094775_E81C2899 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: config: add script to manipulate .config
 files on the command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Apr 2024 14:26:45 +0200, Ahmad Fatoum wrote:
> This ports over the Linux v6.9-rc3 state of the config script, which
> allows easy enabling and disabling of options from the command line, e.g.:
> 
>   scripts/config --file build/.config -d CONFIG_WERROR
> 
> By having the script in the barebox scripts directory, it's available
> for use by build systems instead of running sed over the .config file.
> 
> [...]

Applied, thanks!

[1/1] scripts: config: add script to manipulate .config files on the command line
      https://git.pengutronix.de/cgit/barebox/commit/?id=e77ccb480a8c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




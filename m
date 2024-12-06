Delivery-date: Fri, 06 Dec 2024 11:00:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV8V-004gvu-2J
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:00:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJV8V-0007Kb-MW
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:00:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wgMmN/O6xREKJnYGKlROPZZX1je35OHgfd3W/duWhHA=; b=nzXXvGRIve9zwC0S9x9HI2SiTF
	PQc7b8MIfQ2WqNJN9Ozv2Xm0fWORPI8vRGNSI9IODWfHmlmNiqrg5R4Ixb/IAK5FEw3nGFXJSZWwF
	kt3xt+5h0GoPl2clrd4kFD+GfVtqV3Tiof4EfgDWw5yBoBvzra605NeDg7y5VCoom/+eiOsJp2A8/
	EbEaxS/eMsn8XYgRomVC+SA4n5GKD9rtE4wHrN0gWAxyLEG4MNJAaCyballSdFk7LteGh1k63LrDV
	Z+e6NnYxuyvv50hDpW/PLHgxRgCNXQ0emkaFETDUZ6EnOX02sshL5fy69X9zRn9OTE/Cq2MLW9Dvt
	NuyMaamg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV86-00000001B3B-2uyM;
	Fri, 06 Dec 2024 10:00:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJV83-00000001B28-2xgR
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:00:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV82-0006yQ-Ah; Fri, 06 Dec 2024 11:00:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV81-001yYt-1C;
	Fri, 06 Dec 2024 11:00:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJV82-000Xvc-0F;
	Fri, 06 Dec 2024 11:00:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alaa Ali <alaanourali@gmail.com>
In-Reply-To: <20241204140227.170560-1-a.fatoum@pengutronix.de>
References: <20241204140227.170560-1-a.fatoum@pengutronix.de>
Message-Id: <173347920607.130379.4263633218920435308.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:00:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_020007_759574_6899DA02 
X-CRM114-Status: UNSURE (   6.34  )
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
Subject: Re: [PATCH master] sandbox: sdl: fix use of variable before it was
 defined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 04 Dec 2024 15:02:27 +0100, Ahmad Fatoum wrote:
> handle_sdl_events() makes use of the shutdown variable, but that
> variable is only defined later. Move the variable definitions earlier to
> fix the build breakage when SDL is enabled.
> 
> 

Applied, thanks!

[1/1] sandbox: sdl: fix use of variable before it was defined
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7e4fab928a6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




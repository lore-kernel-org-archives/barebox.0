Delivery-date: Thu, 04 Sep 2025 10:56:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lu-007yfA-31
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:56:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5lt-00041d-O0
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:56:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x2cgGl1gZLyQyAewDLiiYPL4+xtBw8142un80kzBqpo=; b=cWVTwe0fh811bnnjKA8Sl7AO4d
	5rl/yCvs3SXN/6PBn0GobmKn2VyLKCWYlEIP5TItOGieeb62yZg4237xSVUlR/MErphKeVygNbyob
	VrM3TDCAp4/8WPUSl9eP7//QtInIPvuk8rmsZcMii4hcskFWjuyXCcUubwg5/FKTA8neOIFXfp3Hy
	snJqp3j25FY0VwL/frawqBiJ9421yDLrSvL7JL5sJ/1WuavA5CETpSnCzn5qkRXPnhd8cOWl5tHow
	7WRXQtOrcF00melmRxvnmjKn8X5Us3XiCnijZnG0O9eOv7pQjcu5mhcSjEyqdoIzq2IQNuAL4oGIP
	eXNG/62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5lU-0000000ANt8-15Qo;
	Thu, 04 Sep 2025 08:56:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5AI-0000000AAQk-1ihG
	for barebox@bombadil.infradead.org;
	Thu, 04 Sep 2025 08:17:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=x2cgGl1gZLyQyAewDLiiYPL4+xtBw8142un80kzBqpo=; b=hLcoP/rsI4umsCJ6EMJcpTSu22
	xGte6e666piv3pcqxF7/dM0EjZDvrErs+YhL1N2tV1mbRm6FgriGS33T7QQvMH86m+7G2+FDHkMIC
	4bxD5iG0Mby+uiPpd+Ic4zimCyYR+GxmqDP3QptWLB3VJub32tw0XbDLpz++bbf0RIbEa3+TbS0WN
	j99rkCzIhYTxjFSM/xSCxPM37L8cwxoNxOZQxOplSykqNbTCsenOz1ZajuZx5VyxFq7vSp7yDNUFR
	m3mbzShL27/9wJ5SMaQl9Cf8NCVUvmiBuMVI6j03tFy7aPf/eAIYi2OF3Sa3Xx+gDHDN3XgWCPfV9
	kT6HHvIg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5AF-00000004JGd-159T
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu5AE-0000hc-Ch; Thu, 04 Sep 2025 10:17:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu5AE-003hEz-0g;
	Thu, 04 Sep 2025 10:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu5AE-0000000DHHd-0eSB;
	Thu, 04 Sep 2025 10:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250828041419.1874774-1-chalianis1@gmail.com>
References: <20250828041419.1874774-1-chalianis1@gmail.com>
Message-Id: <175697387014.3164625.4591783414558633891.b4-ty@pengutronix.de>
Date: Thu, 04 Sep 2025 10:17:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_091751_457365_E38F7F67 
X-CRM114-Status: UNSURE (   7.18  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: video: efi-gop: fix null reference pointer on
 priv->fb.mode=NULL.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 Aug 2025 00:14:19 -0400, chalianis1@gmail.com wrote:
> fix a null reference pointer on mode variable, that was never initialized,
> the mode will be set by the framebuffer subsyetem after initialisation so
> it's not necessary to change the resolution here.
> 
> Fixes: 6518b21c6c66 ("video: add EFI Graphics Output Protocol support")
> 
> 
> [...]

Applied, thanks!

[1/1] drivers: video: efi-gop: fix null reference pointer on priv->fb.mode=NULL.
      https://git.pengutronix.de/cgit/barebox/commit/?id=33d2188b0b95 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




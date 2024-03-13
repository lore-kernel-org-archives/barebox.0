Delivery-date: Wed, 13 Mar 2024 07:40:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkIHl-0040bi-1M
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 07:40:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkIHk-0008SB-9o
	for lore@pengutronix.de; Wed, 13 Mar 2024 07:40:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9otZwUNo/o0i96lsnV2z7okXOq0WPgPSCY5TNMRhhE=; b=hYHs4NxtWv8ba8cducb7tP+yHG
	jEPArBcNyLnsmMoL3R9JJI+xKSgb1AmwaNUXhMJAjV3qkd2kofcIJI9Ol4T0vvOS9Gd77Da4CwNRq
	1gIoHQxf5uwkHWHllhISJ94h53ypEBx+9/AaP8r9P6sOeUPViO/9DisJ8AWPQygLkoae5EnZ3LKzA
	tdtYHkNnz7FHkH7CW8NvLefiHHF+VWQGMTNcLN2EcyQLSBh8ZIh/422aV1h3e/ALySUYPfzx6acnO
	8kcJa9BBfcfjgpqX8LWy1r+uVYCqsdqjWUpTeWGALvRiX+y2/VgDvcuHNn5tmC3voOGsQBX84JHP/
	Y2N/BPfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkIHM-000000094bS-2Fwi;
	Wed, 13 Mar 2024 06:39:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkIHI-000000094az-2elk
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 06:39:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkIHH-00088s-08; Wed, 13 Mar 2024 07:39:51 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkIHG-0063zF-JO; Wed, 13 Mar 2024 07:39:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkIHG-0042YX-1b;
	Wed, 13 Mar 2024 07:39:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Denis Orlov <denorl2009@gmail.com>
In-Reply-To: <20240311213915.584429-1-denorl2009@gmail.com>
References: <20240311213915.584429-1-denorl2009@gmail.com>
Message-Id: <171031199049.963118.5743414756610433804.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 07:39:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_233952_713376_16FE260D 
X-CRM114-Status: UNSURE (   6.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] ddr_spd: extend spd_decode to cover DDR3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 12 Mar 2024 00:36:06 +0300, Denis Orlov wrote:
> This extends the spd_decode command to correctly print out the contents
> of the DDR3 SPD EEPROMs in addition to the DDR2 ones.
> 
> Denis Orlov (2):
>   ddr_spd: add DDR3 Load Reduced module specific data
>   ddr_spd: add routine for printing DDR3 SPD contents
> 
> [...]

Applied, thanks!

[1/2] ddr_spd: add DDR3 Load Reduced module specific data
      https://git.pengutronix.de/cgit/barebox/commit/?id=b191f021c5c4 (link may not be stable)
[2/2] ddr_spd: add routine for printing DDR3 SPD contents
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5b60f303517 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




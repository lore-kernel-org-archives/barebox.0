Delivery-date: Fri, 15 Mar 2024 13:42:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6sr-007rux-0B
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 13:42:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl6sq-0000qT-Gk
	for lore@pengutronix.de; Fri, 15 Mar 2024 13:42:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dl2R7pkyZQiVt0v1L8L2XWp0jfjsjdp01A+VSkBNraE=; b=Is4/kngWBbNSlZ69HPUOtZU2Vr
	KQ+pcYZprDpqBbVRiZq+GQOalSXnRCge2Nxbf2uawPwGfWOo86y2xbxY71Wiu6hWxkDXzQih7mLVX
	rP9kCiToMr4DKnGISv2oCiYrlndJ6xKeGADQt+ZBenLR2J7pIJTBLq+vuApUxL3iGkTxAPekXUZ8A
	z88DVAiLqJ/eRYbbl/35pr8hWK+uKL9sbgI9NabhVtQLOjYFnD2HriFykkb+Wg1US+dJhCsMop2DU
	u350+ROZr92svwWBTyXJQepObFzl8PP9eliaoLAd48g/IXX8UVJNizxPesnA88EHtiB1YoaWlBWOU
	JJlhL3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6sJ-00000000DWJ-1pKR;
	Fri, 15 Mar 2024 12:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6sH-00000000DVx-03sa
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 12:41:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl6sF-0000Oe-AG; Fri, 15 Mar 2024 13:41:23 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,  Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZfQ8nZLimv4L5jPy@pengutronix.de> (Sascha Hauer's message of
	"Fri, 15 Mar 2024 13:18:37 +0100")
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
	<20240314-v2024-02-0-topic-arasan-hs200-support-v2-13-0386c27fe653@pengutronix.de>
	<ZfQ8nZLimv4L5jPy@pengutronix.de>
User-Agent: mu4e 1.12.1; emacs 29.2
Date: Fri, 15 Mar 2024 13:41:23 +0100
Message-ID: <87v85nu0p8.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_054125_076279_BD36A30C 
X-CRM114-Status: UNSURE (   8.80  )
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
Subject: Re: [PATCH v2 13/14] mci: arasan-sdhci: add HS200 tuning support on
 ZynqMP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


Hi,

On 2024-03-15 at 13:18 +01, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Thist hunk conflicts with b80c0e1ec6 ("mci: arasan: add dma support"):
>
> <<<<<<< HEAD
> 	ret = sdhci_wait_for_done(&host->sdhci, SDHCI_INT_CMD_COMPLETE);
> =======
> 	/* CMD19/21 generate _only_ Buffer Read Ready interrupt */
> 	if (cmd->cmdidx == MMC_SEND_TUNING_BLOCK || cmd->cmdidx == MMC_SEND_TUNING_BLOCK_HS200)
> 		mask = SDHCI_INT_DATA_AVAIL;
>
> 	ret = sdhci_wait_for_done(&host->sdhci, mask);
> >>>>>>> for-next/mmc-hs200
>
> I am not sure how to resolve this just by looking at it. Please rebase
> your series on that patch.

meh, will do.

Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



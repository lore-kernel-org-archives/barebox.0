Delivery-date: Thu, 08 Feb 2024 08:16:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXydk-008GPZ-10
	for lore@lore.pengutronix.de;
	Thu, 08 Feb 2024 08:16:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXydj-0006er-7r
	for lore@pengutronix.de; Thu, 08 Feb 2024 08:16:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwNzlCQ7kREC8ef35Mk6eA9ATkJZtSnU0o62DoR/n8A=; b=wvgWMF6mWelk/bOhnv4mYKd2Rj
	dHydWJkTFXcWJ8hJi+5rdDI8+Zg3q/I30O0LMCQPpv3jC5tRQK6SU/SUOAk+ItQMVntoDbAfBCNny
	XeyeCVP0pALLSXoyDSDlrRJJRT4j0ZO8pCLsvx2/UiHLW9WUF9Q5LLDHIgRuT5LP0gM01g0dsToyh
	R7S4pobnvqAIDETkW7piErXJdZajGI63tWbvt64IacMVOE85Lit85tK7Ard1zLoMTNMrHTjicuKYD
	Sh8Z+H/h/JN4jAFE6J7m05A0+vUD0ADhPM9KJIlCKASewuoZSOEoHvrUi6HLhHXj3Io9WrSLa3FOa
	SUPXToUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXydI-0000000Ct88-3Ulp;
	Thu, 08 Feb 2024 07:15:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXydF-0000000Ct7O-1Rv7
	for barebox@lists.infradead.org;
	Thu, 08 Feb 2024 07:15:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXydE-0006bN-6K; Thu, 08 Feb 2024 08:15:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXydD-005AdD-NQ; Thu, 08 Feb 2024 08:15:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rXydD-001TQL-27;
	Thu, 08 Feb 2024 08:15:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Cc: sebastien.bourdelin@rtone.fr, a.fatoum@pengutronix.de, 
 oss-contrib@rtone.fr
In-Reply-To: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
References: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
Message-Id: <170737653565.351420.4510789997485557686.b4-ty@pengutronix.de>
Date: Thu, 08 Feb 2024 08:15:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_231537_423100_50B9B2E2 
X-CRM114-Status: UNSURE (   9.06  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] serial: ns16550: support half duplex rs485
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 Feb 2024 16:22:37 +0100, Pierre-Olivier Huard wrote:
> The default ns16550 driver does not support rs485. This patchset adds
> support for half duplex rs485 to the ns16550 driver. Basic handling of the RTS
> signal is done to enable the rs485 transceivers.
> 
> Some properties are now parsed from the device tree:
> - 'linux,rs485-enabled-at-boot-time', enabling RTS toggling when sending data
> - 'rs485-rts-active-low', inverting the RTS signal
> - 'rs485-rx-during-tx', enabling RX during TX, disabled by default
> 
> [...]

Applied, thanks!

[1/2] serial: ns16550: add basic support for rs485
      https://git.pengutronix.de/cgit/barebox/commit/?id=8ce3f15f2125 (link may not be stable)
[2/2] serial: ns16550: add support for half duplex rs485
      https://git.pengutronix.de/cgit/barebox/commit/?id=6530d4bad33d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




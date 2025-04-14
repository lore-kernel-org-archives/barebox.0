Delivery-date: Mon, 14 Apr 2025 11:39:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4GHz-000aOn-0T
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:39:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4GHy-0001zE-Ib
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z/9nuDHeAeFCeDJqpyZxOBeg88VnNT3GYXE76tbGZDs=; b=paNcN6vHPKTtXRQzoiPRYLRqBQ
	DAlmA186Z2KuCpeYaexIDFm/THXTtXJLUwTSs5QFNBWt+YUXNF0osT8dWfheVsqes1//0AHv2I9MS
	v3UAm7NTVPJRN8CLvXq5hfcDBpENpjY+9f7VzWfZNxJzG5kT7S2Rv5UopSnVfiprCxXhV8oknLWTb
	f4AMyPJnfNphulVwHZurtVMNZE8vKXXnZT8fhH2fJQsGWpC3J4xv4fHO7X+PSjB2dtpuiiuhgZ6eL
	7+nuIJAS9M3yQsUCFUOCX3Uf7Fo6nx0XRE5OY1M/SdVabEdUulaAB6lDO5iMSkXTxoerXfdvLt91/
	e/Q+Nm2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4GHU-00000001IYj-0wop;
	Mon, 14 Apr 2025 09:39:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FyE-00000001FpM-3BRA
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 09:19:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FyD-0003ha-BA; Mon, 14 Apr 2025 11:19:13 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FyD-000E5i-0V;
	Mon, 14 Apr 2025 11:19:13 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FyD-000Ero-0E;
	Mon, 14 Apr 2025 11:19:13 +0200
Date: Mon, 14 Apr 2025 11:19:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zTEeuwvw0pqP_m@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
 <Z_zJUIijGZGEqcAu@pengutronix.de>
 <5003d208-f1c4-4cbc-88ec-aaa8c30bbd11@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5003d208-f1c4-4cbc-88ec-aaa8c30bbd11@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_021914_795877_6407435C 
X-CRM114-Status: GOOD (  22.25  )
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
Subject: Re: [PATCH 1/6] ARM: dts: i.MX8MP: drop now upstream
 imx8mp-nominal.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 10:46:02AM +0200, Ahmad Fatoum wrote:
> On 14.04.25 10:37, Sascha Hauer wrote:
> > On Mon, Apr 14, 2025 at 08:50:04AM +0200, Ahmad Fatoum wrote:
> >> This file is now available in Linux since v6.15-rc1, so we do not need
> >> to duplicate it in barebox for boards to make use of it.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/arm/dts/imx8mp-nominal.dtsi | 49 --------------------------------
> >>  1 file changed, 49 deletions(-)
> >>  delete mode 100644 arch/arm/dts/imx8mp-nominal.dtsi
> >>
> >> diff --git a/arch/arm/dts/imx8mp-nominal.dtsi b/arch/arm/dts/imx8mp-nominal.dtsi
> >> deleted file mode 100644
> > 
> > This is used by imx8mp-skov-reva.dtsi. Should the include be changed to
> > use <> instead of "" now?
> 
> imx8mp-skov-reva.dtsi is in dts/ and there is a version of that file there.

Ah, ok, I didn't see that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



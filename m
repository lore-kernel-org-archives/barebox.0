Delivery-date: Tue, 06 Jan 2026 08:34:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1aD-001oR6-2i
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 08:34:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1aD-0004d6-9O
	for lore@pengutronix.de; Tue, 06 Jan 2026 08:34:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=alUZujejuUu8NFBh1ABJQKksCUVzoM6liJpxi25x8Ac=; b=M4Zc+VKYDG4MjJT69WyUGbpC0C
	EZR8zZHnDfYXuxYncufPEGTk8dAvHPkjeMm17yWW81IdiOo7m7cVIguo5k+BmHpdAS+kvN5sjYyQC
	U29CXSpC3hA9fP0YoxyRpTBtJe7Da6u/dSPRrQyzFnZOPYbv0H/gCJOXwJM/P8Sye7cjsxbI990gU
	FlFYqb5ir0gKO7RwYozrZzbEe5jlQro8sN9oY4kV5oHQ+FqhrY0yZVSUC/8IPjsuULZw1ju41dfqH
	Aiq/pXmkFo9didSE7EXnU60f+0woqk9r8MoGH2ZGm9HKQSN68/Soh8EBFAea+MCdIKhYEmlqk6hJb
	Z6aww69w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Zi-0000000CWLX-2tq4;
	Tue, 06 Jan 2026 07:33:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Zf-0000000CWKn-40hX
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 07:33:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Ze-0004Sh-A4; Tue, 06 Jan 2026 08:33:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Ze-009JDp-0N;
	Tue, 06 Jan 2026 08:33:50 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd1Zd-00EGCG-38;
	Tue, 06 Jan 2026 08:33:49 +0100
Date: Tue, 6 Jan 2026 08:33:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aVy63RdycI-DWJBU@pengutronix.de>
References: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233351_995036_F121AF41 
X-CRM114-Status: GOOD (  22.17  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 0/3] ARM: rockchip: add rockchip secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 05, 2026 at 03:32:30PM +0100, Michael Tretter wrote:
> Add support to enable secure boot on rk3588 SoCs via the Rockchip Secure
> Boot PTA [0].
> 
> The OTP fuses for the secure boot configuration are only accessible from
> the secure world. Therefore, the actual hardware access is implemented
> in the aforementioned PTA. Thus, barebox is only able to enable secure
> boot, if this PTA is available.
> 
> Patch 1 adds a helper script to calculate the Public Root Key hash, that
> needs to be burned into the OTP fuses. The script accepts a PEM file
> containing an RSA (public) key or an already signed rkimage, from which
> the key is extracted.
> 
> Patch 2 adds a driver that interacts with the Rockchip Secure Boot PTA.
> The API header between the PTA and the driver has been copied from
> OP-TEE.
> 
> Patch 3 adds a shell command that a user may use to actually interact
> with the PTA. The command options are inspired by the options for the
> i.MX hab command.
> 
> This series is an RFC, because the Rockchip Secure Boot PTA is not
> merged into OP-TEE, yet.

Looks all good to me, so let's wait until it's merged into OP-TEE.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Tue, 22 Apr 2025 14:45:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7D01-0043Uz-2f
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 14:45:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7D01-0003Q5-8R
	for lore@pengutronix.de; Tue, 22 Apr 2025 14:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5e2MSR1Y0gQjT2erVvSsd5CNBBtVpG7KoUi2mOtSSxA=; b=MLYzfqfHnSEcg3/YKgeEGajeew
	gPUnD4XbbsnmHIRzJKSNvBCXjKEbTrsUbhHvinTWf96+shqypDv8AeR+AQMb5ftDXnQUrB/XfxXhJ
	IytZ+BXg96lxUr2fipfbqcDlcfs8JRBMWHbJ2bUigoqoE0hn2eUNik3p+FTSesukO6ADKTlz61KrF
	7byDnO2+BuGkXAx4ADGQKlX9Wx/09tTx6dopTnNrAOOy4X6eG/XpxB1HPpXhBuP+pm5sWujT9QBw8
	3qE1aInEPJjzxncI43i8WiA2GYjPKPdClc4UJb6+tgjQqdl717RtXvyNI1zwxhNfoVjNFOvNFzxBe
	Ju/64QqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7CzY-00000007Aa8-46nI;
	Tue, 22 Apr 2025 12:44:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Bw1-00000006yQG-2w3S
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 11:37:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bw0-0006bf-BV; Tue, 22 Apr 2025 13:37:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bw0-001XqG-0M;
	Tue, 22 Apr 2025 13:37:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u7Bw0-00F080-08;
	Tue, 22 Apr 2025 13:37:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
Message-Id: <174532182403.3575329.15577987479153908799.b4-ty@pengutronix.de>
Date: Tue, 22 Apr 2025 13:37:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_043705_738768_8704BBCB 
X-CRM114-Status: GOOD (  11.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 00/11] firmware: qemu_fw_cfg: implement file
 system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 11:17:17 +0100, Ahmad Fatoum wrote:
> The character device we currently have is cumbersome to use.
> The Linux way to access it at /sys/firmware/qemu_fw_cfg
> is much nicer to use, so this series adds support for a similar
> FS to barebox.
> 
> A very nice result of having file system access to the QEMU variables
> in barebox is that we get a trivial way to pass data to barebox.
> To make it even more convenient to use, this series enables overriding
> individual files in the environment via the new mechanism, e.g.:
> 
> [...]

Applied, thanks!

[01/11] video: ramfb: fix frame buffer screen size
        https://git.pengutronix.de/cgit/barebox/commit/?id=90deedc8aba0 (link may not be stable)
[02/11] firmware: qemu_fw_cfg: drop duplicate definitions
        https://git.pengutronix.de/cgit/barebox/commit/?id=671df113e8e0 (link may not be stable)
[03/11] firmware: qemu_fw_cfg: add support for seeking
        https://git.pengutronix.de/cgit/barebox/commit/?id=634bf55f58e8 (link may not be stable)
[04/11] firmware: qemu_fw_cfg: rename from /dev/fw_cfg0 to /dev/fw_cfg
        https://git.pengutronix.de/cgit/barebox/commit/?id=d41239d578e6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




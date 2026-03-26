Delivery-date: Thu, 26 Mar 2026 10:07:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5ggA-005IKH-1c
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 10:07:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5gg9-00023Q-Sf
	for lore@pengutronix.de; Thu, 26 Mar 2026 10:07:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cdHJZqEJOVhcnsaXyvQKuoZN4qfJz/DPAnVC+sRWWgE=; b=Gng0mU9I0q3mhsyVC/scuwUEvJ
	wI8ByKteAmkaNRMGVwpQzmWizv38IzNDAoipNWmI8ZjE819PtF40YCmgp/ewb3ibb76Efc7AEho3x
	tFvcBDzQfKITSLO/eQ207rs3JwGRI3VnKGLMvjLPklHvcMdsmWVHEgspEZ2Yknu2fbT3JfuOFIs1W
	SvWVP/ylEujw52ln0NwcDaSBFGXkLjklLswOoITr/E0zdwNIP4AF8UEkKmVVx3RGEwwi/Qtuj8Abr
	m5ML0Q7xcQi0EpLYclhiG0zvxZZ+XzrYqY6R4wCOYerwhGaofyXDMTKrK10RT7R6qesErvvF+8TpM
	TpESqMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5gfW-000000056BA-1YpR;
	Thu, 26 Mar 2026 09:06:22 +0000
Received: from mail-106104.protonmail.ch ([79.135.106.104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5gfS-000000056Ak-48Mi
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 09:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1774515975; x=1774775175;
	bh=cdHJZqEJOVhcnsaXyvQKuoZN4qfJz/DPAnVC+sRWWgE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=iP3Lo6AOxNX72+Kd0uhtq++dx1kOcoSMTiZzQlMPAdfG9wOG6kj62Z55zsnSpvtWd
	 0EwYIblamBgQjRGX/bIda+YaBYyax6mKsLPM4DLcQe5J5TIOMRpzUy7ux4adnE4pLt
	 R+yWc0xIG/YeNU8LKydVg5gn5ObP8IfRAhtP1euW231+orcC485MMgDNmu1VzbELKS
	 ZTgh7+vrPVCUU+TYK1jShfycBu6b7tY/4Jrd8XcC82TFqHQ+tIKiaQve9hkIglRTtx
	 drcpnZXsg1PphJNcYfcD2st5FAB6TFCpacqThm6nxeic+uLYKDTpk4v6xSpo6NEc+B
	 CdCqNqTWY3CsA==
Date: Thu, 26 Mar 2026 09:06:11 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com>
In-Reply-To: <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: 98c94db48ca51ecf7f3bcf5cc234476d121ec847
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_020619_641309_36530CBF 
X-CRM114-Status: GOOD (  16.40  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Compiling barebox without PBL and using dts from Linux dts upstream for Zynq SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> Do you use upstream or a fork? There seems to be no Z-turn board support =
upstream.

Upstream, release 2026.03.1.


> barebox can generate multiple images in a build, which image did you use?

I think I don't understand the question.


> Every barebox image on ARM has a prebootloader prepended that:
>
>   - decompresses barebox proper
>   - loads it and configures the MMU
>   - executes it while passing a device tree

How Does PBL pass a device tree to the barebox?


> I am looking at start_avnet_zedboard() and at the start of
> avnet_zedboard_ps7_init(), it skips the low level init if started
> second stage, which is what you seem to be after?

This is true.
However, I don't use the avnet zedboard board.
I don't want any code realted to some other board to be executed.
What is the point of this?
The FSBL has already configured everything at this stage.
If PBL is required, I just want minimal PBL that only does whatever is requ=
ired to start barebox.
Is it possible to configure PBL in such a way?


> For quick testing, you can replace in arch/arm/dts/zynq-zed.dts
>
> #include <arm/xilinx/zynq-zed.dts>
>
> with your own board. Check that the stdout-path is correct.

If I do so, the dtb compilation fails with:
  FATAL ERROR: Couldn't open "zynq-zturn-common.dtsi": No such file or dire=
ctory
'zynq-zturn-common.dtsi' is included in 'dts/src/arm/xilinx/zynq-zturn-v5.d=
ts'.
Is is placed in the same directory as 'zynq-zturn-v5.dts' ('dts/src/arm/xil=
inx/').
If I replace
  /include/ "zynq-zturn-common.dtsi"
with
  /include/ "arm/xilinx/zynq-zturn-common.dtsi"
the dtc still can't find the file:
  FATAL ERROR: Couldn't open "arm/xilinx/zynq-zturn-common.dtsi": No such f=
ile or directory


> dts/ are just the device trees as they are in Linux. You can only build
> device tree in arch/${ARCH/dts/.
>
> You can read more about barebox device tree handling at:
>
> https://www.barebox.org/doc/latest/devicetree/index.html

So the help message of the Makefile in the dts directory is misleading.
Is is simply copied from the Linux?


Regards,
Micha=C5=82 Kruszewski



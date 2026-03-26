Delivery-date: Thu, 26 Mar 2026 11:37:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5i5N-005JkP-33
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 11:37:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5i5N-0002Hx-CO
	for lore@pengutronix.de; Thu, 26 Mar 2026 11:37:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:From:
	To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p19BP+bZBebSvUFQgZflkJwqt5aLcRow7HfeYwe1IrQ=; b=0ER0ulYxF1ifiXiylT1fKw7ZqT
	20xzFm3tuMcIgiUjVsil4+8nYi1HcjmXmOX0VPyCiXi7QTX3AHOFGKxu7Rt2F+RUwsaXfC7ykPIqj
	snqw/r5PQBgp3OScaT2o1LwDH1aZ+qVW+j4va5i9DqUcgbINLHN1dLz/q62Ko5UXoOGl/Nq0DPjJ+
	N//qO/ynb83rwtSqV7u0chCUjVC+cGJYEVjUBqj8SuZbD34yXhAaB5YSF/Mhv8EJ0pckygPUZ9pC7
	m1Js7nA9gTFZlgi+t3cZ3dBTHyRxaqTaND/qCyyU/ElvZqvPv6z2gr3ilh46MYpeAECSRrc2Gyu3Z
	++vy0YvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5i47-00000005HE6-46Z0;
	Thu, 26 Mar 2026 10:35:51 +0000
Received: from mail-10697.protonmail.ch ([79.135.106.97])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5i3s-00000005HBT-2fNa
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 10:35:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1774521333; x=1774780533;
	bh=p19BP+bZBebSvUFQgZflkJwqt5aLcRow7HfeYwe1IrQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Ji0G6v83Z0DWE7LXKHIe8h6B1DdtB88TeZbg/gDjn10liOgA/gsS8s6sVRIDU/hzA
	 /Yz/OlHEI4seeAG6Jna4LR2sY8uo5Vd4dVoSKN1Yjhxzdav/h/0bSAcykBi5J7T92q
	 Ndd71K/WHglGdu8OtL0RJ2BWVJPLp/S8R04mwrNr49mB5R6FNwhgyBUmEFjEVVXRCw
	 28L3Ke/rQTFs8NwOP/V+4AFlZ5yIQI2AsknK9fqXpEjMUG3IsDPXXR0qkcI/7tKRrc
	 kBHHrqnaQHcbiRXDZtOLZOI0GNUpngvNsh5s0a1RM9d4z5xONMF1aQPKLaZ4ISsbAQ
	 6a52/Dby2ySDw==
Date: Thu, 26 Mar 2026 10:35:32 +0000
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
From: =?utf-8?Q?Micha=C5=82_Kruszewski?= <mkru@protonmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <uQ0wdkwojjz9oEqfuP5-wjYVdqShnu7Gb_zBE2IF0Nam7xR4HVUhENT8jTlVwnpDeG0NPB-ACdZSShnYWT_nLatBEhXq6pJ6YfEpBkxOqZs=@protonmail.com>
In-Reply-To: <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de>
References: <mO0lDEdknvuZ-6R4RSHJePbDBcwiBmMAZB_d_sZMBEWJKoRltrWPiQqPxiF3Pukxv8_JAhFxG7-RFL5VUbOnDpwOEJ2_HkmE7lfSVEFA5bs=@protonmail.com> <be11f271-1d48-4db4-b06e-f3862264105f@pengutronix.de> <mTw4y_xR5aiHEkjdE2rA6eEGvVkxqees8prnFukfaV5DSv4qcIUBmdtZJ--nwcZQjjf_84O-TDQ8cBHlZubeOfUZeInYOK76kyxGVFxrbvc=@protonmail.com> <9ae2b9e7-c83d-478e-83b3-9a6f82562259@pengutronix.de>
Feedback-ID: 2463531:user:proton
X-Pm-Message-ID: 015ba9d7eeff955f964e2ad9446baf8c79c0053c
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_033547_632202_2EC68262 
X-CRM114-Status: GOOD (  14.19  )
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

> A zynq_defconfig build will report at the end the generated images:
>
> images built:
> barebox-avnet-zedboard.img
> barebox-dt-2nd.img
> Is images/barebox-avnet-zedboard.img the image you used?

All I did was:
  make zynq_defconfig
  make

I used neither images/barebox-avnet-zedboard.img nor images/barebox-dt-2nd.=
img.
I used barebox file.
Why?
Because I use Vivado bootbin progam to generate the boot.bin file.
bootbin requires that the second stage bootloader is provided in the ELF fo=
rmat.
When I use u-boot.elf everything works correctly.


> This is the line that does it for the Zynq Zedboard:

> barebox_arm_entry(0, SZ_512M, __dtb_z_zynq_zed_start);

> This function takes care to extract barebox and invoke it
> with these arguments.

So the compiled device tree is placed into the final image, isn't it?


> barebox generates bootloader images for boards, so you must have
> either used an image for an existing board or some intermediate build
> artifact, hence my question above.

What is an "intermediate build artifact"?
How to use it instead a board image?


> I am asking to clarify what you did. Your original email didn't
> elaborate what you did, only what you thought was the problem.

All I did was:
  make zynq_defconfig
  make
I used the generated barebox elf file for Vivado bootbin.
I replaced u-boot.elf with barebox.
I did not expect the Linux to start.
However, I did expect the barebox to start.


> Yes, of course. Just add a new ENTRY_FUNCTION(_WITHSTACK) that does
> only the parts you are interested in and reference it in
> images/Makefile.zynq.

Is there any tutorial/documentation on that?
I thought that maybe there is a simple CONFIG for that.


Regards,
Micha=C5=82 Kruszewski




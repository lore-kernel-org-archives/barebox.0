Delivery-date: Mon, 16 Dec 2024 08:55:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5ww-008jxe-1I
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 08:55:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5ww-0003jC-CT
	for lore@pengutronix.de; Mon, 16 Dec 2024 08:55:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JG/4o489BSBW0mjFFFSlyHKoDXms3tJdU7EDEqydALk=; b=q+F24YdmFCz7xWKwCC8KO5QNMd
	HSSMErlBYMYQb4miaDWH0uC+S2MBWKMVWVVX9QdJeZoyqQ9JH0QM93vXZ/6X1mqmKjxkkOiKkT1SB
	7YE+5VjpbrNF/QWx4RnttftTdjgtggJ5NcLJX7t/dFEDBs8AH5tIx//NQNxFx7NqMLX42udFLncLp
	PoTJMIVFrW/oyic8tq0L6Vy8i69dh4A8VG2vCeHYNBLr2bJFYQJaJnV1cPyvAeAnr3pS2ytEPFXRm
	kUUtu3crEyaS55zJ5zqlp0Dv/hBV43knqQtGH5hwGxVuJp46PA02h7alx+vSzaOAcepJpzsByAyMz
	csQ6fsdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5wT-00000009JkR-0UTj;
	Mon, 16 Dec 2024 07:55:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5wR-00000009Jj2-0iSw
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 07:55:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5wP-0003di-TP; Mon, 16 Dec 2024 08:54:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5wO-003emr-35;
	Mon, 16 Dec 2024 08:54:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5wP-0068rF-29;
	Mon, 16 Dec 2024 08:54:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20241213-mx6-remove-mac-v1-1-e2b9fd8c2b06@pengutronix.de>
References: <20241213-mx6-remove-mac-v1-1-e2b9fd8c2b06@pengutronix.de>
Message-Id: <173433569766.1463900.13846287659955130965.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 08:54:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_235459_211251_E29896A6 
X-CRM114-Status: UNSURE (   7.64  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX6: drop OCOTP MAC address provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Dec 2024 15:06:36 +0100, Jonas Rebmann wrote:
> Now that the MAC address can be read properly through the NVMEM
> framework, there is no need for the custom Barebox MAC address provider
> anymore. As <0x20 0x6> is defined in the nvmem-layout for imx6 to hold
> the mac, the definitions in the legacy format can safely be dropped.
> 
> 

Applied, thanks!

[1/1] ARM: dts: i.MX6: drop OCOTP MAC address provider
      https://git.pengutronix.de/cgit/barebox/commit/?id=c7ecc80c9fe5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




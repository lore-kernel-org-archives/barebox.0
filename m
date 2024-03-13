Delivery-date: Wed, 13 Mar 2024 08:52:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJPX-0045MU-1A
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:52:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJPW-00044K-QL
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:52:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hdsarVDZqeucui26bV7RF7AHYqbs4jWxzdSTYP/0nP8=; b=dI8gjo3OqQIBr69p8ZtNTJ09Uz
	Gxy6YdyBi2lxoUIK3HE9OLfcKCGy6wFJ67zNQ/SHt18IR3dfy32VoCpjuQ1aYKRa2+maDplfXfS9b
	HVlmzPK+ipq95B9GF/cIrswqzyx4qaK5nfXoqgNiPuCcc2eVwZtXhCVx71BbSYEzc2P7nWg+DzdDf
	BaBXhC+C8t7JS329aNahP3Ahfn1+hjT5AFClb9uNDHXjdlVcTnWzlHljZ33rIgfcxh20PF+IyZiqr
	ST7nPOMAH36lr5ag9dEh5bkdnEPS7joxYUDv1tiinVeDJWqf948X811uWCtQCvc+bbNusfxb5y+1C
	6bCqzOoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJP5-00000009FVs-44H3;
	Wed, 13 Mar 2024 07:51:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJP2-00000009FVO-1xEB
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:51:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJP0-0003k6-TW; Wed, 13 Mar 2024 08:51:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJP0-0064UE-8a; Wed, 13 Mar 2024 08:51:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJP0-0043XH-0f;
	Wed, 13 Mar 2024 08:51:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
In-Reply-To: <20240310215434.1220451-1-antonynpavlov@gmail.com>
References: <20240310215434.1220451-1-antonynpavlov@gmail.com>
Message-Id: <171031631420.966880.274569462845794228.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 08:51:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_005156_605960_7D05F60B 
X-CRM114-Status: UNSURE (   6.13  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: add generic device tree 2nd stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Mar 2024 00:54:34 +0300, Antony Pavlov wrote:
> Building and running barebox for 32-bit malta:
> 
> export ARCH=mips
> export CROSS_COMPILE=mips-linux-gnu-
> make -s qemu-malta_defconfig
> sed -i "s/# \(CONFIG_BOARD_MIPS_GENERIC_DT\) is not set/\1=y/" .config
> make -s oldconfig
> make -s
> qemu-system-mips -M malta -cpu 24Kf -m 256M \
>             -nographic -serial mon:stdio \
>             -bios images/barebox-qemu-malta.img \
>             -net user,tftp=$(pwd) -net nic,model=e1000
> 
> [...]

Applied, thanks!

[1/1] MIPS: add generic device tree 2nd stage support
      https://git.pengutronix.de/cgit/barebox/commit/?id=041702182a27 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




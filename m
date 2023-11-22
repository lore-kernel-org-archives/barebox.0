Delivery-date: Wed, 22 Nov 2023 06:29:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5fna-003ukj-2B
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 06:29:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5fna-0002Er-NI
	for lore@pengutronix.de; Wed, 22 Nov 2023 06:29:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:In-reply-to:Date:Subject:Cc:To:From:
	References:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q5yeq2p7iaK1DD9TSgpOccMLzna61MlOVpibJIsagJE=; b=M/5tLMeg+92zPv7z6TxKMr07wg
	VYmbPpRepUrmVq5GKj4pTcefcbmKlzCRmElE0NbzDyS+fADgAV9rC2lO08auwg6HmhirhY32nlCaz
	OKksr4vdANqLUIglkgVhFGrpPUYPoWvUSe2/902OqL/PtyeifebDbAj6nBcIevB3gqrUXwLr5rJm4
	8FHzje9LFzTcHQ9EkAaugucagvOQsoruGmFVChe+tywXrR04bMLliKa07iC+Ex9eS1SxUIWcS5T3/
	kk1oP5/A29phlcPWXzQFuWW1QDvnpJpDw5C1LRJRYQTVJwl9J6zAQKXrk6FI54QHjI9lkcdvvms0V
	rdGyFhYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5flp-000htV-2K;
	Wed, 22 Nov 2023 05:27:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5flk-000hrZ-0d
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 05:27:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1r5fld-0001wJ-PZ; Wed, 22 Nov 2023 06:27:17 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1r5flb-00Ak4G-Mx; Wed, 22 Nov 2023 06:27:15 +0100
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1r5flb-00HCqh-E7; Wed, 22 Nov 2023 06:27:15 +0100
References: <20231121162009.160644-1-rhi@pengutronix.de>
User-agent: mu4e 1.6.9; emacs 29.0.50
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 06:24:21 +0100
In-reply-to: <20231121162009.160644-1-rhi@pengutronix.de>
Message-ID: <6rzfz65pe4.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_212724_232518_70B61886 
X-CRM114-Status: GOOD (  18.32  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Documentation: dt-bindings: leds: document 'default-on'
 trigger
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Roland,

On Tue, Nov 21 2023 at 17:20 +0100, Roland Hieber <rhi@pengutronix.de> wrot=
e:
> The default-on trigger has been supported in barebox since commit
> 767c6b4a814a2a000f3b (2014-02-28, Sascha Hauer: "led: Add default-on
> trigger").
>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/leds/common.rst | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Document=
ation/devicetree/bindings/leds/common.rst
> index 09b4e401bc2c..ad94ceb506b1 100644
> --- a/Documentation/devicetree/bindings/leds/common.rst
> +++ b/Documentation/devicetree/bindings/leds/common.rst
> @@ -9,6 +9,7 @@ Common leds properties
>      * ``net`` - LED indicates network activity (tx and rx)
>      * ``net-rx`` - LED indicates network activity (rx only)
>      * ``net-tx`` - LED indicates network activity (tx only)
> +    * ``default-on`` =E2=80=93 LED is switched on by default

the lines before utilize the character '-' while in your new line a '=E2=80=
=93'
is used. I think this should be consistent in one or the other
direction.

Best regards
Ulrich


>  * ``label``: The label for this LED. If omitted, the label is taken
>    from the node name (excluding the unit address).
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



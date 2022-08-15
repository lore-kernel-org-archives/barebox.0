Delivery-date: Mon, 15 Aug 2022 08:47:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTtF-0069eJ-4c
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 08:47:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNTtF-0000jI-1b
	for lore@pengutronix.de; Mon, 15 Aug 2022 08:47:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3z1ATdghSnNbWXcDrTeDC99q6FoslcX63vfqp+ZSbdo=; b=qVJkAX0n2GVOW/YCjXOPiSfXK8
	xUwn16D90oCxelPEjTuPzEToCKIEWkZUG+eu0suFsFP5rt3+Nb82cBK+IBC5RlmnjG+mxP5nj5GF2
	z4p0IodYEIpcnoonk7QGL7fzvoTb2gvIVO3VizgCsJ2CZ3UFxZZO/KdFxhpQOuG7ooSvaFetgAqyD
	71Vg4o73blDcQfsszhQtRZf2U0WdJPpl2NkU6afZf22iSt5U13n25Z6h1091K/uCT3QwZQQqlHcb0
	sa01cKFOX5IjQTPNI4kW0X/ReoAnFOPoNlGFpFTtyXI5VEPmyuQYAmB9KIOEbwNJfrPTWfzTYZWql
	S7fuLo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTrq-00C8sW-7k; Mon, 15 Aug 2022 06:46:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNTrb-00C8nD-Sf
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 06:46:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <rcz@pengutronix.de>)
	id 1oNTrY-0000bh-8O; Mon, 15 Aug 2022 08:46:12 +0200
Message-ID: <d896cebcea86af47691d355c473d3f72a07a11e7.camel@pengutronix.de>
From: Rouven Czerwinski <rcz@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Mon, 15 Aug 2022 08:46:09 +0200
In-Reply-To: <20220815063853.672239-1-a.fatoum@pengutronix.de>
References: <20220815063853.672239-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_234615_950616_C05F1BF5 
X-CRM114-Status: GOOD (  13.82  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: HABv4: make barebox SHA256
 embedding POSIX-shell compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 2022-08-15 at 08:38 +0200, Ahmad Fatoum wrote:
> C-Style printf "\xHH" is not supported by a POSIX shell,
> while printf "\oOOO" is. As we use printf "\xHH" for converting the
> textual output of sha256sum into binary, systems using dash as shell
> will end up embedding literal \xHH characters in the output resulting in
> an ubootable barebox when CONFIG_PBL_VERIFY_PIGGY=3Dy:
>=20
>   !hash mismatch, refusing to decompress
>=20
> Fix this by using octal escape sequences instead.
>=20
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

> ---
>  images/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/images/Makefile b/images/Makefile
> index c79f1a272e9c..7a8bb94fe0df 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -113,7 +113,8 @@ $(obj)/piggy.o: $(obj)/barebox.z FORCE
>  $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
> =20
>  quiet_cmd_sha256bin ?=3D SHA-BIN $@
> -      cmd_sha256bin ?=3D printf "$(shell awk '{printf $$1}' < $(obj)/bar=
ebox.sum | sed -e 's/../\\x&/g' )" > $@
> +      cmd_sha256bin =3D printf "$(shell sed 's/ .*$$//;s/../0x&\n/g;s/\n=
$$//' $(obj)/barebox.sum | \
> +			while read -r byte; do printf '\%o' $$byte; done)" > $@
> =20
>  quiet_cmd_sha256sum ?=3D SHA     $@
>        cmd_sha256sum ?=3D sha256sum $(obj)/barebox.z > $@

Best regards,
Rouven



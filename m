Delivery-date: Tue, 18 Mar 2025 12:17:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUwr-0010zc-1Q
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:17:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuUwq-0004t5-9F
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:17:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9mfGxxnkFpkVeoGRIp6h5wweI4VkvICl8mnRHebNs1s=; b=JSajiv9rzwhjq3JkHfh9JHqm4F
	AUzztYxoiFj696/SsNZhz8/6Djj6VL+mFbPNQOFz7Hc1C0Q8e05qKKj0QCBT2bw5BSQrD1LXpXgcV
	9menRem6QG9YTGJMXsuqZvZkg9uI9KYNzrY4zVcdTYA88oObq+YYpb2Y/biWFK/Ia3PuaFSsS1ZzH
	jI7CqoRPwPFwP9OVDevGtKSTtwC5GUfqvjEVtDWMoR9yf2tI/csyfBFu8vVfsFXJP1bKViXngiGtm
	Lp3DAwK4mr5vy1ff4c8uoAVgpT66Wg4kn24WgnmrRTeMDV7mItL9xj5u+EmXPDuozeV/VWm4azB4C
	glAvf1hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUwP-00000005gTB-0YMf;
	Tue, 18 Mar 2025 11:17:01 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuUvc-00000005gFW-0vib
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:16:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742296570;
	bh=28e41H3eXhAgnX1jPaX/rGg6Cn+fjwLYudvV5RGMnuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TGuFz3WdYrumhsayjShImuh0ChXt0AmkEUiB8492EU3isEsZ7/eskv08JzehubqpG
	 ZebiVgEjPGDvFYDTpc3yy9wJhd60KELatb6LesQdq/Tk6inlejVDpRPdV9yzPn+bWs
	 bE7ayPlztv0xICUfYqEkfbBhDPA550razhthSJ3TGDsQpR5lgsFzwpz6c2iiQFp5d2
	 6WDkI1i42z+o/uctOyDmpsI6EupAjJyh1RrKwQOmevPr2IxYQ+co0X3gArBAZl020X
	 TiyFe6eQ+NhOXG98ayv/zHLxpCmLAlI9CirXpLWQ+94ks8tNH8OCXqp/RImfhPUwuo
	 WNDIQbaQ0XsWg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id 7B8F6FC5149; Tue, 18 Mar 2025 12:16:10 +0100 (CET)
Date: Tue, 18 Mar 2025 12:16:10 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <p6sahp32nei5iesre27rbtdbsatui24ce53f3fx6sovbe2mis7@lkei2stdndjo>
References: <20250318082435.419053-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5at4zcdswzb2qckb"
Content-Disposition: inline
In-Reply-To: <20250318082435.419053-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_041612_449833_63AE3DC8 
X-CRM114-Status: GOOD (  18.77  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in warning
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--5at4zcdswzb2qckb
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in warning
 message
MIME-Version: 1.0

On Tue, Mar 18, 2025 at 09:24:35AM +0100, Ahmad Fatoum wrote:
> For MBR and GPT, barebox creates links to the partitions, so they can be
> referenced both by index and partition label.
>=20
> Failing to create a link is not an error, but results in a warning
> message. The current message claims that the link was pointing at the
> parent block device's cdev, but it actually was pointing at the child
> partition. Fix that.
>=20
> Reported-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/partitions.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/common/partitions.c b/common/partitions.c
> index 7562536cf9b8..bc90f51f6112 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -63,7 +63,7 @@ static int register_one_partition(struct block_device *=
blk, struct partition *pa
>  	ret =3D devfs_create_link(cdev, partition_name);
>  	if (ret)
>  		dev_warn(blk->dev, "Failed to create link from %s to %s\n",
> -			 partition_name, blk->cdev.name);
> +			 partition_name, cdev->name);

This improves the error messages on my ts433 from

	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0

to=20

	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.2
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.3
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.4
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.5
	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.6

I still don't understand why barebox intends to create mmc0.primary for
all these partitions, but still it's an obviously right improvement.

Acked-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Best regards and thanks
Uwe

--5at4zcdswzb2qckb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfZVfcACgkQj4D7WH0S
/k6J7AgAuYNLca9V9orUIxzO3GClTXqzlut60mEkkzKenkxBC11EhIzt35Tn/s6U
GJu6WpRMRB10AfRanaE8CryBSpplDBafVVgjxggbrzLCjo+zOGFIFXptpCpwPx2+
VMg1chyMNaS3aks7qXM98kw12EPcbmE0Olqu2OEkezLqmKoyQwYoJ++WYoMot0TQ
KxGHCpsjU+oaNk4/HGBEmDDyahlnfUlepU+V0xBVquTlo4ifbgBx5ekS28W8BSCM
pk24o0AfUzgT30vff8v5ovWuPXgUnCBsmBL7OZYQJtg4mhXx7nF2r8mQ2axXPgYh
C6VNVWuisCXmgpTl19Ns8bhidXOYiA==
=YmbD
-----END PGP SIGNATURE-----

--5at4zcdswzb2qckb--



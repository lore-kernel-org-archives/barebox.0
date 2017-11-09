Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eCqK1-0006sx-6W
 for barebox@lists.infradead.org; Thu, 09 Nov 2017 17:08:59 +0000
Received: from [192.168.1.100] ([31.18.251.132]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LeiJ8-1f0nSr2BuI-00qPTI for
 <barebox@lists.infradead.org>; Thu, 09 Nov 2017 18:08:31 +0100
References: <20171108153308.17351-1-o.rempel@pengutronix.de>
 <20171109100400.swaevd4zzqekhcpi@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <850b5981-f559-ca8b-c1fc-d04d5d1cf8a4@rempel-privat.de>
Date: Thu, 9 Nov 2017 18:08:30 +0100
MIME-Version: 1.0
In-Reply-To: <20171109100400.swaevd4zzqekhcpi@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2966238337830009612=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] i.MX: esdhc: optimize set_ios path
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2966238337830009612==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Uw7r0WLGElTQS9fT5g9dJlQnXEuK80xeT"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Uw7r0WLGElTQS9fT5g9dJlQnXEuK80xeT
Content-Type: multipart/mixed; boundary="NuTfCgrViTBub12ffnnXUlnrxmFSnhc9U";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <850b5981-f559-ca8b-c1fc-d04d5d1cf8a4@rempel-privat.de>
Subject: Re: [PATCH v1] i.MX: esdhc: optimize set_ios path
References: <20171108153308.17351-1-o.rempel@pengutronix.de>
 <20171109100400.swaevd4zzqekhcpi@pengutronix.de>
In-Reply-To: <20171109100400.swaevd4zzqekhcpi@pengutronix.de>

--NuTfCgrViTBub12ffnnXUlnrxmFSnhc9U
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 09.11.2017 um 11:04 schrieb Sascha Hauer:
> On Wed, Nov 08, 2017 at 04:33:08PM +0100, Oleksij Rempel wrote:
>> this part of code is executed at least 4 times in eMMC probe sequence.=

>> Optimizing it is reducing 20-30 msec of boot time.
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  drivers/mci/imx-esdhc.c | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
>> index 141d715c90..5c2a3a36e3 100644
>> --- a/drivers/mci/imx-esdhc.c
>> +++ b/drivers/mci/imx-esdhc.c
>> @@ -95,6 +95,7 @@ struct fsl_esdhc_host {
>>  	struct device_d		*dev;
>>  	struct clk		*clk;
>>  	const struct esdhc_soc_data *socdata;
>> +	u32			last_clock;
>>  };
>> =20
>>  #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mc=
i)
>> @@ -408,7 +409,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cm=
d *cmd, struct mci_data *data)
>> =20
>>  static void set_sysctl(struct mci_host *mci, u32 clock)
>>  {
>> -	int div, pre_div;
>> +	int div, pre_div, i;
>>  	struct fsl_esdhc_host *host =3D to_fsl_esdhc(mci);
>>  	void __iomem *regs =3D host->regs;
>>  	int sdhc_clk =3D clk_get_rate(host->clk);
>> @@ -453,13 +454,17 @@ static void set_sysctl(struct mci_host *mci, u32=
 clock)
>>  	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFT=
WARE_RESET,
>>  			SYSCTL_CLOCK_MASK, clk);
>> =20
>> -	wait_on_timeout(10 * MSECOND,
>> -			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB));
>> +	for (i =3D 0; i < 1000; i++) {
>> +		if (esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB)
>> +			break;
>> +		udelay(10);
>> +	}
>=20
> I hope this hunk doesn't make anything better. If yes, we have a
> problem.

this is the part which need most of the time. Some times it will pass
immediately or will take exactly 10ms.

>> =20
>>  	clk =3D SYSCTL_PEREN | SYSCTL_CKEN;
>> =20
>>  	esdhc_setbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWAR=
E_RESET,
>>  			clk);
>> +	host->last_clock =3D clock;
>=20
> Instead of storing the desired clock I would rather store the clock we
> actually make from the desired clock. This way we could optimze for
> multiple input frequencies that result in the same actual frequency.
>=20
> Also please rename the variable from last_clock to cur_clock.

ok.

--=20
Regards,
Oleksij


--NuTfCgrViTBub12ffnnXUlnrxmFSnhc9U--

--Uw7r0WLGElTQS9fT5g9dJlQnXEuK80xeT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF0EAREIAAYFAloEi44ACgkQHwImuRkmbWnOdAD2K+zqo62dh/13yhR+P2HCFxqf
vAvWnfmkuwsW0fyzzAD/YBwvEizOHNml8rp7XJcRxE1YrSjXLV0C2QgRSBELQ28=
=7BrQ
-----END PGP SIGNATURE-----

--Uw7r0WLGElTQS9fT5g9dJlQnXEuK80xeT--


--===============2966238337830009612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2966238337830009612==--

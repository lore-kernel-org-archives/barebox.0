Delivery-date: Tue, 28 Jan 2025 18:00:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcox1-005b3n-1z
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 18:00:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcox1-0005Vj-K9
	for lore@pengutronix.de; Tue, 28 Jan 2025 18:00:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ucZOPbLfmeOMIK51sFqhZ7Uz8erddu1Uv/oTfsQyDNs=; b=pJEij/oLpYziwuzqHWpLLFI5VN
	UJdybDEs7HMMjOfkgdCPWXcJaAGQ8afNNMgKAZDPzA4tl4Uc2lwK/sjWl8YGL98j4ziaL2TRZbFe5
	JW7Q+UR9d7DRGNN1GE51JIvnUHwvl3DtHGRGoU4ozJ2q6JARjWaBn+tL26dbkF80t3ZLDvgb5NgeJ
	aSfodC0nQDqB+56m6OlMh0bjOjip2nu/mEC5QhBETuanQCwWWokBVqK0YdLV+8Y5oEdK1TblkRXtb
	DI+NOJ2jjvzaCfRdwxNQXH0TJw6FjdVOUt6mleY097PBzzBo/0kwBvhiXJLb6QvWtd9hTct4VUxFj
	uykRYJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcowX-00000005PRN-4C1Q;
	Tue, 28 Jan 2025 17:00:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcowV-00000005PPu-05vl
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 17:00:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcowS-0005K2-7R; Tue, 28 Jan 2025 18:00:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcowS-002KFN-07;
	Tue, 28 Jan 2025 18:00:00 +0100
Received: from mgr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1tcowR-0011ly-33;
	Tue, 28 Jan 2025 17:59:59 +0100
Date: Tue, 28 Jan 2025 17:59:59 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z5kND6-aW7WPVwPZ@pengutronix.de>
References: <20250128160625.1364798-1-m.grzeschik@pengutronix.de>
 <7aa96251-7318-497a-99c9-c93d2b22cae1@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EJovZJZvh6YVqPYY"
Content-Disposition: inline
In-Reply-To: <7aa96251-7318-497a-99c9-c93d2b22cae1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_090003_066664_3063B0B8 
X-CRM114-Status: GOOD (  27.16  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v4] video: simple-panel: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--EJovZJZvh6YVqPYY
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 28, 2025 at 05:49:56PM +0100, Ahmad Fatoum wrote:
>Hi,
>
>On 28.01.25 17:06, Michael Grzeschik wrote:
>
>It's good style to write some message here. ;)

Right, but I skipped it for v5. sorry. :)

>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>>
>> ---
>> v3 -> v4: - better bail out if the regulator is set but not available
>> v2 -> v3: - reset regulator->power to NULL in case nothing was found
>> v1 -> v2: - added the missing signed-off-by
>> ---
>>  drivers/video/simple-panel.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
>> index 7048e2f51b..905fd94fb7 100644
>> --- a/drivers/video/simple-panel.c
>> +++ b/drivers/video/simple-panel.c
>> @@ -12,6 +12,7 @@
>>  #include <fb.h>
>>  #include <gpio.h>
>>  #include <of_gpio.h>
>> +#include <regulator.h>
>>  #include <video/backlight.h>
>>  #include <video/vpl.h>
>>  #include <i2c/i2c.h>
>> @@ -25,6 +26,7 @@ struct simple_panel {
>>  	struct device_node *backlight_node;
>>  	struct backlight_device *backlight;
>>  	struct device_node *ddc_node;
>> +	struct regulator *power;
>>  	int enable_delay;
>>  };
>>
>> @@ -49,6 +51,8 @@ static int simple_panel_enable(struct simple_panel *pa=
nel)
>>  	if (panel->enable_delay)
>>  		mdelay(panel->enable_delay);
>>
>> +	regulator_enable(panel->power);
>
>Conceptually, you power on a device before you toggle its pins, so this
>needs to be moved before the enable_gpio toggling.
>
>> +
>>  	if (panel->backlight) {
>>  		ret =3D backlight_set_brightness_default(panel->backlight);
>>  		if (ret)
>> @@ -65,6 +69,8 @@ static int simple_panel_disable(struct simple_panel *p=
anel)
>>  	if (panel->backlight)
>>  		backlight_set_brightness(panel->backlight, 0);
>>
>> +	regulator_disable(panel->power);
>
>Similarly, this should be after the GPIO was dis-asserted.

This is true for both cases. I fixed that.

>
>> +
>>  	if (gpio_is_valid(panel->enable_gpio))
>>  		gpio_direction_output(panel->enable_gpio,
>>  			!panel->enable_active_high);
>> @@ -154,6 +160,12 @@ static int simple_panel_probe(struct device *dev)
>>
>>  	panel->backlight_node =3D of_parse_phandle(node, "backlight", 0);
>>
>> +	panel->power =3D regulator_get(dev, "power");
>> +	if (IS_ERR(panel->power)) {
>> +		dev_warn(dev, "Cannot find regulator\n");
>> +		return PTR_ERR(panel->power);
>
>return dev_errp_probe(dev, panel->power, "Cannot find regulator\n");
>
>So:
>   - error code is logged
>   - EPROBE_DEFER doesn't result in a diagnostic yet
>   - the correct log level is used (warning is for issues that the driver
>     can recover from)

Great hint. Did that in v5.

>
>> +	}
>> +
>>  	ret =3D vpl_register(&panel->vpl);
>>  	if (ret)
>>  		return ret;
>
>
>--=20
>Pengutronix e.K.                           |                             |
>Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--EJovZJZvh6YVqPYY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmeZDQoACgkQC+njFXoe
LGR+kxAAvtO+7IPb4LolhzAUlJ8caBtJYh5CXB2i8HicIWcStlJRPG/tdlO0evCj
0Df3aGH58687R4s9Zijm0lD0HycnVcT/pbvgc493CIMfgCtqYMlxkCI8Z8JQya1v
+ubHrlT4+w1Imu30C8W3kllXcTxGbNZmPTtJQEabHez1lVPQCKxZHK9V5ZfPcyy4
dXypeC0bryuji8Uvbl6KaJKzwBg0gWv0SKO+KFdJZmMqWx6e4VuO1+Lsjy2u97iz
BGziE7knoA0Zun+7RHiG8MYpnp9X+tWSD3EzqiwEshsP8BqETMqpsWysmuXpufg7
NxSYqxfRdv7eNmopzqHior5iKZzzhrCNI5369kAjxlKW0+8qeWiZ+3S4w2Tutd40
52RxGEhnHwG6HWh7QPog9XPZQx0q6NqXADel1x79Gxy2yI3fZNdMudi7f+cTkKYZ
lqyFscpu0bhI+RZftooacf7e4T+TwicVMOGMgcYNoonOcX6xn7voYUiIrEZ+4m0l
d8I0CX97XdDxiuftvFMj8FMfFgy8jFj9lCXzkwukVwW03QHgJs7Clmmgz8fv2tho
O+gbJbGodoUwXM+8SbJozHFdm0D7+pKPVZvMXidfnclAlEV7FDM6ICpyJWAmrdJ8
/xGZvtLtOt2qHiGJNvQCERDbV6Tk58Q0PP0JFGRHeEblxRbHzTQ=
=Fc6R
-----END PGP SIGNATURE-----

--EJovZJZvh6YVqPYY--



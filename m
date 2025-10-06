Delivery-date: Mon, 06 Oct 2025 22:53:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5sDQ-0050na-0z
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 22:53:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5sDP-00024J-O0
	for lore@pengutronix.de; Mon, 06 Oct 2025 22:53:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8HRxF/RIYocw+d63PGVJdNS1VRANH+DxpR3/gY5mjoc=; b=cElnolzEO8KWvAT4craYo/xiUI
	hq9wTKUukHOWtLxB51gvqjvw4WNtCJmnJQyjkzMCLjz86FzunInpkkZkmxYveJi/4kqBFOWVwzaXN
	a3RDQvXenDdmsL0EyTlFnEGhgH5a+uzvrjQiALoKZyWv2ChqVmWezBA2R6H+UeIsf1mbZ8ndrc1Fd
	HrqFKr5XJnXqTHA6B+yckG/nCyq3V96U52cg3W870KLdkCf4n1WY566HgRCS0LhfnVPkJLtp8wruQ
	feRBxjTS1mUAGDadpKxV31qud0f3wwfUa9SBTiQ2ltfR2tiDnuZuV0DIWCBB2dElEpR6/TTO0nBMv
	2NSP1psA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5sCl-00000000mWM-3nl9;
	Mon, 06 Oct 2025 20:53:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5sCj-00000000mVk-0w1j
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 20:53:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1v5sCe-0001uh-Ny; Mon, 06 Oct 2025 22:53:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1v5sCc-002I3P-2f;
	Mon, 06 Oct 2025 22:53:02 +0200
Received: from mgr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mgr@pengutronix.de>)
	id 1v5sCc-00G9ta-2I;
	Mon, 06 Oct 2025 22:53:02 +0200
Date: Mon, 6 Oct 2025 22:53:02 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aOQsLiIcSYgn0JmQ@pengutronix.de>
References: <20251003103720.2028460-1-m.grzeschik@pengutronix.de>
 <6efcc606-796d-4345-b587-41e0e67d1530@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iXpfuAZk7ebhZPHi"
Content-Disposition: inline
In-Reply-To: <6efcc606-796d-4345-b587-41e0e67d1530@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_135309_262906_6B124724 
X-CRM114-Status: GOOD (  19.77  )
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
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: clk_set_parent: skip any operation if current and
 new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--iXpfuAZk7ebhZPHi
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 06, 2025 at 01:43:47PM +0200, Ahmad Fatoum wrote:
>On 10/3/25 12:37 PM, Michael Grzeschik wrote:
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>
>While I agree this makes sense, I appreciate some background. Did you
>run into problems? Or is it just something you noticed while reading the
>code? A prime location for that background would be the empty commit
>message ;)

Yes this happend when using the video drivers. Somehow some drivers
tried to reparent the video_pll to the same parent that it already had.

clk: failed to reparent video_pll to osc_24m: -22
clk: failed to reparent video_pll to osc_24m: -22

I did not check which one it was. Since this call came twice, it looked
right to me to fix this on this obvious location.

Michael

>> ---
>>  drivers/clk/clk.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>> index 89a007a12c5..ac5b83cf8b4 100644
>> --- a/drivers/clk/clk.c
>> +++ b/drivers/clk/clk.c
>> @@ -302,6 +302,9 @@ int clk_set_parent(struct clk *clk, struct clk *newp=
arent)
>>  	if (IS_ERR(newparent))
>>  		return PTR_ERR(newparent);
>>
>> +	if (newparent =3D=3D curparent)
>> +		return 0;
>> +
>>  	if (!clk->num_parents)
>>  		return -EINVAL;
>>  	if (!clk->ops->set_parent)
>
>--=20
>Pengutronix e.K.                  |                             |
>Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--iXpfuAZk7ebhZPHi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmjkLCUACgkQC+njFXoe
LGSkyA/+NwREmuFVWyWwgcufu0P9tvaJycyD3CYcFAmFHk+CRk1auM5wIC7fzKQ0
cvMN+0LatVWNaNxywE6OoyycfPlGnXQdxVuizA72wudN+WJNw218G3ClPWl4zR7j
bT0BU1snu5ZRl4L0y2HagaSgqS24vgI6ZGIFoUbIEqDzuzG5S/2+nSQF8eVd71/G
HVhvvazlt4pbBX4veoW1iKB1UHjIW8VOp3PQ/c33VBFQSgoP8agHYpcz4jgVXMiA
hGv+dRHm5ECLRnlf6jhaiWGJRWlmcGXmKECsiP6muejzYNiXE4sAEgeqXgoqNODe
lECfJWUUaQf6KRP1l/mvk+tey36Gt7DXMJ6NwLxJg+dlqdXckGFhu1A8m2epc0tq
+72hBd9UpgDYCHKpJX8uFpQIkJmzaILBDq+XhSUGhjnfvkL/sLuOhXyiiI8RsKb2
jnBBfrlpMq8/IKLCNGMFCdEuYRl3uABEVmJeZsDVBbCk1ssEZnZHifiQSQE8iuwQ
UBQS4JiClXRB5bLhR+fc7xqOvXZucFqXSWEp/jXTShB01Sp9SSFrMYsrh2tPEHI5
zS/Lo7k7w0K31RShdrBrv9UJA2p0bRAL8IbpK894DNSw8Kgi6Pvhr12Bh03EHFxy
JwR3WvbP0BzFXMiE+L0Fl++/hgmszLBPkI8FcSEdZE7G6ol20Lg=
=Q34C
-----END PGP SIGNATURE-----

--iXpfuAZk7ebhZPHi--



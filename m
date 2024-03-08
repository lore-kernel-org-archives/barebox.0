Delivery-date: Fri, 08 Mar 2024 11:15:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXFt-00DZTs-0M
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 11:15:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riXFr-0000Zj-Uc
	for lore@pengutronix.de; Fri, 08 Mar 2024 11:15:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RePNeGsHX6qa89izpuoUXk/CThb9Vpxq/P7znQjapHY=; b=ZOyLnTuqCIILC7c7jyheNFPDPJ
	CyZJWvcInr+fn9jaj4hsRd9rcjY/2CgHt/hxtebo386gNFpcI359TIbITqgwRLMhnL1AYpOdPraT7
	4zUyQC9pi4eTYeHbhTg44eyeVniO70AT8gpzGY6IxlIxIb64pG4kJxshZDMDkef1vqu449ENyodHO
	dD+tBkSmTqAXLEUZzqj2yz9+bpAL4t+lOuGcNwcM6q4AsaOfEDOGrsYr4syxsrftnCEVy9N24p8gS
	sqkzHL1njilZDofg8yIjrb0nNyKIxc/O9cJHm3AAaX2+ppNetgs9eP8d94higYzC4iqf4FqAUBRoa
	x/RBDmQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXFJ-00000008iHj-3gnB;
	Fri, 08 Mar 2024 10:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riXFG-00000008iFs-36ut
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 10:14:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1riXFE-00005D-PF; Fri, 08 Mar 2024 11:14:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1riXFE-0057Iv-Cj; Fri, 08 Mar 2024 11:14:28 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1riXFE-00288i-0y;
	Fri, 08 Mar 2024 11:14:28 +0100
Date: Fri, 8 Mar 2024 11:14:28 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>, 
	barebox@lists.infradead.org
Message-ID: <brq6pmetsgbghlfxfqcyxe3dslsjntd22wfme2mg7fjrr7satz@2we7kevot4fc>
References: <20240308091507.249009-3-uwe@kleine-koenig.org>
 <20240308091507.249009-4-uwe@kleine-koenig.org>
 <ace334e4-d2ce-4e22-b6ce-e03550b1ad21@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ffhhcbst7mjrae5i"
Content-Disposition: inline
In-Reply-To: <ace334e4-d2ce-4e22-b6ce-e03550b1ad21@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_021430_812666_027D279E 
X-CRM114-Status: GOOD (  18.39  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] of: partition: Use mtd partitioning for of_fixup
 instead of the cdev variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


--ffhhcbst7mjrae5i
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Mar 08, 2024 at 10:27:21AM +0100, Ahmad Fatoum wrote:
> On 08.03.24 10:15, Uwe Kleine-K=F6nig wrote:
> > From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> >=20
> > It was already noticed in commit 9d42c77f126e ("devfs: take into account
> > for the partitions check that mtd is different") that the partitioning
> > info is stored differently for mtd devices. Instead of only getting the
> > partion size from the right spot, use the right data completely.
>=20
> I read both this commit message and that of the referenced commit and I
> don't quite understand what the issue is. Could you add a short sentence
> about what particular issue this fix addresses?

The situation fixed here is:

After bootup the partitioning information for mtd devices exists in both
locations (cdev->partitions and cdev->mtd->partitions). An interactive
addpart only adds the the latter. This patch fixes the of fixup to also
use the latter.

In the described error case the partition added to the bootup layout
(defined in the dtb) doesn't make it into the device tree provided to
Linux.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ffhhcbst7mjrae5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXq5QMACgkQj4D7WH0S
/k5SmAgAuHsOLBkz0B1zkqfc3Hcz89OzyDUhMXOujDWVEHJBST4Rgb7mpCj05lQH
50Whp1IgmvfHwETQW+pQEJofOt8s6W0LMJzfAOu80Ln0sHLk3axhgt8HZTb2huE2
GxZTrYmOwCs+oieuiDpNY+FfHf1hLyPLaWETp89j0uCqgegH949a5I2mjhnr8S6m
0oNCc5krS05xPTk14VG/8ATxxN53KXnsf6K3TZ626CDliluayamme+04pfMugArA
sY/48qBKGHhXApkASLoE6S2h9VRSqTF3CWSEsj2L2Ys5t3ey7HLU3J/5J3rsXZ/+
X9/I19S3T1CB+WYUv9XjZAvsCXO1Vw==
=MUoC
-----END PGP SIGNATURE-----

--ffhhcbst7mjrae5i--



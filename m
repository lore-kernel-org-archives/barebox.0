Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idEWQ-0002eL-OZ
 for barebox@lists.infradead.org; Fri, 06 Dec 2019 14:23:56 +0000
Date: Fri, 6 Dec 2019 15:23:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191206142352.dqlneyrq4jd3ukya@pengutronix.de>
References: <1575380921-160915-1-git-send-email-s.riedmueller@phytec.de>
 <20191205080755.nc2ao3hjb5eli7ud@pengutronix.de>
 <67c1cd67-9156-9e43-2be4-b3502877d95f@pengutronix.de>
 <b75f1cd1-7f49-007e-11f6-80544d729fe4@phytec.de>
 <4fc52985-bcfb-f6e4-0a87-7a3d710baa45@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fc52985-bcfb-f6e4-0a87-7a3d710baa45@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl: phycore: Remove emmc vmmc-supply
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 05, 2019 at 02:31:53PM +0100, Ahmad Fatoum wrote:
> Hi,
> =

> On 12/5/19 2:08 PM, Stefan Riedm=FCller wrote:
> > What about regulators that are marked as regulator-always-on but need v=
oltage adjustments? Or isn't this a real use case for the bootloader?
> =

> If someone absolutely need the voltage adjustments, they'll have to imple=
ment
> a proper regulator driver to realize it[1]. The [barebox,]regulator-alway=
s-on
> handling I suggest, is only a fallback if there is no regulator found.

What if the driver is present but not yet probed? We would return a
dummy regulator and no longer -EPROBE_DEFER.

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

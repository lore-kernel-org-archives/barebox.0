Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoqY9-00078v-0K
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 07:41:57 +0000
Message-ID: <51C00F29.1060601@ti.com>
Date: Tue, 18 Jun 2013 10:41:29 +0300
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
MIME-Version: 1.0
References: <20130409132917.GX1568@game.jcrosoft.org>
 <1365706897.4136.24.camel@mars> <1370207222.5021.0.camel@lovely>
 <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars> <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel> <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <20130617161800.GI27130@game.jcrosoft.org>
In-Reply-To: <20130617161800.GI27130@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8287055599090204869=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

--===============8287055599090204869==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="----enig2VSNNATUQCLJSCDSIGIBT"

------enig2VSNNATUQCLJSCDSIGIBT
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On 17/06/13 19:18, Christoph Fritz wrote:
> This patch adds omap4 display controller support.

I haven't been following the discussions about this patch, so maybe
these have been covered:

OMAP2/3/4/5 all have very similar DSS. Why did you go for omap_4_-fb
driver, not omap-fb driver?

> +config DRIVER_VIDEO_OMAP4
> +	bool "OMAP4 framebuffer driver"
> +	depends on ARCH_OMAP4
> +	help
> +	  Add support for the OMAP4 Display Controller.
> +	  DSI is unsupported, only DISPC parallel mode on LCD2
> +	  is supported.
> +

Also HDMI, RFBI and VENC seem to be unsupported. The DISPC parallel mode
you mention is MIPI DPI.

Supporting only the DPI output is "easy", do you have plans to support
the other outputs and external encoders used in many boards? That may
require a more generic approach, with multiple display "entities" in the
pipeline. Not that the first version should support that, but I just
wanted to mention it so that you don't design the driver in too
non-generic manner.

 Tomi



------enig2VSNNATUQCLJSCDSIGIBT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIcBAEBAgAGBQJRwA8pAAoJEPo9qoy8lh71fM4P/3j8xdrV9f27ye+O0rgQh4OU
041fZPhuNjK/QajR2yBfJh2f3zSWxaPtMeLw1gD5EPqKpMUFPsvcAYNDZG3NyvdD
ziejGf5XALogri0QPGnL9SY9Pard1ETXHpQWmKG5IFMS6aAI5sILdtxYoNawZZur
1iuH03vh7OHSqJEwQmQ0uzM2fLQ4ClLxlwsZImdYNGrhhkww2YTyjmuQ98AepWRu
t4VFgZjpbV5mc8caaJlOFjoBsO3V3wobQY6GhCm5oY21WQTHSU1bZNU9w7SgqTke
UoFL6l/db6N8VVV8dX7yGxurVQrXTKyLLmjSbpfFlmFPrmP+KfnrLxDgnnbC8EV8
H3ofb1CIhKpcq6MhcoRWiN50olu+0wBON/9rxNWrWyyd3Qna1PwBG29RsrVCG3qs
zduFMXobvSJTYaVTsocWdWUUonWuE9+zmEhUcyGRk6jBLG8eVE/BN1tc1i1qYPDx
iEm6zHOrP43L5qpKAVJUXE954Zq4tL5hx45i3+RbMwWIYCyKSC6Q0w+R2ohC9/7e
yfobZox4aZiD2nWqPJ1KAO/TnpIesKjovl0oIfRFpugAe48ktaKc9DccKxwdAPTR
TzvaQBe/6qmEWg6dKsfT1Yw5F/rLM269V1IIIpZOAo+1hRRvxlltG+yieHJdhMrC
3nO6ye5kFsgO+c6QQpPa
=RnVl
-----END PGP SIGNATURE-----

------enig2VSNNATUQCLJSCDSIGIBT--


--===============8287055599090204869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8287055599090204869==--

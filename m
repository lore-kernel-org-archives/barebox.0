Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUhp-0000AV-0l
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 11:51:34 +0000
Date: Tue, 12 Nov 2019 12:51:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191112115130.iass34olxahhbd5s@pengutronix.de>
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 1/5] i.mx6: signed boot: add habv4-imx6-gencsf.h to
 the flash header of the PHYTEC boards
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

Hi Maik,

On Wed, Aug 21, 2019 at 04:21:44PM +0200, Maik Otto wrote:
> the habv4-imx6-gencsf.h is necessary in the board flash header to build
> a signed barebox

Applied now. Please note that in the meantime it is no longer necessary
to put the public key for the FIT image into the device tree source
file. We can now specify the path to the key (or alternatively, a
PKCS#11 URI) in Kconfig using the CONFIG_CRYPTO_RSA_KEY option:

9341918ba8 fit-image: Use compiled-in keys
b39100bcea rsa: Allow to directly compile in rsa public keys

What I missed to mention explicitly is that CONFIG_CRYPTO_RSA_KEY can
be specified as "__ENV__FOOBAR". When done like this the path (or
PKCS#11 URI) is taken from the environment variable FOOBAR. This is
done to help build systems which then no longer have to patch the
CONFIG_CRYPTO_RSA_KEY option in the barebox config file.

You might want to give it a try, it could simplify your workflow with
the keys.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

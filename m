Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoqM-00067j-QM
 for barebox@lists.infradead.org; Wed, 13 Nov 2019 09:21:45 +0000
References: <1566397308-450229-1-git-send-email-m.otto@phytec.de>
 <20191112115130.iass34olxahhbd5s@pengutronix.de>
From: Maik Otto <m.otto@phytec.de>
Message-ID: <44ecff7e-fd3f-849e-a51c-98d526845054@phytec.de>
Date: Wed, 13 Nov 2019 10:21:38 +0100
MIME-Version: 1.0
In-Reply-To: <20191112115130.iass34olxahhbd5s@pengutronix.de>
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
Subject: Re: [PATCH v4 1/5] i.mx6: signed boot: add habv4-imx6-gencsf.h to the
 flash header of the PHYTEC boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

thank you for your response and the information about the key handling
for the FIT image.
i will be try it.

Best regards
Maik

Am 12.11.2019 um 12:51 schrieb Sascha Hauer:
> Hi Maik,
>
> On Wed, Aug 21, 2019 at 04:21:44PM +0200, Maik Otto wrote:
>> the habv4-imx6-gencsf.h is necessary in the board flash header to build
>> a signed barebox
> Applied now. Please note that in the meantime it is no longer necessary
> to put the public key for the FIT image into the device tree source
> file. We can now specify the path to the key (or alternatively, a
> PKCS#11 URI) in Kconfig using the CONFIG_CRYPTO_RSA_KEY option:
>
> 9341918ba8 fit-image: Use compiled-in keys
> b39100bcea rsa: Allow to directly compile in rsa public keys
>
> What I missed to mention explicitly is that CONFIG_CRYPTO_RSA_KEY can
> be specified as "__ENV__FOOBAR". When done like this the path (or
> PKCS#11 URI) is taken from the environment variable FOOBAR. This is
> done to help build systems which then no longer have to patch the
> CONFIG_CRYPTO_RSA_KEY option in the barebox config file.
>
> You might want to give it a try, it could simplify your workflow with
> the keys.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBFi5-000492-9G
 for barebox@lists.infradead.org; Wed, 25 Apr 2018 08:23:31 +0000
Date: Wed, 25 Apr 2018 10:23:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180425082313.ur6rzyepbxhtcvao@pengutronix.de>
References: <20180420080114.9148-1-gp@high-consulting.de>
 <20180423083926.cemu3wzcosahvm4f@pengutronix.de>
 <1524487970.8922.2.camel@high-consulting.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1524487970.8922.2.camel@high-consulting.de>
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
Subject: Re: [PATCH v1] Crypt and decrypt files using password in keystore.
To: Gerd Pauli <gp@high-consulting.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 23, 2018 at 02:52:50PM +0200, Gerd Pauli wrote:
> Hi Sascha,
> =

> This is not the same as in Linux Cryptop Api. The goal of this command
> and library is to provide a compatible command with the ccrypt tool
> from linux.
> https://packages.debian.org/stretch/ccrypt
> It is not intended to write a standard AES Crypting Tool.
> =

> Please tell me if this is useful for merging like this.=A0
> Then i clean up some spaces in the code and send again ( checkscript ).

Sorry, I don't think adding a crypto implementation that is not using
the crypto API is acceptable for merging. Possible options for
upstreaming would be to either the Rijndael cipher with 128 bit block
size aka AES, based on the Kernel AES implementation or to convert
the Rijndael cipher with 256 bit block size as used by ccrypt to the
existing crypto API.

> If not. Sorry for the dust :-)

Don't worry, it's always nice to see what people do with barebox and
to get a view what might be missing.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

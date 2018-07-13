Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdrQI-0008Pl-D4
 for barebox@lists.infradead.org; Fri, 13 Jul 2018 06:19:24 +0000
Date: Fri, 13 Jul 2018 08:19:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180713061910.fj2xh5hsujsmrlvi@pengutronix.de>
References: <20180710095003.1256-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180710095003.1256-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 1/3] Documentation: state: harmonize capitalization in
 headings
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 10, 2018 at 11:50:01AM +0200, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/user/state.rst | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
> index d17f39befbe4..97e45d43b7cb 100644
> --- a/Documentation/user/state.rst
> +++ b/Documentation/user/state.rst
> @@ -52,7 +52,7 @@ required to define the location where to store the *sta=
te* variable set.
>  =

>  .. _state_framework,backend_types:
>  =

> -Backend-Types (e.g. *state* storage format)
> +Backend-Types (e.g. *state* Storage Format)
>  -------------------------------------------
>  =

>  The *state* variable set itself can be stored in different ways. Current=
ly two
> @@ -66,7 +66,7 @@ Both serialize the *state* variable set differently.
>  =

>  .. _state_framework,raw:
>  =

> -The ``raw`` *state* storage format
> +The ``raw`` *state* Storage Format
>  ##################################
>  =

>  ``raw`` means the *state* variable set is a simple binary data blob only=
. In
> @@ -117,7 +117,7 @@ embedded *state* variable set. Refer to
>  =

>  .. _state_framework,dtb:
>  =

> -The ``dtb`` *state* storage format
> +The ``dtb`` *state* Storage Format
>  ##################################
>  =

>  .. note:: The ``dtb`` backend type isn't well tested. Use the ``raw`` ba=
ckend
> @@ -130,7 +130,7 @@ Unlike the ``raw`` *state* backend the ``dtb`` *state=
* backend can describe itse
>  =

>  .. _state_framework,backend_storage_type:
>  =

> -Backend Storage Types (e.g. media storage layout)
> +Backend Storage Types (e.g. Media Storage Layout)
>  -------------------------------------------------
>  =

>  The serialized data (``raw`` or ``dtb``) can be stored to different back=
end
> @@ -321,7 +321,7 @@ the eraseblock again. This significantly reduces the =
need for a block erases.
>  .. important:: One copy of the *state* variable set is limited to the pa=
ge size
>     of the used backend (e.g. NAND type flash memory)
>  =

> -Redundant *state* variable set copies
> +Redundant *state* Variable Set Copies
>  -------------------------------------
>  =

>  To avoid data loss when changing the *state* variable set, more than one
> @@ -431,7 +431,7 @@ variable set has a size of 17 bytes (16 bytes header =
plus one byte variables).
>  .. note:: For a more detailed description of the used *state* variable s=
et
>     properties here, refer to :ref:`barebox,state`.
>  =

> -NOR flash memories
> +NOR Flash Memories
>  ##################
>  =

>  This type of memory can be written on a single byte/word basis (dependin=
g on its bus
> @@ -482,7 +482,7 @@ content, its backend-type and *state* variable set la=
yout.
>  		};
>  	};
>  =

> -NAND flash memories
> +NAND Flash Memories
>  ###################
>  =

>  This type of memory can be written on a *page* base (typically 512 bytes,
> -- =

> 2.18.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

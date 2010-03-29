Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Date: Mon, 29 Mar 2010 11:38:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100329093807.GF2241@pengutronix.de>
References: <4BAF01C3.2030708@freemail.hu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4BAF01C3.2030708@freemail.hu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] u-boot-v2: fix typos in documentation
To: =?iso-8859-15?Q?N=E9meth_M=E1rton?= <nm127@freemail.hu>
Cc: embedded-linux@pengutronix.de, u-boot-v2@lists.infradead.org

i
Hi N=E9meth,

On Sun, Mar 28, 2010 at 09:14:11AM +0200, N=E9meth M=E1rton wrote:
> From: M=E1rton N=E9meth <nm127@freemail.hu>
> =

> Signed-off-by: M=E1rton N=E9meth <nm127@freemail.hu>

Ok, applied

thanks,
  Sascha

> ---
> diff --git a/Documentation/devices_drivers.txt b/Documentation/devices_dr=
ivers.txt
> index 06e788d..a17f020 100644
> --- a/Documentation/devices_drivers.txt
> +++ b/Documentation/devices_drivers.txt
> @@ -55,7 +55,7 @@ See above.
>  int     (*probe) (struct device_d *);
>  int     (*remove)(struct device_d *);
> =

> -These are called if a instance of a device is found or gone.
> +These are called if an instance of a device is found or gone.
> =

>  ssize_t (*read)  (struct device_d*, void* buf, size_t count, ulong offse=
t, ulong flags);
>  ssize_t (*write) (struct device_d*, const void* buf, size_t count, ulong=
 offset, ulong flags);
> @@ -67,6 +67,6 @@ void *type_data;
> =

>  This is somewhat redundant with the type data in struct device. Currentl=
y the
>  filesystem implementation uses this field while ethernet drivers use the=
 same
> -field in struct device. Probably one of both should be removed.
> +field in struct device. Probably one of them should be removed.
> =

> =

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

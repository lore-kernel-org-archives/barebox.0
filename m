Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTu6-0000PS-Lw
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:53:55 +0000
Date: Fri, 13 Nov 2020 08:53:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201113075353.GT29830@pengutronix.de>
References: <20201110153430.32123-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201110153430.32123-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] doc: add note about characters like hyphens in
 variable names
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 10, 2020 at 04:34:29PM +0100, Ahmad Fatoum wrote:
> The mismatch between the allowed characters in shell variables and
> device parameters is a common pitfall, especially because device
> tree node names often have hyphens in them, which is disallowed by
> hush.
> 
> While such variables can be read by the ${variable-example}, setting
> them is only possible with the setenv command. Reflect this in the
> documentation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Cc: Matthias Fend <Matthias.Fend@wolfvision.net>
> ---
>  Documentation/user/driver-model.rst | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/driver-model.rst b/Documentation/user/driver-model.rst
> index a0fd3e99b55b..c543d6d9c410 100644
> --- a/Documentation/user/driver-model.rst
> +++ b/Documentation/user/driver-model.rst
> @@ -88,7 +88,14 @@ The parameters can be used as shell variables:
>  .. code-block:: sh
>  
>    eth0.ipaddr=192.168.23.15
> -  echo "my current ip is: $eth0.ipaddr"
> +  echo "my current ip is: ${eth0.ipaddr}"
> +
> +.. note::
> +
> +  Hush shell syntax for defining and setting variables is the same, so
> +  some characters such as hyphens are not allowed on the left hand side
> +  of a shell variable assignment. :ref:`command_setenv`, if enabled,
> +  can still be used to write such a variable though.
>  
>  device variables may have a type, so assigning wrong values may fail:
>  
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

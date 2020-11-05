Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kamJf-0006fq-Dc
 for barebox@lists.infradead.org; Thu, 05 Nov 2020 20:57:08 +0000
References: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1a23e2f4-8b3a-f084-888e-4756d60d92fb@pengutronix.de>
Date: Thu, 5 Nov 2020 21:57:03 +0100
MIME-Version: 1.0
In-Reply-To: <VI1PR0802MB2334314CB7FA7F0BD64F9C8885EE0@VI1PR0802MB2334.eurprd08.prod.outlook.com>
Content-Language: en-US
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
Subject: Re: [PATCH] Documentation: state: add a little note about modifying a
 state variable in the frontend
To: Matthias Fend <Matthias.Fend@wolfvision.net>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Matthias,

On 11/5/20 9:16 PM, Matthias Fend wrote:
> Signed-off-by: Matthias Fend <matthias.fend@wolfvision.net>
> ---
>  Documentation/user/state.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
> index 78ce24f..d9a8e76 100644
> --- a/Documentation/user/state.rst
> +++ b/Documentation/user/state.rst
> @@ -689,4 +689,5 @@ be accessed like normal shell variables. The ``state`` command is used
>  to save/restore a *state* variable set to the backend device.
>  
>  After initializing the variable can be accessed with ``$state.foo``.
> +To modify the value of a state variable use ``nv dev.state.foo=bar``.

That's wrong. You set the value of a state variable with
state.foo=bar. nv dev.state.state.foo=bar uses the _environment_ to
save a value to write to state.foo on each boot. This means:

 - If you modify the variable from within barebox, it won't be visible
   in Linux unless you boot barebox once again.
 - If you modify the variable from within Linux, nv.dev.state.state.foo
   would just overwrite the existing value on the next barebox boot.

Generally, you should only need to modify nv variables at runtime
for debugging. nv.dev is meant for stuff like nv.dev.eth0.ethaddr=XX:XX:XX:XX:XX:XX,
where you can just hard code a mac address to use, but for state I can't
think of any good use cases at the moment.

>  ``state -s`` stores the *state* to the backend device.
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

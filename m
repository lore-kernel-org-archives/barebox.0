Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U7a-0004RM-3Q
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:45:44 +0000
Date: Wed, 23 Nov 2016 10:45:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161123094520.4wv76z73cok5gopf@pengutronix.de>
References: <20161123073859.18101-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161123073859.18101-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: bootchooser: fix typos
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 23, 2016 at 08:38:59AM +0100, Ulrich =D6lmann wrote:
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/user/bootchooser.rst | 57 +++++++++++++++++++++-----------=
------
>  1 file changed, 31 insertions(+), 26 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/boot=
chooser.rst
> index 5baa66d9b9f9..cef1d4abb090 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -67,7 +67,7 @@ Additionally the remaining_attempts counter can be rese=
t manually using the
>  :ref:`command_bootchooser` command. This allows for custom conditions un=
der which
>  a system is marked as good.
>  In case only the booted system itself knows when it is in a good state, =
the
> -barebox-state tool from the dt-utils_ package can used to reset the rema=
ining_attempts
> +barebox-state tool from the dt-utils_ package can be used to reset the r=
emaining_attempts
>  counter from the currently running system.
>  =

>  .. _dt-utils: http://git.pengutronix.de/?p=3Dtools/dt-utils.git;a=3Dsumm=
ary
> @@ -79,8 +79,8 @@ Additionally to the target options described above, boo=
tchooser has some general
>  options not specific to any target.
>  =

>  ``global.bootchooser.disable_on_zero_attempts``
> -  Boolean flag. if 1, bootchooser disables a target (sets priority to 0)=
 whenever the
> -  remaining attempts counter reaches 0.
> +  Boolean flag. If set to 1, bootchooser disables a target (sets priorit=
y to 0) whenever
> +  the remaining attempts counter reaches 0.
>  ``global.bootchooser.default_attempts``
>    The default number of attempts that a target shall be tried starting, =
used when not
>    overwritten with the target specific variable of the same name.
> @@ -89,25 +89,28 @@ options not specific to any target.
>    of the same name.
>  ``global.bootchooser.reset_attempts``
>    A space separated list of events that cause bootchooser to reset the
> -  remaining_attempts counters of each target that has a non zero priorit=
y. possible values:
> -  * empty:  counters will never be reset``
> +  remaining_attempts counters of each target that has a non zero priorit=
y. Possible values:
> +
> +  * empty: counters will never be reset``
>    * power-on: counters will be reset after power-on-reset
>    * all-zero: counters will be reset when all targets have zero remainin=
g attempts
>  ``global.bootchooser.reset_priorities``
>    A space separated list of events that cause bootchooser to reset the p=
riorities of
>    all targets. Possible values:
> +
>    * empty: priorities will never be reset
>    * all-zero: priorities will be reset when all targets have zero priori=
ty
>  ``global.bootchooser.retry``
> -  If 1, bootchooser retries booting until one succeeds or no more valid =
targets exist.
> +  If set to 1, bootchooser retries booting until one succeeds or no more=
 valid targets
> +  exist.
>  ``global.bootchooser.state_prefix``
> -  Variable prefix when bootchooser used with state framework as backend =
for storing runtime
> -  data, see below.
> +  Variable prefix when bootchooser is used with the state framework as b=
ackend for storing
> +  runtime data, see below.
>  ``global.bootchooser.targets``
>    Space separated list of targets that are used. For each entry in the l=
ist a corresponding
> -  set of ``global.bootchooser.<name>``. variables must exist.
> +  set of ``global.bootchooser.<targetname>.<variablename>`` variables mu=
st exist.
>  ``global.bootchooser.last_chosen``
> -  bootchooser sets this to the target that was chosen on last boot (inde=
x)
> +  bootchooser sets this to the target that was chosen on last boot (inde=
x).
>  =

>  Using the State Framework as Backend for Runtime Variable Data
>  --------------------------------------------------------------
> @@ -178,7 +181,7 @@ Settings
>  - ``global.bootchooser.disable_on_zero_attempts=3D0``
>  - ``global.bootchooser.retry=3D1``
>  - ``global.boot.default=3D"bootchooser recovery"``
> -- Userspace marks as good
> +- Userspace marks as good.
>  =

>  Deployment
>  ^^^^^^^^^^
> @@ -208,21 +211,22 @@ Settings
>  - ``global.bootchooser.disable_on_zero_attempts=3D0``
>  - ``global.bootchooser.retry=3D1``
>  - ``global.boot.default=3D"bootchooser recovery"``
> -- Userspace marks as good
> +- Userspace marks as good.
>  =

>  Deployment
>  ^^^^^^^^^^
>  =

> -#. barebox or flash robot fills all slots with valid systems
> +#. barebox or flash robot fills all slots with valid systems.
>  #. barebox or flash robot marks slots as good or state contains non zero
> -   defaults for the remaining_attempts / priorities
> +   defaults for the remaining_attempts/priorities.
>  =

>  Recovery
>  ^^^^^^^^
>  done by 'recovery' boot target which is booted after the bootchooser fal=
ls through due to
>  the lack of bootable targets. This target can be:
> -- A system that will be booted as recovery
> -- A barebox script that will be started
> +
> +- A system that will be booted as recovery.
> +- A barebox script that will be started.
>  =

>  Scenario 3
>  ##########
> @@ -238,21 +242,22 @@ Settings
>  - ``global.bootchooser.disable_on_zero_attempts=3D1``
>  - ``global.bootchooser.retry=3D1``
>  - ``global.boot.default=3D"bootchooser recovery"``
> -- Userspace marks as good
> +- Userspace marks as good.
>  =

>  Deployment
>  ^^^^^^^^^^
>  =

> -- barebox or flash robot fills all slots with valid systems
> -- barebox or flash robot marks slots as good
> +#. barebox or flash robot fills all slots with valid systems.
> +#. barebox or flash robot marks slots as good.
>  =

>  Recovery
>  ^^^^^^^^
>  =

>  Done by 'recovery' boot target which is booted after the bootchooser fal=
ls through
>  due to the lack of bootable targets. This target can be:
> -- A system that will be booted as recovery
> -- A barebox script that will be started
> +
> +- A system that will be booted as recovery.
> +- A barebox script that will be started.
>  =

>  Updating systems
>  ----------------
> @@ -262,11 +267,11 @@ update is done under a running Linux system which c=
an be one of the regular boot
>  slots or a dedicated recovery system. For the regular slots updating is =
done like:
>  =

>  - Set the priority of the inactive slot to 0.
> -- Update the inactive slot
> -- Set priority of the inactive slot to a higher value than the active sl=
ot
> -- Set remaining_attempts of the inactive slot to nonzero
> -- Reboot
> -- If necessary update the now inactive, not yet updated slot the same way
> +- Update the inactive slot.
> +- Set priority of the inactive slot to a higher value than the active sl=
ot.
> +- Set remaining_attempts of the inactive slot to nonzero.
> +- Reboot.
> +- If necessary update the now inactive, not yet updated slot the same wa=
y.
>  =

>  One way of updating systems is using RAUC_ which integrates well with th=
e bootchooser
>  in barebox.
> -- =

> 2.10.2
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

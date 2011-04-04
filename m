Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6hjc-00016h-PP
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 11:14:21 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 4 Apr 2011 13:13:31 +0200
References: <20110404210245.16f269f7@manocska.bendor.com.au>
In-Reply-To: <20110404210245.16f269f7@manocska.bendor.com.au>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201104041313.32074.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: More Mini2440 questions...
To: =?iso-8859-1?q?Zolt=E1n_K=F3csi?= <zoltan@bendor.com.au>
Cc: barebox@lists.infradead.org

Hi Zolt=E1n,

Zolt=E1n K=F3csi wrote:
> Thanks for all the answers for my previous questions!
>
> The 'next' branch indeed boots from the NAND FLASH like a charm.

\o/

Just for my list of tested min2440 variants: What type of SDRAMs and NAND i=
s =

your system using? =


> What I'm looking for now is a crash-course, or at least a pointer to
> some web-based one, on barebox itself, from the usage point of view. I
> created the docs and read the User's Manual, but I'm none the wiser.

Authors of documentation are always welcome. But they are rare :-(

> How do I boot a kernel from FLASH or via TFTP? I figured that I
> can set the Ethernet MAC address by eth0.ethaddr=3Dxx:xx:xx:xx:xx:xx
> (although I don't know if that actually changes the MAC) but how can I
> save that so that next time I reset the board it is there?

Take a look into the generic environment in "defaultenv/bin/". These script=
s =

are used when the system comes up. They are using the "/env/config" for =

parameterization. Maybe these file will help you to understand how it works.

> Same with other environment variables, such as bootargs. The command
> 'saveenv' says that it saved the environment. According to its docs, it
> saved it in /dev/env0. According the the docs of loadenv, that
> command should load the saved environment, but I could not get any
> of my changes back.

So, the changes in your environment are lost after reboot? Do you see any k=
ind =

of error message (like CRC sum errors)? when barebox comes up after reset a=
nd =

tries to load the saved environment?

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228    =
 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555=
 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

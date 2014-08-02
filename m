Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDdN9-0001b0-QM
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 17:45:36 +0000
Date: Sat, 2 Aug 2014 14:44:15 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140802174415.GC29743@arch.cereza>
References: <1400674740-6467-1-git-send-email-s.hauer@pengutronix.de>
 <1400674740-6467-7-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400674740-6467-7-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/10] net: orion-gbe: use transparent-to-driver of mdio
 functions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

On 21 May 02:18 PM, Sascha Hauer wrote:
[..]
>  =

> +	sprintf(dev->name, "orion-gbe-port");
> +	dev->id =3D port->portno;
> +	dev->parent =3D parent;
> +	dev->device_node =3D port->np;
> +	ret =3D register_device(dev);
> +	if (ret)
> +		return ret;
> +

Can you clarify why you added this device register? I didn't find the need
to do so in the mvneta driver, but maybe I overlooked something.

Thanks!
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

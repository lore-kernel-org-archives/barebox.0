Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqgzP-00068W-QD
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 10:26:00 +0000
Date: Wed, 11 Dec 2013 11:25:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131211102534.GB24559@pengutronix.de>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de>
 <20131206124327.GA22853@omega>
 <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
 <20131210193029.a3c2a0f833beeb35dee5ccfc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131210193029.a3c2a0f833beeb35dee5ccfc@gmail.com>
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
Subject: Re: How to debug Ethernet connectivity
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 10, 2013 at 07:30:29PM +0400, Antony Pavlov wrote:
> On Tue, 10 Dec 2013 14:31:23 +0100
> Atilla Filiz <atilla.filiz@gmail.com> wrote:
> 
> > Ok, then my problem is slightly more clear, that /dev/phy0 does not exist.
> > I do define a struct fec_platform_data with
> > xcv_type=PHY_INTERFACE_MODE_MII and register it via imx27_add_fec().
> > 
> > Now I need to find out why it fails to register the device.
> 
> There is an issue with current barebox.
> 
> The /dev/phy0 device not present just after boot. You need somehow to use network
> to make it appeared.
> 
> Use this [ugly!] method:
>   Run barebox on your board. Just after boot /dev/phy0 is absent.
>   So run 'dhcp' command. In a few seconds press "ctrl-c" to interrupt it.
>   Check /dev/phy0 presence.

This is really annoying and something which I'd like to have fixed for longer.
I'm currently working my way through the phy layer to fix that.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

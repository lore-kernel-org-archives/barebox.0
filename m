Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vqh2K-0006F0-K3
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 10:29:01 +0000
Date: Wed, 11 Dec 2013 11:28:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131211102837.GC24559@pengutronix.de>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de>
 <20131206124327.GA22853@omega>
 <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
 <20131210192440.cbffc0bed7dd71d3f0e36f79@gmail.com>
 <20131210174536.GA7305@omega>
 <CACTZKX7=ycyAhZxHsJ7k6K23HmMOsuYUVFYV8JFFmhr5=g8vyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACTZKX7=ycyAhZxHsJ7k6K23HmMOsuYUVFYV8JFFmhr5=g8vyg@mail.gmail.com>
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
To: Atilla Filiz <atilla.filiz@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 11, 2013 at 10:39:17AM +0100, Atilla Filiz wrote:
> My problem is, /dev/phy0 never appears when I give the correct phy address.
> 
> Unable to find a PHY (unknown ID?)
> dhcp failed: I/O error
> dhcp: I/O error
> 
> Also, fec_probe function for fec_imx driver never gets called.

If that's the case...

> Ironically, I do not get an I/O error when I give the wrong phy
> address. Still nothing gets detected and no device node appears, but
> ethernet works(by forcing the line detect functions to return 0).

...your ethernet can't possibly work.

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

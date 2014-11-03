Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlGKf-0006jT-KZ
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 12:02:02 +0000
Date: Mon, 3 Nov 2014 13:01:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103120138.GM14443@pengutronix.de>
References: <20141103105305.GA31019@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141103105305.GA31019@gmail.com>
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
Subject: Re: phy-addr via dt
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

On Mon, Nov 03, 2014 at 11:53:06AM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> Hi,
> 
> Is it possible to set default phy-addr for fec_imx driver via device tree or in barebox environment?

It should be possible to add a mdio subnode to the fec device node
and then to add the phy-handle property to the fec node.
Something like:

fec {
	phy-handle = <&ethphy>;

	mdio {
		ethphy: phy@7 {
			reg = <7>;
		};
	};
};

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
